CREATE TABLE beers (
    beerid SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    pricesingle NUMERIC NOT NULL,
    pricebucket NUMERIC NOT NULL
);

CREATE TABLE customers (
    customerid SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(50),
    address TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);


CREATE TABLE customerrewards (
    rewardid SERIAL PRIMARY KEY,
    customerid INT NOT NULL,
    amountspent NUMERIC NOT NULL,
    RewardPoints INT NOT NULL,
    CONSTRAINT fk_customerrewards_customerid FOREIGN KEY (customerid) 
        REFERENCES customers (customerid)
);

-- Assuming that sales should be linked to customers directly
ALTER TABLE sales
ADD COLUMN customerid INT;

ALTER TABLE sales
ADD CONSTRAINT fk_sales_customerid FOREIGN KEY (customerid) REFERENCES customers (customerid);


-- Function to calculate reward points
CREATE OR REPLACE FUNCTION calculate_reward_points()
RETURNS TRIGGER AS $$
BEGIN
    -- Calculate reward points as 10 points for every $100 spent
    NEW.RewardPoints := floor(NEW.amountspent / 100) * 10;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to apply the function on insert or update
CREATE TRIGGER trigger_calculate_reward_points
BEFORE INSERT OR UPDATE ON customerrewards
FOR EACH ROW EXECUTE FUNCTION calculate_reward_points();

CREATE TABLE sales (
    saleid SERIAL PRIMARY KEY,
    beerid INT NOT NULL,
    salesrepid INT NOT NULL,
    locationid INT NOT NULL,
    quantitysold INT NOT NULL,
    saletype VARCHAR(50) NOT NULL,
    saleamount NUMERIC NOT NULL,
    saledate DATE NOT NULL
);

CREATE TABLE salesreps (
    salesrepid SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    totalsales NUMERIC NOT NULL,
    awards VARCHAR(255)
);

CREATE TABLE deliveries (
    deliveryid SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    recyclingcansweight NUMERIC,
    recyclingbucketsweight NUMERIC
);

CREATE TABLE recycling (
    recyclingid SERIAL PRIMARY KEY,
    deliveryid INT NOT NULL,
    recyclingtype VARCHAR(50) NOT NULL,
    weight NUMERIC NOT NULL,
    destination VARCHAR(255) NOT NULL,
    revenue NUMERIC NOT NULL
);

CREATE TABLE beerdelivered (
    beerdeliveredid SERIAL PRIMARY KEY,
    deliveryid INT NOT NULL,
    beerid INT NOT NULL,
    quantitydelivered INT NOT NULL
);

CREATE TABLE locations (
    locationid SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL
);

ALTER TABLE customerrewards
    ADD CONSTRAINT fk_customerrewards_customerid FOREIGN KEY (customerid) REFERENCES customers (customerid);

-- Add foreign keys to the customerrewards table
ALTER TABLE customerrewards
    ADD CONSTRAINT fk_customerrewards_beerid FOREIGN KEY (beerid) REFERENCES beers (beerid);

-- Add foreign keys to the sales table
ALTER TABLE sales
    ADD CONSTRAINT fk_sales_beerid FOREIGN KEY (beerid) REFERENCES beers (beerid),
    ADD CONSTRAINT fk_sales_salesrepid FOREIGN KEY (salesrepid) REFERENCES salesreps (salesrepid),
    ADD CONSTRAINT fk_sales_locationid FOREIGN KEY (locationid) REFERENCES locations (locationid);

-- Add foreign keys to the recycling table
ALTER TABLE recycling
    ADD CONSTRAINT fk_recycling_deliveryid FOREIGN KEY (deliveryid) REFERENCES deliveries (deliveryid);

-- Add foreign keys to the beerdelivered table
ALTER TABLE beerdelivered
    ADD CONSTRAINT fk_beerdelivered_deliveryid FOREIGN KEY (deliveryid) REFERENCES deliveries (deliveryid),
    ADD CONSTRAINT fk_beerdelivered_beerid FOREIGN KEY (beerid) REFERENCES beers (beerid);

-- Additional constraints may be necessary based on the actual relationships between tables.

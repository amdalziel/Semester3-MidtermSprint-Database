-- Inserting mock beers with names and prices for each category

INSERT INTO public."Beer"(beer_name, beer_type, price_single, price_bucket) VALUES

('Dark Mystery', 'Stout', 7.00, 25.00),
('Midnight Brew', 'Stout', 8.00, 28.00),

('Sour Symphony', 'Sour', 6.50, 23.00),
('Tart Twist', 'Sour', 7.50, 26.00),

('Crisp Cold', 'Lager', 5.50, 18.00),
('Golden Times', 'Lager', 5.75, 20.00),

('Happy Ale', 'Ale', 6.00, 21.00),
('Smooth Sailing', 'Ale', 6.50, 23.00),

('Hoppy Heart', 'IPA', 7.00, 25.00),
('Bitter End', 'IPA', 7.50, 27.00);

-- Inserting locations
INSERT INTO public."Locations" (location_name, location_type) VALUES
('Summer Beer Festival', 'Festival'),
('Brewery Tour', 'Brewery'),
('Rock Concert', 'Concert'),
('Food and Drink Expo', 'Event'),
('George Street Festival', 'Festival'),
('Wholesale', 'Brewery'),
('Beer Promo', 'Promotion');


-- Inserting customers (bars, restaurants, stores, event organizers, promoters)
INSERT INTO public."Customers" (name, email, address, phone, created_at) VALUES
('NLC' , 'scarlos0@hhs.gov', '0389 Golf Course Lane', '192-819-8659', '12/28/2023'),

('Ryan-Maggio', 'aaudritt2@oaic.gov.au', '90 Hoffman Junction', '179-137-8911', '10/30/2023'),
('Red Circle', 'jlegerwood3@intel.com', '8 Starling Parkway', '844-799-9980', '1/1/2023'),
('KG Promos', 'crollitt4@ox.ac.uk', '2 Mayer Road', '369-526-5997', '11/5/2023'),
('GGs Restaurant', 'rsans5@ebay.co.uk', '7297 Kim Road', '945-956-9843', '6/10/2023'),
('City Lights', 'jorrett6@de.vu', '06552 John Wall Pass', '208-706-9658', '4/28/2023'),
('Fritsch-Howell', 'mvasyushkhin7@mac.com', '70206 Sundown Alley', '843-769-2314', '12/18/2023'),
('Wintheiser-Hayes', 'ibentall8@tripod.com', '41 Nobel Crossing', '754-949-8643', '6/30/2023'),
('Rogahn Inc', 'oenrique9@boston.com', '8027 Express Court', '291-723-1181', '9/10/2023'),
('Lockman-Durgan', 'krodrigoa@ebay.co.uk', '41 Oak Valley Hill', '314-520-9616', '7/6/2023'),
('Kassulke-Wiegand', 'obeauvaisb@hhs.gov', '90 Bowman Parkway', '275-614-4791', '8/22/2023'),
('O''Hara, Aufderhar and Lockman', 'jkoresc@over-blog.com', '8 Cottonwood Circle', '614-469-7764', '3/4/2023'),
('Davis Inc', 'jlovickd@nps.gov', '98 Quincy Plaza', '812-274-7928', '11/21/2023'),
('Jenkins-Fisher', 'pghoste@blog.com', '95 Melody Road', '330-102-5208', '12/12/2023'),
('Johns, Brakus and Stracke', 'jpimf@statcounter.com', '71316 Sheridan Crossing', '944-100-0555', '1/17/2023'),
('MacGyver Inc', 'jscrannyg@mysql.com', '8 Goodland Junction', '305-564-3261', '12/15/2023'),
('Turcotte-O''Reilly', 'tkemshellh@naver.com', '3 Comanche Street', '206-340-1948', '10/16/2023'),
('Feest, Medhurst and Hilll', 'ctumasiani@surveymonkey.com', '003 Straubel Point', '158-308-4598', '9/14/2023'),
('Murphy, Walsh and McKenzie', 'cdancerj@themeforest.net', '22 Drewry Park', '137-714-1669', '4/2/2023');


-- Inserting mock sales representatives with arbitrary total sales
INSERT INTO public."SalesReps" (rep_name, total_sales, rep_awards) VALUES
('John Sasman', 15000.00, 'Top Seller 2022'),
('Sam Pitcher', 12000.00, 'Best Newcomer 2022'),
('Lisa Quota', 20000.00, 'Best Performance Q1'),
('Mark Dealer', 16500.00, 'Most Improved Sales'),
('Sophia Closer', 19000.00, 'Best Customer Feedback'),
('Alex Brewer', 17000.00, 'Innovation Award 2021'),
('Jane Achiever', 18000.00, 'Sales Leader 2021');




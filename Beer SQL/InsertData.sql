-- Inserting mock beers with names and prices for each category
INSERT INTO beers (name, category, pricesingle, pricebucket) VALUES
('Dark Mystery', 'Stout', 7.00, 25.00),
('Midnight Brew', 'Stout', 8.00, 28.00),

('Sour Symphony', 'Sour', 6.50, 23.00),
('Tart Twist', 'Sour', 7.50, 26.00),

('Crisp Cold', 'Lager', 5.00, 18.00),
('Golden Times', 'Lager', 5.50, 20.00),

('Happy Ale', 'Ale', 6.00, 21.00),
('Smooth Sailing', 'Ale', 6.50, 23.00),

('Hoppy Heart', 'IPA', 7.00, 25.00),
('Bitter End', 'IPA', 7.50, 27.00);

-- Inserting locations
INSERT INTO locations (name, type) VALUES
('Summer Beer Festival', 'Festival'),
('Brewery Tour', 'Brewery'),
('Rock Concert', 'Concert'),
('Food and Drink Expo', 'Event'),
('George Street Festival', 'Festival'),
('Retail', 'Brewery'),
('Beer Promo', 'Promotion');

-- Inserting customers (bars, restaurants, stores, event organizers, promoters)
INSERT INTO customers (name, email, phone, address) VALUES
('Downtown Bar', 'contact@downtownbar.com', '555-1010', '1010 City Plaza'),
('The Gourmet Restaurant', 'info@gourmetrestaurant.com', '555-2020', '2020 Riverside Drive'),
('Quick Mart Liquors', 'sales@quickmartliquors.com', '555-3030', '3030 Fastlane'),
('City Events', 'events@cityevents.com', '555-4040', '4040 Celebration Ave.'),
('NLC', 'orders@nlc.ca', '555-5678', '411 Kenmount Rd.'),
('Adventure Tours', 'events@advtours.com', '555-9890', '11 Adventure Way.'),
('Riverside Pub', 'info@riversidepub.com', '555-6060', '6060 Riverbank Road'),
('Urban Grill House', 'contact@urbangrill.com', '555-7070', '7070 Downtown Lane'),
('Bottle Boutique', 'service@bottleboutique.com', '555-8080', '8080 Vineyard Street'),
('Main Street Events', 'main.events@mainstreet.com', '555-9090', '9090 Main Street'),
('Promotions Plus', 'plus@promotionsplus.com', '555-1011', '1011 Promo Parkway'),

('Craft Beer Haven', 'craft@beerhaven.com', '555-2021', '2021 Crafty Corner'),
('Seafood Bistro', 'bookings@seafoodbistro.com', '555-3031', '3031 Ocean View'),
('Corner Liquor Store', 'contact@cornerliquor.com', '555-4041', '4041 Suburbia Lane'),
('Festival Organizers', 'fests@festorgs.com', '555-5051', '5051 Festive Road'),
('Nightlife Promotions', 'promo@nightlifepromos.com', '555-6061', '6061 Club Street'),

('The Tipsy Taproom', 'tipsy@taproom.com', '555-7071', '7071 Brewery Blvd.'),
('Fine Dine Steakhouse', 'reservations@finedinesteak.com', '555-8081', '8081 Gourmet Ave.'),
('Spirits and More', 'spirits@morestore.com', '555-9091', '9091 Spirits Lane'),
('Concert Coordinators', 'coord@concertco.com', '555-1012', '1012 Concert Hall Ave.'),
('Ad & Promo Agency', 'ads@promoagency.com', '555-2022', '2022 Advertising Ave.'),
('Promo People', 'promo@promopeople.com', '555-5050', '5050 Promo Blvd.');

-- Inserting mock sales representatives with arbitrary total sales
INSERT INTO salesreps (name, totalsales, awards) VALUES
('John Sasman', 15000.00, 'Top Seller 2022'),
('Sam Pitcher', 12000.00, 'Best Newcomer 2022'),
('Lisa Quota', 20000.00, 'Best Performance Q1'),
('Mark Dealer', 16500.00, 'Most Improved Sales'),
('Sophia Closer', 19000.00, 'Best Customer Feedback'),
('Alex Brewer', 17000.00, 'Innovation Award 2021'),
('Jane Achiever', 18000.00, 'Sales Leader 2021');



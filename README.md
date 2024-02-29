# Semester3-MidtermSprint-Database
Semester 3 - Midterm Sprint - Database: Craft Beer Bonanza

Overview
The BestKind Brewery database is a PostgreSQL database designed to simulate a real-world scenario for the BestKind Brewery operations. It is structured to capture various facets of the brewery's business, including customer management, sales, deliveries, and recycling processes. This mock database is populated with synthetic data, allowing for comprehensive testing and development of database-driven applications or for educational purposes.

Database Schema
The database schema consists of the following key tables:

Customers: Stores customer information, including contact details and account creation date.
Deliveries: Records details of beer deliveries to customers.
Recycling: Tracks recycling pickup information, including the weight of cans and buckets collected.
Rewards: Manages the rewards program for customers, tracking points earned through purchases.
Sales: Logs sales transactions, linking customers, sales representatives, and locations.
SalesReps: Contains data about sales representatives, including total sales and awards received.
Locations: Lists locations where the beer is sold, including the type of location (e.g., bar, store).
Beer: Details the different types of beer sold, including name, type, and price.
The relationships between these tables are established through foreign keys and are designed to reflect the complex interactions of a typical business.

Mock Data
The database comes pre-loaded with mock data, providing a rich dataset for testing various queries and database operations. This data aims to represent realistic scenarios that the brewery might encounter, from customer interactions to inventory management.

Scripts
Included with the database are several SQL scripts:

create.sql: Contains all the SQL CREATE TABLE statements necessary to set up the database schema from scratch.
joins.sql: A collection of SQL join statements, demonstrating how to retrieve related data from multiple tables within the database effectively.
Mock Data: Scripts to populate the database with the provided mock data, ensuring that all tables are ready for use immediately after setup.
Usage
To use the BestKind Brewery database:

Execute the create.sql script to create your database schema.
Run the Mock Data scripts to populate your database with the mock data.
Utilize the joins.sql script to understand the relationships between tables and to practice complex SQL queries.
Testing
This database is ideal for developers looking to:

Test database-driven applications against a structured, real-world dataset.
Practice SQL queries, including joins, aggregations, and transactions.
Analyze business processes and generate reports based on mock data.

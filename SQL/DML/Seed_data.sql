INSERT INTO [bh176331].[INSPECTION_COMPANY] (Company_ID, Name, Phone_number, Email)
VALUES
    (1, 'Acme Home Inspections', '123-456-7890', 'contact@acmehomeinspections.com'),
    (2, 'Top Notch Inspections', '234-567-8901', 'info@topnotchinspections.com'),
    (3, 'Safe House Inspections', '345-678-9012', 'support@safehouseinspections.com'),
    (4, 'Pro Inspectors', '456-789-0123', 'contact@proinspectors.com'),
    (5, 'Quick Inspections', '567-890-1234', 'service@quickinspections.com'),
    (6, 'Secure Home Inspections', '678-901-2345', 'secure@homeinspects.com'),
    (7, 'Clear View Inspections', '789-012-3456', 'info@clearviewinspections.com'),
    (8, 'Insight Inspections', '890-123-4567', 'contact@insightinspections.com'),
    (9, 'Fast Track Inspections', '901-234-5678', 'support@fasttrackinspections.com'),
    (10, 'Prime Inspections', '012-345-6789', 'hello@primeinspections.com');
GO 

INSERT INTO PROPERTY (Property_ID, Distance_to_city_limits, House_number, Street_name, State_name, City, Zip_code, Price, Date, Status)
VALUES
    (1, 5, 123, 'Maple Street', 'California', 'Los Angeles', '1234-56789', 350000.00, '2021-07-03', 'Active'),
    (2, 10, 456, 'Oak Avenue', 'California', 'San Francisco', '1234-56789', 450000.00, '2022-08-20','Pending'),
    (3, 15, 789, 'Pine Lane', 'Florida', 'Miami', '1234-56789', 500000.00, '2022-09-15','Sold'),
    (4, 3, 101, 'Cedar Road', 'Texas', 'Dallas', '1234-56789', 275000.00, '2023-01-20','Active'),
    (5, 20, 202, 'Birch Drive', 'New York', 'New York City', '1234-56789', 650000.00, '2024-08-20','Sold'),
    (6, 25, 303, 'Elm Boulevard', 'Nevada', 'Las Vegas', '1234-56789', 420000.00, '2024-05-21','Active'),
    (7, 18, 404, 'Ash Street', 'Illinois', 'Chicago', '1234-56789', 550000.00, '2020-03-02','Pending'),
    (8, 7, 505, 'Willow Way', 'Arizona', 'Phoenix', '1234-56789', 300000.00, '2022-04-18','Active'),
    (9, 10, 606, 'Spruce Terrace', 'Colorado', 'Denver', '1234-56789', 600000.00, '2024-06-22','Sold'),
    (10, 12, 707, 'Juniper Path', 'Oregon', 'Portland', '1234-56789', 375000.00, '2022-07-20','Active');
GO 

INSERT INTO [bh176331].[AGENT] ([Agent_ID], [Name], [Phone_number], [Email], [Employment_agency])
VALUES
    (1, 'Alice Johnson', '+1-555-123-4567', 'alicejohnson@realestate.com', 'Dream Realty'),
    (2, 'Bob Smith', '+1-555-234-5678', 'bobsmith@homelink.com', 'HomeLink Properties'),
    (3, 'Carol Lee', '+1-555-345-6789', 'carollee@estateagents.com', 'Estate Agents Ltd'),
    (4, 'David Brown', '+1-555-456-7890', 'davidbrown@keyproperties.com', 'Key Properties Group'),
    (5, 'Eve Martinez', '+1-555-567-8901', 'evemartinez@neighborhoods.com', 'Neighborhoods Unlimited'),
    (6, 'Frank White', '+1-555-678-9012', 'frankwhite@realtorpro.com', 'RealtorPro Agency'),
    (7, 'Grace Taylor', '+1-555-789-0123', 'gracetaylor@homesmart.com', 'HomeSmart Solutions'),
    (8, 'Henry Wilson', '+1-555-890-1234', 'henrywilson@realtyplus.com', 'RealtyPlus Group'),
    (9, 'Ivy Harris', '+1-555-901-2345', 'ivyharris@propertygroup.com', 'Property Group Inc.'),
    (10, 'Jack Evans', '+1-555-012-3456', 'jackevans@housinghub.com', 'Housing Hub Partners');
GO

INSERT INTO BUYER (Buyer_ID, Name)
VALUES 
    (1, 'Alice Johnson'),
    (2, 'Bob Smith'),
    (3, 'Charlie Brown'),
    (4, 'Diana Prince'),
    (5, 'Ethan Hunt'),
    (6, 'Fiona Gallagher'),
    (7, 'George Martin'),
    (8, 'Hannah Lee'),
    (9, 'Isaac Newton'),
    (10, 'Julia Roberts');
GO 

INSERT INTO NEIGHBORHOOD (City, Name)
VALUES
    ('New York', 'Manhattan'),
    ('New York', 'Brooklyn'),
    ('Los Angeles', 'Hollywood'),
    ('Los Angeles', 'Beverly Hills'),
    ('Chicago', 'Lincoln Park'),
    ('Chicago', 'Hyde Park'),
    ('Houston', 'Downtown'),
    ('Houston', 'River Oaks'),
    ('San Francisco', 'Mission District'),
    ('San Francisco', 'Nob Hill');
GO

INSERT INTO HOA (City, Name, HOA_name, Phone_number, Email)
VALUES
    ('New York', 'Manhattan', 'Manhattan Homeowners', '+1-212-555-1000', 'info@manhattanhoa.com'),
    ('New York', 'Brooklyn', 'Brooklyn Heights HOA', '+1-212-555-2000', 'contact@brooklynhoa.com'),
    ('Los Angeles', 'Hollywood', 'Hollywood HOA', '+1-323-555-3000', 'support@hollywoodhoa.com'),
    ('Los Angeles', 'Beverly Hills', 'Beverly Hills HOA', '+1-310-555-4000', 'admin@beverlyhillshoa.com'),
    ('Chicago', 'Lincoln Park', 'Lincoln Park HOA', '+1-773-555-5000', 'hello@lincolnparkhoa.com'),
    ('Chicago', 'Hyde Park', 'Hyde Park HOA', '+1-773-555-6000', 'info@hydeparkhoa.com'),
    ('Houston', 'Downtown', 'Downtown HOA', '+1-713-555-7000', 'downtown@houstonhoa.com'),
    ('Houston', 'River Oaks', 'River Oaks HOA', '+1-713-555-8000', 'contact@riveroakshoa.com'),
    ('San Francisco', 'Mission District', 'Mission District HOA', '+1-415-555-9000', 'info@missionhoa.com'),
    ('San Francisco', 'Nob Hill', 'Nob Hill HOA', '+1-415-555-1001', 'support@nobhillhoa.com');
GO 

INSERT INTO HOA_FEE (City, Name, HOA_name, Name_of_service, When_collected, Amount)
VALUES
    ('New York', 'Manhattan', 'Manhattan Homeowners', 'Maintenance', 'Monthly', 350.00),
    ('New York', 'Brooklyn', 'Brooklyn Heights HOA', 'Security', 'Quarterly', 200.00),
    ('Los Angeles', 'Hollywood', 'Hollywood HOA', 'Landscaping', 'Monthly', 250.00),
    ('Los Angeles', 'Beverly Hills', 'Beverly Hills HOA', 'Pool Maintenance', 'Yearly', 1200.00),
    ('Chicago', 'Lincoln Park', 'Lincoln Park HOA', 'Snow Removal', 'Yearly', 600.00),
    ('Chicago', 'Hyde Park', 'Hyde Park HOA', 'Garbage Collection', 'Monthly', 100.00),
    ('Houston', 'Downtown', 'Downtown HOA', 'Pest Control', 'Quarterly', 150.00),
    ('Houston', 'River Oaks', 'River Oaks HOA', 'Security', 'Monthly', 300.00),
    ('San Francisco', 'Mission District', 'Mission District HOA', 'Landscaping', 'Yearly', 800.00),
    ('San Francisco', 'Nob Hill', 'Nob Hill HOA', 'Pool Maintenance', 'Quarterly', 500.00);
GO 

INSERT INTO HOA_RULE (City, Name, HOA_name, Name_of_rule, Rule_description)
VALUES
    ('New York', 'Manhattan', 'Manhattan Homeowners', 'Noise Control', 'No loud noises after 10 PM in residential areas.'),
    ('New York', 'Brooklyn', 'Brooklyn Heights HOA', 'Pet Policy', 'All pets must be kept on a leash when outside.'),
    ('Los Angeles', 'Hollywood', 'Hollywood HOA', 'Parking Rules', 'Residents may not park on the street overnight.'),
    ('Los Angeles', 'Beverly Hills', 'Beverly Hills HOA', 'Trash Disposal', 'Trash bins must be placed out only on collection days.'),
    ('Chicago', 'Lincoln Park', 'Lincoln Park HOA', 'Garden Maintenance', 'All residents must maintain the appearance of their front gardens.'),
    ('Chicago', 'Hyde Park', 'Hyde Park HOA', 'Holiday Decorations', 'Holiday decorations must be removed within two weeks after the holiday ends.'),
    ('Houston', 'Downtown', 'Downtown HOA', 'Building Modifications', 'Any modifications to the exterior of the building require HOA approval.'),
    ('Houston', 'River Oaks', 'River Oaks HOA', 'Swimming Pool Hours', 'The swimming pool is open from 8 AM to 8 PM.'),
    ('San Francisco', 'Mission District', 'Mission District HOA', 'Noise Ordinance', 'Quiet hours are observed from 11 PM to 7 AM.'),
    ('San Francisco', 'Nob Hill', 'Nob Hill HOA', 'Community Events', 'Residents must register for community events in advance.');
GO

INSERT INTO PIECE_OF_LAND (Land_ID, Acreage, Terrain)
VALUES
    (1, 5.23, 'Forest'),
    (2, 10.00, 'Mountain'),
    (3, 3.50, 'Desert'),
    (4, 15.75, 'Plains'),
    (5, 7.50, 'Wetland'),
    (6, 2.00, 'Grassland'),
    (7, 12.00, 'Hill'),
    (8, 8.25, 'Swamp'),
    (9, 20.00, 'Coastal'),
    (10, 18.50, 'Farmland');
GO

INSERT INTO HOUSE (House_ID, Basement, Garage, Bedrooms, Bathrooms, Stories, Year_built, Square_footage)
VALUES
    (1, 1, 2, 3, 2.5, 2, 1990, 2500.50),
    (2, 0, 1, 2, 1.5, 1, 1985, 1800.75),
    (3, 1, 3, 4, 3.0, 3, 2005, 3200.25),
    (4, 0, 2, 5, 3.5, 2, 2010, 3500.00),
    (5, 1, 2, 3, 2.0, 1, 1978, 2200.50),
    (6, 1, 3, 4, 3.5, 3, 2015, 2800.00),
    (7, 0, 1, 2, 1.0, 1, 1999, 1600.00),
    (8, 1, 4, 5, 4.0, 2, 2018, 4000.00),
    (9, 0, 2, 4, 2.5, 3, 2012, 2800.50),
    (10, 1, 3, 4, 3.0, 2, 2000, 3000.75);
GO 

INSERT INTO PROPERTY_UTILITIES (Property_ID, Utility)
VALUES
    (1, 'Electricity'),
    (1, 'Water'),
    (2, 'Gas'),
    (3, 'Electricity'),
    (3, 'Water'),
    (4, 'Gas'),
    (5, 'Electricity'),
    (5, 'Water'),
    (6, 'Gas'),
    (6, 'Water');
GO 

INSERT INTO OPEN_HOUSE (House_ID, Date, Time, Agent_ID, Agent_name)
VALUES
    (1, '2024-12-05', '14:00:00', 1, 'Alice Johnson'),
    (2, '2024-12-06', '12:00:00', 2, 'Bob Smith'),
    (3, '2024-12-07', '10:00:00', 3, 'Carol Lee'),
    (4, '2024-12-08', '15:00:00', 4, 'David Brown'),
    (5, '2024-12-09', '16:30:00', 5, 'Eve Martinez'),
    (6, '2024-12-10', '13:00:00', 6, 'Frank White'),
    (7, '2024-12-11', '11:00:00', 7, 'Grace Taylor'),
    (8, '2024-12-12', '14:30:00', 8, 'Henry Wilson'),
    (9, '2024-12-13', '17:00:00', 9, 'Ivy Harris'),
    (10, '2024-12-14', '12:00:00', 10, 'Jack Evans');
GO 

INSERT INTO [bh176331].[SCHOOL_DISTRICT] (District_ID, Name, Type)
VALUES
(1, 'Sunset Valley School District', 'Elementary'),
(2, 'Greenwood Public Schools', 'Middle'),
(3, 'Riverdale Unified', 'High'),
(4, 'Maple Leaf School District', 'Elementary'),
(5, 'Pinecrest High School District', 'High'),
(6, 'Horizon Springs School District', 'Middle'),
(7, 'Lakeside Education District', 'Elementary'),
(8, 'Clearview Academy', 'High'),
(9, 'Silver Birch School District', 'Middle'),
(10, 'Oakwood Unified School District', 'Elementary');
GO 

INSERT INTO [bh176331].[PREFERENCE] (Preference_ID, Buyer_ID, Type, Yes_or_no, Value, Min, Max)
VALUES
(1, 1, 'YesNo', 'Yes', NULL, NULL, NULL),
(2, 2, 'MinMax', NULL, NULL, 3.0, 5.0),
(3, 3, 'Value', NULL, 3.5, NULL, NULL),
(4, 4, 'MinMax', NULL, NULL, 2.0, 8.0),
(5, 5, 'YesNo', 'No', NULL, NULL, NULL),
(6, 6, 'Value', NULL, 1.0, NULL, NULL),
(7, 7, 'MinMax', NULL, NULL, 4.0, 5.0),
(8, 8, 'Value', NULL, 2.5, NULL, NULL),
(9, 9, 'YesNo', 'Yes', NULL, NULL, NULL),
(10, 10, 'MinMax', NULL, NULL, 1.0, 7.0);
GO 

INSERT INTO [bh176331].[CONTACTS] (Buyer_ID, Agent_ID, Agent_name, Phone_number, Email, Message)
VALUES
(1, 1, 'Alice Johnson', '+1234567890', 'johndoe@example.com', 'Interested in a 3-bedroom house.'),
(2, 2, 'Bob Smith', '+1987654321', 'janesmith@example.com', 'Looking for a house near a school district.'),
(3, 3, 'Carol Lee', '+1122334455', 'alicej@example.com', 'Can you send me more details about the listings?'),
(4, 4, 'David Brown', '+1444556677', 'bobbrown@example.com', 'I need a house with a large backyard.'),
(5, 5, 'Eve Martinez', '+1555443322', 'charliedavis@example.com', 'Looking for a property with a pool.'),
(6, 6, 'Frank White', '+1777888999', 'emilyw@example.com', 'What are the latest houses available in my budget?'),
(7, 7, 'Grace Taylor', '+1888999000', 'davidgreen@example.com', 'Can I schedule a viewing for this weekend?'),
(8, 8, 'Henry Wilson', '+1999000111', 'sarahk@example.com', 'Looking for a house with easy access to public transport.'),
(9, 9, 'Ivy Harris', '+1100223344', 'michaelscott@example.com', 'Seeking a family-friendly neighborhood.'),
(10, 10, 'Jack Evans', '+1222334455', 'lindalee@example.com', 'Would like to inquire about financing options.');
GO 

INSERT INTO [bh176331].[EXISTS_IN_NEIGHBORHOOD] (City, Name, Property_ID)
VALUES
('New York', 'Manhattan', 1),  -- Property 101 belongs to Sunnydale neighborhood
('New York', 'Brooklyn', 2),    -- Property 102 belongs to Oakwood neighborhood
('Los Angeles', 'Hollywood', 3),   -- Property 103 belongs to Riverside neighborhood
('Chicago', 'Lincoln Park', 4),    -- Property 104 belongs to Parkview neighborhood
('Chicago', 'Hyde Park', 5);     -- Property 105 belongs to Eastside neighborhood

INSERT INTO [bh176331].[EXISTS_IN_SCHOOL_DISTRICT] (District_ID, Property_ID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (1, 4),
    (2, 5),
    (3, 6),
    (1, 7),
    (2, 8),
    (3, 9),
    (1, 10);
GO 

INSERT INTO [bh176331].[TOURS] (Buyer_ID, House_ID, Date, Time)
VALUES
    (1, 1, '2024-12-05', '10:00:00'),
    (2, 2, '2024-12-06', '14:00:00'),
    (3, 3, '2024-12-07', '16:00:00'),
    (1, 4, '2024-12-08', '11:30:00'),
    (2, 5, '2024-12-09', '09:00:00'),
    (3, 6, '2024-12-10', '13:45:00'),
    (1, 7, '2024-12-11', '15:30:00'),
    (2, 8, '2024-12-12', '12:00:00'),
    (3, 9, '2024-12-13', '10:30:00'),
    (1, 10, '2024-12-14', '14:30:00');
GO 

INSERT INTO [bh176331].[INSPECTS] (Company_ID, House_ID, Report_file_path)
VALUES
    (1, 1, '/reports/acme_home_inspections_house_101.pdf'),
    (2, 2, '/reports/top_notch_inspections_house_102.pdf'),
    (3, 3, '/reports/safe_house_inspections_house_103.pdf'),
    (4, 4, '/reports/pro_inspectors_house_104.pdf'),
    (5, 5, '/reports/quick_inspections_house_105.pdf'),
    (6, 6, '/reports/secure_home_inspections_house_106.pdf'),
    (7, 7, '/reports/clear_view_inspections_house_107.pdf'),
    (8, 8, '/reports/insight_inspections_house_108.pdf'),
    (9, 9, '/reports/fast_track_inspections_house_109.pdf'),
    (10, 10, '/reports/prime_inspections_house_110.pdf');
GO 
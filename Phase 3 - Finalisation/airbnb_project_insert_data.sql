-- GEOGRAPHICAL DATA 
-- Insert dummy data into the region table
INSERT IGNORE INTO region (region_id, region_name) VALUES
(1, 'North America'),
(2, 'Europe'),
(3, 'Asia'),
(4, 'Africa'),
(5, 'South America'),
(6, 'Australia'),
(7, 'Antarctica'),
(8, 'Middle East'),
(9, 'Central America'),
(10, 'Caribbean'),
(11, 'Northern Europe'),
(12, 'Western Europe'),
(13, 'Eastern Europe'),
(14, 'Southern Europe'),
(15, 'Southeast Asia'),
(16, 'East Asia'),
(17, 'South Asia'),
(18, 'Central Asia'),
(19, 'North Africa'),
(20, 'Sub-Saharan Africa');

-- Insert dummy data into the country table
INSERT IGNORE INTO country (country_id, country_name, country_code, region_id) VALUES
(1, 'United States', 'US', 1),
(2, 'Canada', 'CA', 1),
(3, 'Germany', 'DE', 2),
(4, 'France', 'FR', 12), 
(5, 'China', 'CN', 16),
(6, 'Japan', 'JP', 16), 
(7, 'India', 'IN', 17), 
(8, 'Nigeria', 'NG', 20), 
(9, 'Brazil', 'BR', 5),
(10, 'Argentina', 'AR', 5),
(11, 'Australia', 'AU', 6),
(12, 'Russia', 'RU', 13), 
(13, 'United Kingdom', 'UK', 11),
(14, 'Italy', 'IT', 14), 
(15, 'Spain', 'ES', 14), 
(16, 'Mexico', 'MX', 9),
(17, 'Saudi Arabia', 'SA', 8), 
(18, 'South Africa', 'ZA', 20), 
(19, 'Egypt', 'EG', 19), 
(20, 'Thailand', 'TH', 15); 

-- Insert dummy data into the cities table
INSERT IGNORE INTO city (city_id, city_name, country_id) VALUES
(1, 'Tokyo', 6),
(2, 'Beijing', 5),
(3, 'Munich', 3),
(4, 'Delhi', 7),
(5, 'São Paulo', 9),
(6, 'Sydney', 11),
(7, 'New York', 1),
(8, 'Abuja', 8),
(9, 'Paris', 4),
(10, 'Berlin', 3),
(11, 'Vancouver', 2),
(12, 'Mumbai', 7),
(13, 'Osaka', 6),
(14, 'Shanghai', 5),
(15, 'Melbourne', 11),
(16, 'Los Angeles', 1),
(17, 'Rio de Janeiro', 9),
(18, 'Toronto', 2),
(19, 'Lagos', 8),
(20, 'Lyon', 4);

-- Insert dummy data into the addresses table
INSERT IGNORE INTO address (address_id, address_line, city_id) VALUES
(1, '63 Fulton Way', 7),
(2, '067 School Way', 15),
(3, '7702 Dawn Center', 8),
(4, '410 Amoth Alley', 10),
(5, '7384 Talisman Parkway', 14),
(6, '23048 Union Parkway', 14),
(7, '8 Loftsgordon Circle', 1),
(8, '63800 Prairieview Alley', 11),
(9, '364 Atwood Hill', 1),
(10, '17 Longview Pass', 4),
(11, '01022 Dayton Park', 7),
(12, '62477 Spohn Park', 2),
(13, '86 Steensland Junction', 5),
(14, '4016 Heffernan Pass', 7),
(15, '0 Hallows Avenue', 1),
(16, '386 Lighthouse Bay Plaza', 11),
(17, '50201 6th Hill', 9),
(18, '64703 Washington Lane', 14),
(19, '6 Warrior Trail', 14),
(20, '70755 Monica Avenue', 18);

-- ROLES AND LANGUAGES
-- Insert dummy data into the roles table
INSERT IGNORE INTO roles (role_id, role_name) VALUES
(1, 'Admin'),
(2, 'Guest'),
(3, 'Host');

-- Insert dummy data into the language table
INSERT IGNORE INTO language (language_id, language_name) VALUES
(1, 'English'),
(2, 'Spanish'),
(3, 'French'),
(4, 'German'),
(5, 'Chinese'),
(6, 'Japanese'),
(7, 'Russian'),
(8, 'Italian'),
(9, 'Portuguese'),
(10, 'Korean'),
(11, 'Hindi'),
(12, 'Arabic'),
(13, 'Dutch'),
(14, 'Swedish'),
(15, 'Norwegian'),
(16, 'Turkish'),
(17, 'Polish'),
(18, 'Danish'),
(19, 'Finnish'),
(20, 'Greek');

-- USER ACCOUNT
-- Insert dummy data into the user_account table
INSERT IGNORE INTO user_account (user_id, first_name, last_name, user_name, email_address, hashed_password, mobile_number, created_at, updated_at) VALUES
(1, 'Carilyn', 'Jezard', 'cjezard0', 'cjezard0@comcast.net', '$2a$04$8/FmFT16UCtIFrL91ofqh.SxzzT1apdllLvepkHtzmvOmSOkYCeNW', '267-393-5416', '1994-09-10 03:43:02', '2018-11-19 17:29:43'),
(2, 'Rani', 'Goodhay', 'rgoodhay1', 'rgoodhay1@state.tx.us', '$2a$04$tQp7k.kotISGsN59.Sg4U.OowpFviAe9w1qNBwp.4KfzQQuGMuvJi', '211-860-3729', '1986-08-23 09:30:34', '2022-05-16 21:39:20'),
(3,'Julita', 'Elt', 'jelt2', 'jelt2@devhub.com', '$2a$04$WhnEA6g4qLbMl4Vo0UrEL.enNBbwa//yMIHqPBTp.DYEe0yRUM2AW', '207-383-5664', '2013-02-24 15:54:05', '2015-10-21 22:27:33'),
(4,'Meir', 'Davids', 'mdavids3', 'mdavids3@e-recht24.de', '$2a$04$2sYV6AhnkauYN/nlLZFdW.K77tXqJKDvexwn289f7NPa2pU1tLtM6', '813-256-3109', '2017-02-27 10:23:51', '2015-09-24 09:41:13'),
(5,'Sawyer', 'Cavill', 'scavill4', 'scavill4@constantcontact.com', '$2a$04$gLjet8SAb0bjrKneWQt2aO9iFZSl5.ZLSsF/ZFPzQWLLTtBquKjMK', '992-296-0550', '1978-09-14 06:05:14', '2015-04-17 02:00:54'),
(6,'Dan', 'Ledgerton', 'dledgerton5', 'dledgerton5@aboutads.info', '$2a$04$XUq1Lxrvk6LV/80iYtC4uO2K4/s.BcljQ0yBiXxoei.MQNuprGuBy', '844-170-5843', '2015-05-14 14:35:40', '2017-08-23 01:54:09'),
(7,'Darcy', 'Vivien', 'dvivien6', 'dvivien6@ask.com', '$2a$04$NQh6suWXtaJDfF7HjLCE9u3i8R49fl5cEnAqyhT/t7VpAZZeazQLi', '159-336-9091', '1999-11-01 06:48:26', '2016-05-02 12:16:19'),
(8,'Lemuel', 'Jedraszczyk', 'ljedraszczyk7', 'ljedraszczyk7@themeforest.net', '$2a$04$h7X33S44CULqJwKNAEOe2u3VD5177kjplvfToKWGD503WKMoHiJL.', '648-151-9429', '2023-04-10 05:52:06', '2021-04-07 20:49:13'),
(9,'Josias', 'Ohms', 'johms8', 'johms8@symantec.com', '$2a$04$gkL8srek565qRyheimuBTuJAyTPFKFpMDOVCpFab5opvJCQRLHOZa', '746-824-5262', '1988-10-24 09:41:52', '2013-09-21 18:57:11'),
(10,'Viva', 'Houtby', 'vhoutby9', 'vhoutby9@apache.org', '$2a$04$VeZtA3zERGDf..BzIzv2Z.FNYnjTzSQrDNaWMcNy4ijfoKZ7FV.2K', '554-837-9848', '1999-11-14 15:43:34', '2017-12-02 14:46:46'),
(11,'Cathleen', 'Laydon', 'claydona', 'claydona@google.ru', '$2a$04$KPOARjBOH5D5j/QmHLGLEelVteYD0mnVrgwqbxUCk2UDdP0pR8DI6', '525-625-3256', '2006-11-08 10:28:37', '2009-06-10 11:40:56'),
(12,'Sayers', 'Batchellor', 'sbatchellorb', 'sbatchellorb@sbwire.com', '$2a$04$yeKNdJa3fjHKNmYRs26ndOBw3ob7/KFohq5BiRcA/FJ0ycbzAu1Oe', '129-452-5043', '1998-09-24 09:50:14', '2019-02-16 07:20:02'),
(13,'Allan', 'Mackett', 'amackettc', 'amackettc@msn.com', '$2a$04$IXdEy91aiynjkhv2lFbJaeL4isrURbhdWeHDt8RcK8YjBiuufjD7K', '922-481-7859', '1971-01-28 11:12:04', '2023-09-24 22:53:36'),
(14,'Naomi', 'Nussii', 'nnussiid', 'nnussiid@infoseek.co.jp', '$2a$04$g91dG9fL3z3E/AOZ6y8B7.rRx7gdBHqppAiggu0Ra26DWyY1UFtEe', '112-829-4282', '1989-07-06 04:43:20', '2017-03-25 22:09:57'),
(15,'Vyky', 'Murrigans', 'vmurriganse', 'vmurriganse@prlog.org', '$2a$04$aSVfOYhIvaDWptkaBpbJ1eP8R97K1LGbMGeon5pFM86ExtKz5MG6i', '455-197-5281', '2010-05-07 05:01:43', '2014-08-14 08:11:17'),
(16,'Harriette', 'Kienle', 'hkienlef', 'hkienlef@amazon.com', '$2a$04$6YkUTHouPo5mEYx8nokKBustuh4bZCRRYGD7TKl.X3OI6yNchlCzy', '568-429-2865', '2002-09-06 22:22:17', '2015-03-03 16:54:23'),
(17,'Yul', 'Castle', 'ycastleg', 'ycastleg@dedecms.com', '$2a$04$.0A9dccPhCfHAyWoGZI3NO.q0PXbY3ZUttJhAlUpFqhd2yeUP3Sl2', '776-153-2326', '2013-08-04 17:36:49', '2018-03-05 11:13:50'),
(18,'Eleanora', 'Portingale', 'eportingaleh', 'eportingaleh@simplemachines.org', '$2a$04$3lvtwmP6ET.F5K5aDZJjm.t1hUKigZhgtc0kUL/8tiKKR5GBuIlEW', '227-275-1312', '2021-12-13 06:59:02', '2022-07-14 21:25:48'),
(19,'Sargent', 'Lucken', 'sluckeni', 'sluckeni@1und1.de', '$2a$04$PLyJkyfLtjLBzU7WcKGXCuOcYCxBSnxu6o.hE3yyOLqARtyVYpaYu', '604-537-3589', '2017-03-17 00:09:40', '2016-03-20 21:03:36'),
(20,'Filia', 'Passmore', 'fpassmorej', 'fpassmorej@dmoz.org', '$2a$04$5yV.nFTtutRZaiU1Y.VVLOZioPXRrOWIzDe8VIOsQZpF4OYZ0mk7y', '100-328-0168', '2012-04-22 00:36:34', '2014-12-27 06:36:40');

-- Insert dummy data into the user_roles table
INSERT IGNORE INTO user_roles (user_id, role_id) VALUES
(1, 1), (1, 2), (2, 2), (2, 3), (3, 2),
(4, 1), (5, 2), (6, 2), (7, 2), (8, 3),
(9, 1), (10, 1), (11, 2), (12, 3), (13, 2),
(14, 1), (15, 3), (16, 2), (17, 1), (18, 1),
(19, 3);

-- Insert dummy data into the user_language table
INSERT IGNORE INTO user_language (user_id, language_id) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
(4, 6), (5, 7), (6, 8), (7, 9), (8, 10),
(9, 11), (10, 12), (11, 13), (12, 14), (13, 15),
(14, 16), (15, 17), (16, 18), (17, 19), (18, 20);

-- Insert dummy data into the host table
INSERT IGNORE INTO host (host_id, user_account_id, host_info) VALUES
(1, 1, 'Experienced host with 5 years in the hospitality industry'),
(2, 2, 'New host specializing in unique vacation homes'),
(3, 3, 'Local expert offering city tours along with accommodations'),
(4, 4, 'Friendly host with multiple beachfront properties'),
(5, 5, 'Luxury host catering to high-end clients'),
(6, 6, 'Eco-friendly host with sustainable properties'),
(7, 7, 'Pet-friendly host with dedicated pet amenities'),
(8, 8, 'Host offering family-friendly accommodations'),
(9, 9, 'Experienced host managing properties in urban areas'),
(10, 10, 'Host specializing in long-term rental stays'),
(11, 11, 'Adventure host offering properties in remote areas'),
(12, 12, 'Artistic host with uniquely decorated homes'),
(13, 13, 'Host focused on wellness retreats and spa services'),
(14, 14, 'Corporate host offering business-ready accommodations'),
(15, 15, 'Student-focused host near educational institutions'),
(16, 16, 'Couples-focused host with romantic getaway options'),
(17, 17, 'Tech-savvy host with smart home properties'),
(18, 18, 'Senior-friendly host offering accessible accommodations'),
(19, 19, 'Gourmet host with properties near culinary hotspots'),
(20, 20, 'Seasoned host with expertise in cultural tourism');

-- Insert dummy data into the property table
INSERT IGNORE INTO property (property_id, host_id, price_per_night, max_guests, created_at, updated_at, address_id) VALUES
(1, 4, '400', 6, '2023-11-06 15:13:27', '2023-11-06 15:14:51', 6),
(2, 12, '600', 8, '2023-11-12 21:05:39', '2023-11-12 21:06:42', 12),
(3, 7, '180', 4, '2023-11-07 16:11:23', '2023-11-07 16:12:56', 7),
(4, 19, '500', 9, '2023-11-19 12:08:45', '2023-11-19 12:09:19', 19),
(5, 5, '250', 5, '2023-11-05 14:04:19', '2023-11-05 14:05:53', 5),
(6, 14, '380', 5, '2023-11-14 23:07:32', '2023-11-14 23:08:48', 14),
(7, 3, '500', 8, '2023-11-03 12:02:14', '2023-11-03 12:03:59', 3),
(8, 1, '200', 4, '2023-11-01 10:15:42', '2023-11-01 10:16:36', 1),
(9, 8, '350', 5, '2023-11-08 17:09:53', '2023-11-08 17:10:47', 8),
(10, 18,  '350', 7, '2023-11-18 11:06:34', '2023-11-18 11:07:28', 18),
(11, 2, '350', 6, '2023-11-02 11:14:27', '2023-11-02 11:15:43', 2),
(12, 20,  '450', 8, '2023-11-20 13:10:45', '2023-11-20 13:12:12', 20),
(13, 13,  '450', 7, '2023-11-13 22:09:31', '2023-11-13 22:11:04', 13),
(14, 6,  '600', 6, '2023-11-06 15:04:18', '2023-11-06 15:05:21', 6),
(15, 10,  '220', 6, '2023-11-10 19:07:45', '2023-11-10 19:09:15', 10),
(16, 9, '300', 4, '2023-11-09 18:03:12', '2023-11-09 18:04:58', 9),
(17, 15,  '200', 6, '2023-11-15 08:13:27', '2023-11-15 08:14:41', 15),
(18, 11,  '280', 5, '2023-11-11 20:05:39', '2023-11-11 20:06:52', 11),
(19, 17,  '300', 6, '2023-11-17 10:02:54', '2023-11-17 10:04:23', 17),
(20, 16, '250', 8, '2023-11-16 09:08:12', '2023-11-16 09:09:48', 16);

-- Insert dummy data into the property_policy table
INSERT IGNORE INTO property_policy (policy_id, policy_type, policy_description) VALUES
(1, 'Cancellation Policy', 'Full refund if canceled within 24 hours of booking'),
(2, 'Damage Policy', 'Damage to property incurs a $500 fine'),
(3, 'Check-in Policy', 'Check-in from 3 PM to 10 PM'),
(4, 'Check-out Policy', 'Check-out before 11 AM'),
(5, 'Pet Policy', 'Pets allowed with a $50 cleaning fee'),
(6, 'Smoking Policy', 'No smoking allowed in the property'),
(7, 'Guest Policy', 'Maximum of 4 guests allowed'),
(8, 'Noise Policy', 'Quiet hours from 10 PM to 7 AM'),
(9, 'Key Policy', 'Lost keys incur a $100 replacement fee'),
(10, 'Parking Policy', 'Free parking available on premises'),
(11, 'Cleaning Policy', 'Cleaning fee of $100 applies'),
(12, 'Cancellation Policy', '50% refund if canceled 7 days before arrival'),
(13, 'Damage Policy', 'No refund for intentional damage'),
(14, 'Check-in Policy', 'Check-in from 12 PM to 8 PM'),
(15, 'Check-out Policy', 'Check-out before 10 AM'),
(16, 'Pet Policy', 'No pets allowed'),
(17, 'Smoking Policy', 'Smoking allowed in designated areas only'),
(18, 'Guest Policy', 'Maximum of 6 guests allowed'),
(19, 'Noise Policy', 'No loud music after 9 PM'),
(20, 'Parking Policy', 'No parking available on premises');

-- Insert dummy data into the property_policy_map table
INSERT IGNORE INTO property_policy_map (property_id, policy_id) VALUES
(1, 1), (1, 2), (1, 3), (2, 4), (2, 5),
(3, 6), (3, 7), (3, 8), (4, 9), (4, 10),
(5, 11), (5, 12), (6, 13), (6, 14), (7, 15),
(8, 16), (8, 17), (9, 18), (10, 19), (10, 20);

-- Insert dummy data into the property_service table
INSERT IGNORE INTO property_service (service_id, service_name, service_description) VALUES
(1, 'Daily Cleaning', 'Daily cleaning services provided'),
(2, 'Concierge', '24/7 concierge service'),
(3, 'Room Service', 'In-room dining available'),
(4, 'Laundry', 'Laundry services provided'),
(5, 'Luggage Storage', 'Secure luggage storage facility'),
(6, 'Shuttle Service', 'Airport and local shuttle service'),
(7, 'Spa', 'On-site spa services'),
(8, 'Grocery Delivery', 'Grocery delivery service available'),
(9, 'Pet Sitting', 'Pet sitting services available'),
(10, 'Babysitting', 'Professional babysitting services'),
(11, 'Tour Assistance', 'Guided tours and assistance available'),
(12, 'Breakfast Included', 'Complimentary breakfast for guests'),
(13, 'Catering', 'Event catering services available'),
(14, 'Valet Parking', 'Valet parking services'),
(15, 'Fitness Classes', 'On-site fitness classes'),
(16, 'Yoga Sessions', 'Private yoga sessions available'),
(17, 'Car Rental', 'On-site car rental services'),
(18, 'Bike Rental', 'Bicycles available for rent'),
(19, 'Massage', 'In-room massage services available'),
(20, 'Event Planning', 'Event planning and coordination services');

-- Insert dummy data into the property_service_map table
INSERT IGNORE INTO property_service_map (property_id, service_id) VALUES
(1, 1), (1, 2), (1, 3), (2, 4), (2, 5),
(3, 6), (3, 7), (4, 8), (4, 9), (5, 10),
(5, 11), (6, 12), (6, 13), (7, 14), (7, 15),
(8, 16), (8, 17), (9, 18), (9, 19), (10, 20);

-- Insert dummy data into the amenities table
INSERT IGNORE INTO amenities (amenity_id, amenity_name, amenity_description) VALUES
(1, 'Wi-Fi', 'High-speed wireless internet'),
(2, 'Air Conditioning', 'Central air conditioning'),
(3, 'Heating', 'Central heating system'),
(4, 'TV', 'Flat-screen TV with cable channels'),
(5, 'Kitchen', 'Fully equipped modern kitchen'),
(6, 'Pool', 'Outdoor swimming pool'),
(7, 'Gym', 'In-house fitness center'),
(8, 'Parking', 'Private parking available'),
(9, 'Balcony', 'Spacious private balcony'),
(10, 'Garden', 'Well-maintained garden area'),
(11, 'Washer', 'In-unit washer and dryer'),
(12, 'Dryer', 'In-unit clothes dryer'),
(13, 'Dishwasher', 'Dishwasher in kitchen'),
(14, 'BBQ Grill', 'Outdoor BBQ grill'),
(15, 'Fireplace', 'Indoor fireplace'),
(16, 'Hot Tub', 'Outdoor hot tub'),
(17, 'Game Room', 'Game room with entertainment options'),
(18, 'Playground', 'Outdoor playground for kids'),
(19, 'Sauna', 'Private sauna'),
(20, 'Library', 'Private library with books and magazines');

-- Insert dummy data into the property_amenities_map table
INSERT IGNORE INTO property_amenities_map (property_id, amenity_id) VALUES
(1, 1), (1, 2), (1, 3), (2, 4), (2, 5),
(3, 6), (3, 7), (4, 8), (4, 9), (5, 10),
(5, 11), (6, 12), (6, 13), (7, 14), (7, 15),
(8, 16), (8, 17), (9, 18), (9, 19), (10, 20);

-- Insert dummy data into the property_utility table
INSERT IGNORE INTO property_utility (utility_id, property_id, utility_type, cost, billing_period_start, billing_period_end) VALUES
(1, 3, 'Water', 55, '2023-11-02', '2023-11-29'),
(2, 5, 'Gas', 90, '2023-11-01', '2023-11-30'),
(3, 1, 'Electricity', 110, '2023-11-03', '2023-11-28'),
(4, 10, 'Internet', 48, '2023-11-01', '2023-11-30'),
(5, 8, 'Water', 70, '2023-11-04', '2023-11-29'),
(6, 4, 'Gas', 85, '2023-11-01', '2023-11-30'),
(7, 16, 'Electricity', 105, '2023-11-02', '2023-11-30'),
(8, 9, 'Internet', 50, '2023-11-01', '2023-11-30'),
(9, 11, 'Water', 65, '2023-11-01', '2023-11-29'),
(10, 6, 'Gas', 88, '2023-11-01', '2023-11-30'),
(11, 20, 'Electricity', 95, '2023-11-01', '2023-11-30'),
(12, 13, 'Internet', 55, '2023-11-02', '2023-11-30'),
(13, 12, 'Water', 60, '2023-11-03', '2023-11-30'),
(14, 14, 'Gas', 80, '2023-11-01', '2023-11-29'),
(15, 7, 'Electricity', 100, '2023-11-01', '2023-11-30'),
(16, 18, 'Internet', 45, '2023-11-02', '2023-11-30'),
(17, 2, 'Water', 50, '2023-11-01', '2023-11-28'),
(18, 15, 'Gas', 75, '2023-11-03', '2023-11-30'),
(19, 17, 'Electricity', 120, '2023-11-01', '2023-11-30'),
(20, 19, 'Internet', 40, '2023-11-04', '2023-11-29');

-- Insert dummy data into the property_images table
INSERT IGNORE INTO property_images (image_id, property_id, image_url, description, uploaded_at) VALUES
(1, 3, 'https://example.com/images/property3_bedroom.jpg', 'Master bedroom', '2023-12-02 11:18:43'),
(2, 1, 'https://example.com/images/property1_interior.jpg', 'Living room', '2023-12-01 10:12:25'),
(3, 7, 'https://example.com/images/property7.jpg', 'Terrace', '2023-12-07 16:09:36'),
(4, 10, 'https://example.com/images/property10.jpg', 'Entrance', '2023-12-10 19:05:57'),
(5, 5, 'https://example.com/images/property5_living.jpg', 'Spacious living room', '2023-12-05 14:11:34'),
(6, 2, 'https://example.com/images/property2.jpg', 'Side view of the property', '2023-12-02 11:07:12'),
(7, 4, 'https://example.com/images/property4_balcony.jpg', 'Balcony with a view', '2023-12-04 13:16:45'),
(8, 9, 'https://example.com/images/property9_office.jpg', 'Home office', '2023-12-09 18:09:27'),
(9, 6, 'https://example.com/images/property6_dining.jpg', 'Dining area', '2023-12-06 15:21:49'),
(10, 8, 'https://example.com/images/property8.jpg', 'Patio', '2023-12-08 17:12:38'),
(11, 1, 'https://example.com/images/property1.jpg', 'Front view of the property', '2023-12-01 10:03:17'),
(12, 5, 'https://example.com/images/property5.jpg', 'Garden area', '2023-12-05 14:02:58'),
(13, 8, 'https://example.com/images/property8_bathroom.jpg', 'Luxury bathroom', '2023-12-08 17:17:45'),
(14, 2, 'https://example.com/images/property2_kitchen.jpg', 'Modern kitchen', '2023-12-02 11:29:16'),
(15, 10, 'https://example.com/images/property10_pool.jpg', 'Private pool', '2023-12-10 19:11:02'),
(16, 7, 'https://example.com/images/property7_gym.jpg', 'In-house gym', '2023-12-07 16:24:10'),
(17, 4, 'https://example.com/images/property4.jpg', 'Pool area', '2023-12-04 13:13:41'),
(18, 6, 'https://example.com/images/property6.jpg', 'Night view', '2023-12-06 15:07:52'),
(19, 3, 'https://example.com/images/property3.jpg', 'Backyard', '2023-12-03 12:08:14'),
(20, 9, 'https://example.com/images/property9.jpg', 'Driveway', '2023-12-09 18:03:59');

-- Insert dummy data into the booking table
INSERT IGNORE INTO booking (booking_id, user_id, property_id, booking_date, number_of_guests, total_price, status_id) VALUES
(1, 3, 2, '2023-10-12 10:22:15', 3, 1050.00, 1),
(2, 15, 8, '2023-09-21 11:18:27', 3, 900.00, 2),
(3, 7, 5, '2023-08-15 12:14:36', 2, 750.00, 3),
(4, 10, 7, '2023-12-05 13:07:12', 3, 900.00, 1),
(5, 18, 12, '2023-07-18 14:08:19', 4, 1000.00, 1),
(6, 1, 4, '2023-11-03 15:11:54', 5, 1200.00, 2),
(7, 6, 1, '2023-06-24 16:15:41', 4, 800.00, 1),
(8, 13, 13, '2023-11-10 17:12:48', 2, 700.00, 3),
(9, 19, 14, '2023-09-06 18:09:37', 6, 1400.00, 2),
(10, 2, 3, '2023-08-29 19:13:27', 2, 700.00, 3),
(11, 5, 6, '2023-10-07 20:08:15', 6, 1500.00, 2),
(12, 9, 9, '2023-12-22 21:17:04', 4, 1100.00, 1),
(13, 20, 15, '2023-07-27 22:19:47', 3, 850.00, 1),
(14, 8, 16, '2023-06-11 23:09:51', 2, 650.00, 3),
(15, 11, 10, '2023-08-20 08:14:29', 4, 1150.00, 1),
(16, 12, 11, '2023-11-01 09:18:32', 5, 1300.00, 2),
(17, 14, 17, '2023-10-18 10:06:44', 5, 1250.00, 1),
(18, 4, 19, '2023-09-09 11:03:55', 6, 1400.00, 2),
(19, 17, 18, '2023-07-14 12:15:49', 4, 1000.00, 3),
(20, 16, 20, '2023-10-25 13:08:22', 3, 850.00, 1);

-- Insert dummy data into the booking_guidelines table
INSERT IGNORE INTO booking_guideline (booking_guideline_id, booking_id, property_id, guideline_description) VALUES
(15, 7, 3, 'Check-in after 3 PM.'),
(12, 4, 8, 'No smoking in the property.'),
(9, 6, 5, 'No pets allowed.'),
(3, 2, 10, 'Quiet hours from 10 PM to 7 AM.'),
(17, 5, 6, 'Pool use allowed from 9 AM to 9 PM.'),
(8, 1, 7, 'ID required at check-in.'),
(14, 3, 9, 'Maximum of 4 guests per booking.'),
(1, 8, 1, 'No parties or events allowed.'),
(16, 10, 2, 'Parking space available upon request.'),
(6, 9, 4, 'Please dispose of garbage in designated bins.'),
(20, 12, 11, 'Early check-out available upon request.'),
(10, 13, 15, 'Pets allowed with a fee of $50.'),
(4, 11, 13, 'Please report damages immediately.'),
(11, 14, 16, 'Use of the gym is complimentary.'),
(19, 20, 20, 'Breakfast is served from 7 AM to 10 AM.'),
(2, 18, 18, 'Check-out before 11 AM.'),
(18, 19, 19, 'Use of hot tub allowed until midnight.'),
(13, 15, 14, 'Smoking allowed in designated areas only.'),
(7, 17, 17, 'Complimentary toiletries provided.'),
(5, 16, 12, 'Please follow local COVID-19 guidelines.');

-- Insert dummy data into the cancellation_policies table
INSERT IGNORE INTO cancellation_policies (policy_id, property_id, cancellation_period, penalty_amount, created_at, updated_at) VALUES
(1, 14, '2024-01-07 09:43:29', 75, '2023-12-03 11:15:32', '2023-12-03 11:17:48'),
(2, 3, '2024-01-15 08:22:19', 125, '2023-12-05 10:08:14', '2023-12-05 10:12:45'),
(3, 10, '2024-01-12 10:39:54', 200, '2023-12-10 12:22:17', '2023-12-10 12:27:03'),
(4, 5, '2024-01-01 14:03:12', 50, '2023-12-01 09:15:24', '2023-12-01 09:18:37'),
(5, 18, '2024-01-18 11:23:45', 300, '2023-12-16 08:11:49', '2023-12-16 08:13:58'),
(6, 8, '2024-01-05 16:17:22', 175, '2023-12-04 15:03:41', '2023-12-04 15:06:29'),
(7, 20, '2024-01-09 10:07:56', 275, '2023-12-11 12:09:14', '2023-12-11 12:13:22'),
(8, 7, '2024-01-04 08:19:33', 150, '2023-12-06 07:17:52', '2023-12-06 07:19:42'),
(9, 1, '2024-01-11 13:45:12', 425, '2023-12-09 14:12:31', '2023-12-09 14:14:17'),
(10, 13, '2024-01-20 10:18:47', 500, '2023-12-19 09:07:53', '2023-12-19 09:11:39'),
(11, 2, '2024-01-02 12:30:16', 100, '2023-12-02 10:15:06', '2023-12-02 10:18:45'),
(12, 9, '2024-01-03 10:17:31', 125, '2023-12-07 11:04:29', '2023-12-07 11:07:53'),
(13, 19, '2024-01-16 09:11:28', 375, '2023-12-13 10:22:37', '2023-12-13 10:24:12'),
(14, 12, '2024-01-14 07:29:58', 275, '2023-12-12 08:06:21', '2023-12-12 08:11:04'),
(15, 11, '2024-01-06 08:54:21', 225, '2023-12-08 09:17:11', '2023-12-08 09:20:18'),
(16, 15, '2024-01-13 10:15:12', 325, '2023-12-14 10:04:36', '2023-12-14 10:08:14'),
(17, 4, '2024-01-08 11:32:45', 450, '2023-12-15 12:19:31', '2023-12-15 12:22:47'),
(18, 6, '2024-01-10 15:41:56', 200, '2023-12-17 13:14:22', '2023-12-17 13:16:58'),
(19, 16, '2024-01-17 08:43:29', 375, '2023-12-18 07:06:19', '2023-12-18 07:09:47'),
(20, 17, '2024-01-19 10:12:14', 450, '2023-12-20 11:05:14', '2023-12-20 11:08:31');

-- Insert dummy data into the booking_status_history table
INSERT IGNORE INTO booking_status_history (history_id, booking_id, booking_status, changed_by, property_id) VALUES
(10, 5, 'Pending', 12, 7),
(3, 9, 'Cancelled', 3, 8),
(8, 15, 'Confirmed', 6, 11),
(19, 1, 'Pending', 19, 14),
(1, 14, 'Cancelled', 1, 5),
(17, 18, 'Confirmed', 17, 2),
(11, 6, 'Pending', 11, 10),
(5, 10, 'Cancelled', 5, 15),
(12, 20, 'Confirmed', 8, 4),
(7, 3, 'Pending', 9, 12),
(20, 13, 'Cancelled', 20, 18),
(9, 4, 'Confirmed', 14, 9),
(4, 7, 'Pending', 4, 20),
(2, 2, 'Cancelled', 2, 6),
(15, 12, 'Confirmed', 18, 16),
(18, 16, 'Pending', 10, 3),
(6, 11, 'Cancelled', 16, 1),
(14, 17, 'Confirmed', 13, 19),
(16, 8, 'Pending', 15, 17),
(13, 19, 'Cancelled', 7, 13);

-- Insert dummy data into the review table
INSERT IGNORE INTO review (review_id, user_id, property_id, review_text, rating, created_at) VALUES
(1, 5, 1, 'Had some issues with the Wi-Fi, but overall great.', 4.0, '2023-12-01 10:12:34'),
(2, 18, 2, 'Check-in process was smooth and hassle-free.', 4.9, '2023-12-02 11:18:47'),
(3, 11, 3, 'Decent stay, but could use some upgrades.', 3.8, '2023-12-03 12:09:15'),
(4, 3, 4, 'Host was very helpful and responsive.', 5.0, '2023-12-04 13:07:22'),
(5, 10, 5, 'Host went above and beyond to make us feel welcome.', 5.0, '2023-12-05 14:11:56'),
(6, 9, 6, 'Great amenities but a bit noisy at night.', 4.3, '2023-12-06 15:06:37'),
(7, 7, 7, 'Would definitely recommend to friends.', 4.9, '2023-12-07 16:03:14'),
(8, 8, 8, 'The property exceeded our expectations.', 5.0, '2023-12-08 17:02:48'),
(9, 19, 9, 'The area was very quiet and relaxing.', 4.7, '2023-12-09 18:16:41'),
(10, 13, 10, 'Kitchen was well-equipped for cooking.', 4.7, '2023-12-10 19:13:25'),
(11, 1, 11, 'Amazing property with stunning views!', 5.0, '2023-12-11 20:14:59'),
(12, 15, 12, 'Bed was super comfortable!', 5.0, '2023-12-12 21:09:36'),
(13, 6, 13, 'Beautiful interiors and comfortable stay.', 4.7, '2023-12-13 22:05:47'),
(14, 4, 14, 'Perfect location for a family vacation.', 4.8, '2023-12-14 23:08:16'),
(15, 2, 15, 'Very clean and well-maintained.', 4.5, '2023-12-15 08:11:23'),
(16, 20, 16, 'Exceptional experience! Will book again.', 5.0, '2023-12-16 09:17:41'),
(17, 14, 17, 'Convenient location near public transport.', 4.5, '2023-12-17 10:13:29'),
(18, 17, 18, 'Amazing for a weekend getaway.', 4.8, '2023-12-18 11:07:52'),
(19, 12, 19, 'Loved the pool and outdoor area.', 4.6, '2023-12-19 12:09:18'),
(20, 16, 20, 'Great value for the price.', 4.4, '2023-12-20 13:08:33');

-- Insert dummy data into the payment table
INSERT IGNORE INTO payment (payment_id, booking_id, payment_date, amount, payment_method, payment_status) VALUES
(1, 6, '2023-11-04 11:13:21', '1200', 'Credit Card', 'Completed'),
(2, 3, '2023-08-16 12:18:49', '1050', 'Bank Transfer', 'Pending'),
(3, 9, '2023-09-07 13:05:15', '1400', 'PayPal', 'Pending'),
(4, 5, '2023-07-19 14:14:37', '1000', 'Credit Card', 'Completed'),
(5, 20, '2023-10-26 15:11:58', '850', 'Credit Card', 'Completed'),
(6, 14, '2023-06-12 16:07:32', '650', 'PayPal', 'Completed'),
(7, 18, '2023-09-10 17:19:44', '1400', 'Credit Card', 'Completed'),
(8, 13, '2023-07-28 18:15:23', '850', 'PayPal', 'Completed'),
(9, 19, '2023-07-15 19:17:41', '1000', 'Bank Transfer', 'Failed'),
(10, 15, '2023-08-21 20:06:52', '1150', 'Credit Card', 'Completed'),
(11, 7, '2023-06-25 21:10:11', '800', 'Credit Card', 'Completed'),
(12, 8, '2023-11-11 22:08:25', '750', 'PayPal', 'Completed'),
(13, 1, '2023-10-13 23:14:29', '800', 'Bank Transfer', 'Failed'),
(14, 16, '2023-11-02 08:09:56', '1300', 'Credit Card', 'Pending'),
(15, 2, '2023-09-22 09:03:41', '700', 'PayPal', 'Completed'),
(16, 11, '2023-08-30 10:18:37', '1500', 'Credit Card', 'Completed'),
(17, 12, '2023-12-23 11:05:23', '1100', 'PayPal', 'Pending'),
(18, 17, '2023-10-19 12:19:45', '1250', 'Bank Transfer', 'Pending'),
(19, 4, '2023-06-26 13:07:38', '900', 'PayPal', 'Pending'),
(20, 10, '2023-09-11 14:11:15', '800', 'Credit Card', 'Completed');

-- Insert dummy data into the payment_info table
INSERT IGNORE INTO payment_info 
(payment_id, user_id, card_number, card_expiry, card_type, billing_address, created_at, method_type) VALUES
(1, 12, '5602255230400716', '2027-11-17', 'bankcard', '72791 Claremont Road', '2024-07-21', 'apple_pay'),
(2, 3, '3569815018863462', '2025-01-10', 'jcb', '5 Elka Circle', '2023-11-30', 'venmo'),
(3, 11, '3568529170833269', '2026-02-14', 'jcb', '3 Onsgard Alley', '2023-12-15', 'debit_card'),
(4, 8, '4026705996755944', '2025-02-10', 'visa-electron', '5920 Cascade Alley', '2023-12-01', 'credit_card'),
(5, 14, '490505116813608483', '2028-10-17', 'switch', '40 Stone Corner Way', '2024-06-13', 'venmo'),
(6, 7, '3532767912031866', '2028-01-06', 'jcb', '3 Lakewood Lane', '2024-11-20', 'credit_card'),
(7, 5, '3557048955841655', '2024-08-28', 'jcb', '8 Dapin Place', '2024-05-12', 'credit_card'),
(8, 18, '3549316920398619', '2026-02-01', 'jcb', '5243 Superior Place', '2024-11-16', 'paypal'),
(9, 11, '201525200798513', '2028-09-16', 'diners-club-enroute', '67 Summerview Way', '2024-11-27', 'paypal'),
(10, 19, '3560540743289671', '2027-12-17', 'jcb', '790 Fulton Avenue', '2023-11-29', 'credit_card'),
(11, 16, '3551428148820061', '2027-05-15', 'jcb', '5449 Division Lane', '2024-05-20', 'debit_card'),
(12, 10, '3564284526090263', '2028-05-27', 'jcb', '28873 Northridge Point', '2023-12-24', 'apple_pay'),
(13, 9, '3574145023038287', '2026-04-08', 'jcb', '5 Spaight Way', '2023-12-28', 'venmo'),
(14, 14, '5379544350333653', '2027-03-29', 'mastercard', '9604 Linden Junction', '2024-01-26', 'paypal'),
(15, 15, '589302717678188497', '2024-08-08', 'maestro', '5 Jenifer Place', '2024-06-27', 'debit_card'),
(16, 6, '3532576987969201', '2028-08-18', 'jcb', '02 Nevada Terrace', '2024-02-02', 'credit_card'),
(17, 1, '560222159832685464', '2024-11-29', 'china-unionpay', '9824 Wayridge Terrace', '2024-08-07', 'apple_pay'),
(18, 4, '67712839753382166', '2028-09-10', 'laser', '6773 Lakewood Gardens Terrace', '2024-11-23', 'venmo'),
(19, 20, '3560152240238688', '2026-05-23', 'jcb', '41 Reinke Trail', '2024-05-16', 'paypal'),
(20, 2, '3548359073752894', '2026-08-22', 'jcb', '1 Hovde Junction', '2024-10-12', 'paypal');


-- Insert dummy data into the social_media table
INSERT IGNORE INTO social_media (network_id, user_account_id, account_url) VALUES
(8, 15, 'https://linkedin.com/in/user115'),
(3, 6, 'https://instagram.com/user106'),
(14, 1, 'https://facebook.com/user101'),
(7, 18, 'https://instagram.com/user118'),
(1, 10, 'https://twitter.com/user110'),
(19, 3, 'https://instagram.com/user103'),
(5, 8, 'https://twitter.com/user108'),
(13, 4, 'https://twitter.com/user104'),
(17, 7, 'https://twitter.com/user107'),
(11, 13, 'https://instagram.com/user113'),
(2, 2, 'https://facebook.com/user102'),
(10, 14, 'https://facebook.com/user114'),
(9, 17, 'https://twitter.com/user117'),
(15, 5, 'https://instagram.com/user105'),
(6, 20, 'https://facebook.com/user120'),
(4, 12, 'https://linkedin.com/in/user112'),
(20, 9, 'https://linkedin.com/in/user109'),
(18, 16, 'https://facebook.com/user116'),
(16, 11, 'https://linkedin.com/in/user111'),
(12, 19, 'https://linkedin.com/in/user119');

-- Insert dummy data into the user_message table
INSERT IGNORE INTO user_message (id, sender_id, receiver_id, message_content, status, sent_at_timestamp) VALUES
(1, 5, 6, 'Can we reschedule our meeting?', 'Sent', '2023-09-03 12:14:23'),
(2, 6, 5, 'Sure, what time works for you?', 'Read', '2023-09-03 12:19:41'),
(3, 7, 8, 'I loved your recent post!', 'Sent', '2023-11-22 13:05:37'),
(4, 8, 7, 'Thank you so much!', 'Read', '2023-11-22 13:15:29'),
(5, 17, 18, 'Please share the presentation.', 'Sent', '2023-08-09 18:07:13'),
(6, 18, 17, 'I will send it by EOD.', 'Read', '2023-08-09 18:29:48'),
(7, 1, 2, 'Hello, how are you?', 'Sent', '2023-07-01 10:12:47'),
(8, 2, 1, 'I am good, thanks!', 'Read', '2023-07-01 10:19:33'),
(9, 15, 16, 'Are you free this weekend?', 'Sent', '2023-10-08 17:09:25'),
(10, 16, 15, 'Yes, let’s plan something.', 'Read', '2023-10-08 17:23:54'),
(11, 13, 14, 'I have sent you the proposal.', 'Sent', '2023-12-07 16:11:32'),
(12, 14, 13, 'Thanks, I will go through it.', 'Read', '2023-12-07 16:28:49'),
(13, 19, 20, 'Can you assist with the report?', 'Sent', '2023-09-10 19:06:15'),
(14, 20, 19, 'Sure, send me the details.', 'Read', '2023-09-10 19:22:14'),
(15, 11, 12, 'Let’s catch up soon.', 'Sent', '2023-06-06 15:08:53'),
(16, 12, 11, 'Sure, let me know when.', 'Read', '2023-06-06 15:25:41'),
(17, 9, 10, 'Please check the document I sent.', 'Sent', '2023-08-15 14:07:37'),
(18, 10, 9, 'Got it, will review and revert.', 'Read', '2023-08-15 14:29:52'),
(19, 3, 4, 'Are you available for a call?', 'Sent', '2023-11-02 11:13:27'),
(20, 4, 3, 'Yes, let me know when.', 'Read', '2023-11-02 11:28:15');

-- Insert dummy data into the user_notification table
INSERT IGNORE INTO user_notification (notification_id, user_id, notification_type, notification_content, sent_at, is_read) VALUES
(1, 5, 'Refund Processed', 'Your refund has been processed.', '2023-10-14 14:28:32', 1),
(2, 10, 'Promo Alert', 'A new promo code is available.', '2023-11-03 19:33:15', 0),
(3, 17, 'Support Ticket', 'Your support ticket has been updated.', '2023-12-01 10:47:28', 0),
(4, 8, 'Cancellation Confirmed', 'Your booking cancellation is confirmed.', '2023-08-25 17:52:14', 1),
(5, 15, 'Feedback Request', 'Please rate your recent booking.', '2023-09-18 08:49:37', 0),
(6, 4, 'Reminder', 'Your booking starts tomorrow.', '2023-10-22 13:19:43', 1),
(7, 6, 'Security Alert', 'Unusual activity detected on your account.', '2023-11-12 15:42:57', 0),
(8, 14, 'Booking Update', 'Your booking status has changed.', '2023-12-15 23:12:36', 1),
(9, 3, 'Ticket Update', 'Your support ticket has been resolved.', '2023-10-05 12:43:11', 0),
(10, 19, 'Discount Offer', 'Special discounts for holiday bookings.', '2023-09-29 12:16:22', 1),
(11, 1, 'Booking Update', 'Your booking has been confirmed.', '2023-08-11 10:13:49', 1),
(12, 18, 'App Update', 'A new version of the app is available.', '2023-09-20 11:29:07', 1),
(13, 11, 'Payment Failure', 'Your payment could not be processed.', '2023-07-07 20:49:25', 1),
(14, 9, 'Booking Reminder', 'Your booking starts in 2 days.', '2023-10-03 18:17:39', 1),
(15, 13, 'Maintenance Notice', 'Our site will be down for maintenance.', '2023-09-24 22:27:14', 0),
(16, 7, 'New Feature', 'Check out our new search filters.', '2023-10-18 16:25:08', 1),
(17, 16, 'Password Change', 'Your password was changed successfully.', '2023-11-09 09:14:29', 1),
(18, 12, 'Account Update', 'Your account details have been updated.', '2023-12-02 21:18:43', 1),
(19, 2, 'Payment Received', 'We have received your payment.', '2023-09-17 11:34:12', 1),
(20, 20, 'Booking Reminder', 'Your booking starts in 3 days.', '2023-12-20 13:37:55', 1);

-- Insert dummy data into the support_tickets table
INSERT IGNORE INTO support_tickets (ticket_id, user_id, subject, description, status, created_at, updated_at) VALUES
(1, 5, 'Refund Request', 'Requesting refund for a cancelled booking', 'Open', '2023-10-12 14:12:15', '2023-10-12 14:33:48'),
(2, 12, 'Slow Performance', 'Website loading very slowly', 'In Progress', '2023-09-22 21:18:27', '2023-09-22 21:39:54'),
(3, 18, 'App Update Issue', 'Unable to update the app on my phone', 'In Progress', '2023-07-05 11:14:36', '2023-07-05 11:31:42'),
(4, 3, 'Account Suspension', 'My account was suspended without reason', 'Pending', '2023-12-01 12:07:12', '2023-12-01 12:21:47'),
(5, 7, 'Feature Request', 'Add a filter for pet-friendly properties', 'Closed', '2023-08-19 16:15:49', '2023-08-19 16:24:15'),
(6, 10, 'Security Concern', 'Suspicious activity on my account', 'Resolved', '2023-11-03 19:09:22', '2023-11-03 19:39:12'),
(7, 16, 'Booking Confirmation', 'Did not receive confirmation email', 'Resolved', '2023-06-30 09:07:12', '2023-06-30 09:47:41'),
(8, 19, 'Broken Link', 'A link on the FAQ page is broken', 'Open', '2023-09-10 12:13:56', '2023-09-10 12:32:18'),
(9, 1, 'Login Issue', 'Unable to log into my account', 'Open', '2023-07-15 10:09:25', '2023-07-15 10:12:43'),
(10, 14, 'Double Charge', 'Charged twice for the same booking', 'Resolved', '2023-12-13 23:05:37', '2023-12-13 23:39:12'),
(11, 2, 'Payment Problem', 'Payment failed while booking a property', 'Resolved', '2023-08-21 11:18:21', '2023-08-21 12:12:37'),
(12, 4, 'Property Listing', 'Need help listing my property', 'In Progress', '2023-11-15 13:14:32', '2023-11-15 13:49:04'),
(13, 8, 'Cancellation Issue', 'Unable to cancel my booking', 'Open', '2023-09-25 17:17:48', '2023-09-25 17:53:11'),
(14, 11, 'Booking Problem', 'Could not complete booking process', 'Open', '2023-10-17 20:06:44', '2023-10-17 20:23:35'),
(15, 6, 'Technical Issue', 'Website not loading on my device', 'Resolved', '2023-06-29 15:13:55', '2023-06-29 15:38:41'),
(16, 13, 'Account Deletion', 'Want to delete my account permanently', 'Closed', '2023-08-30 22:09:41', '2023-08-30 22:36:25'),
(17, 17, 'Payment Refund', 'Refund not received for a cancelled booking', 'Pending', '2023-10-05 10:18:14', '2023-10-05 10:41:22'),
(18, 20, 'Discount Issue', 'Promo code is not being applied', 'Resolved', '2023-11-09 13:15:49', '2023-11-09 13:45:37'),
(19, 15, 'Unresponsive Host', 'Host is not responding to my messages', 'Open', '2023-12-02 08:17:42', '2023-12-02 08:39:27'),
(20, 9, 'Mobile App Bug', 'App crashes when viewing properties', 'Pending', '2023-07-10 18:13:14', '2023-07-10 18:31:49');

-- Insert dummy data into the user_activity_log table
INSERT IGNORE INTO user_activity_log (log_id, user_id, activity_type, activity_timestamp, activity_description) VALUES
(1, 5, 'Logout', '2023-09-03 12:15:42', 'User logged out of the system'),
(2, 12, 'Message Received', '2023-10-06 19:12:23', 'User received a message'),
(3, 19, 'Login', '2023-08-10 10:05:34', 'User logged into the system'),
(4, 2, 'Profile Update', '2023-09-12 09:18:56', 'User updated profile information'),
(5, 8, 'Booking', '2023-07-04 15:25:19', 'User made a booking'),
(6, 13, 'Login', '2023-12-02 20:14:07', 'User logged into the system'),
(7, 3, 'Password Change', '2023-11-02 10:07:29', 'User changed account password'),
(8, 6, 'Message Sent', '2023-09-01 13:03:41', 'User sent a message'),
(9, 17, 'Logout', '2023-08-09 08:11:16', 'User logged out of the system'),
(10, 7, 'Login', '2023-11-04 14:22:51', 'User logged into the system'),
(11, 20, 'Booking', '2023-10-10 11:27:45', 'User made a booking'),
(12, 9, 'Profile Update', '2023-06-05 16:09:34', 'User updated profile information'),
(13, 18, 'Message Sent', '2023-07-09 09:14:48', 'User sent a message'),
(14, 1, 'Login', '2023-08-01 08:23:37', 'User logged into the system'),
(15, 10, 'Payment', '2023-11-05 17:18:52', 'User made a payment'),
(16, 15, 'Password Change', '2023-07-08 22:10:42', 'User changed account password'),
(17, 16, 'Payment', '2023-10-08 23:11:25', 'User made a payment'),
(18, 14, 'Profile Update', '2023-09-07 21:15:58', 'User updated profile information'),
(19, 4, 'Payment', '2023-12-03 11:03:17', 'User made a payment'),
(20, 11, 'Logout', '2023-06-06 18:21:45', 'User logged out of the system');
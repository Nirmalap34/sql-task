CREATE DATABASE jul12_fri;
USE jul12_fri;
CREATE TABLE hospital_info (hospital_id INT ,hospital_name VARCHAR(100),address VARCHAR(255),city VARCHAR(100),state VARCHAR(100),
    zipcode VARCHAR(10),phone_number VARCHAR(15),email VARCHAR(100),website VARCHAR(100),specialty VARCHAR(100));

INSERT INTO hospital_info (hospital_id, hospital_name, address, city, state, zipcode, phone_number, email, website, specialty) VALUES
(1, 'City Hospital', '123 Main St', 'Metropolis', 'NY', '10001', '123-456-7890', 'info@cityhospital.com', 'www.cityhospital.com', 'General'),
(2, 'Green Valley Hospital', '456 Oak St', 'Springfield', 'CA', '90001', '234-567-8901', 'contact@greenvalley.com', 'www.greenvalley.com', 'Cardiology'),
(3, 'Sunshine Hospital', '789 Pine St', 'Sunnydale', 'TX', '75001', '345-678-9012', 'support@sunshine.com', 'www.sunshine.com', 'Pediatrics'),
(4, 'Blue River Hospital', '101 Maple St', 'Rivertown', 'FL', '32001', '456-789-0123', 'info@blueriver.com', 'www.blueriver.com', 'Orthopedics'),
(5, 'Mountain View Hospital', '202 Cedar St', 'Hilltop', 'CO', '80001', '567-890-1234', 'contact@mountainview.com', 'www.mountainview.com', 'Neurology'),
(6, 'Lakeside Hospital', '303 Birch St', 'Laketown', 'WI', '53001', '678-901-2345', 'info@lakeside.com', 'www.lakeside.com', 'Dermatology'),
(7, 'Ocean Breeze Hospital', '404 Palm St', 'Seaside', 'CA', '94001', '789-012-3456', 'contact@oceanbreeze.com', 'www.oceanbreeze.com', 'Oncology'),
(8, 'Sunset Hospital', '505 Elm St', 'Sunset City', 'AZ', '85001', '890-123-4567', 'info@sunset.com', 'www.sunset.com', 'Gastroenterology'),
(9, 'Northern Lights Hospital', '606 Fir St', 'Northville', 'MN', '55001', '901-234-5678', 'contact@northernlights.com', 'www.northernlights.com', 'Psychiatry'),
(10, 'Golden Gate Hospital', '707 Spruce St', 'Bay City', 'CA', '94002', '012-345-6789', 'info@goldengate.com', 'www.goldengate.com', 'Urology'),
(11, 'Riverfront Hospital', '808 Willow St', 'River City', 'LA', '70001', '123-456-7890', 'info@riverfront.com', 'www.riverfront.com', 'Pulmonology'),
(12, 'Meadowland Hospital', '909 Ash St', 'Meadowville', 'NJ', '07001', '234-567-8901', 'contact@meadowland.com', 'www.meadowland.com', 'Rheumatology'),
(13, 'Starlight Hospital', '1010 Cherry St', 'Starlight City', 'NV', '89001', '345-678-9012', 'support@starlight.com', 'www.starlight.com', 'Endocrinology'),
(14, 'Highland Hospital', '1111 Poplar St', 'Highland', 'WA', '98001', '456-789-0123', 'info@highland.com', 'www.highland.com', 'Nephrology'),
(15, 'Silver Lake Hospital', '1212 Magnolia St', 'Silvertown', 'OR', '97001', '567-890-1234', 'contact@silverlake.com', 'www.silverlake.com', 'Hematology'),
(16, 'Twin Peaks Hospital', '1313 Cypress St', 'Twin Peaks', 'CO', '80002', '678-901-2345', 'info@twinpeaks.com', 'www.twinpeaks.com', 'Allergy & Immunology'),
(17, 'Redwood Hospital', '1414 Redwood St', 'Redwood City', 'CA', '94003', '789-012-3456', 'contact@redwood.com', 'www.redwood.com', 'Geriatrics'),
(18, 'Crystal Hospital', '1515 Crystal St', 'Crystal Lake', 'IL', '60001', '890-123-4567', 'info@crystal.com', 'www.crystal.com', 'Ophthalmology'),
(19, 'Prairie Hospital', '1616 Prairie St', 'Prairie Town', 'KS', '66001', '901-234-5678', 'contact@prairie.com', 'www.prairie.com', 'Obstetrics & Gynecology'),
(20, 'Cedarwood Hospital', '1717 Cedarwood St', 'Cedarville', 'MI', '48001', '012-345-6789', 'info@cedarwood.com', 'www.cedarwood.com', 'Infectious Disease');

SELECT * FROM hospital_info;

CREATE TABLE tourist_places (place_id INT ,place_name VARCHAR(100),address VARCHAR(255),city VARCHAR(100),state VARCHAR(100),zipcode VARCHAR(10),
    phone_number VARCHAR(15),email VARCHAR(100),website VARCHAR(100),description TEXT);

INSERT INTO tourist_places (place_id, place_name, address, city, state, zipcode, phone_number, email, website, description) VALUES
(1, 'Grand Canyon', '123 Canyon Rd', 'Grand Canyon', 'AZ', '86023', '123-456-7890', 'info@grandcanyon.com', 'www.grandcanyon.com', 'A majestic natural wonder.'),
(2, 'Yellowstone National Park', '456 Park Rd', 'Yellowstone', 'WY', '82190', '234-567-8901', 'contact@yellowstone.com', 'www.yellowstone.com', 'First national park in the world.'),
(3, 'Yosemite National Park', '789 Yosemite Rd', 'Yosemite', 'CA', '95389', '345-678-9012', 'support@yosemite.com', 'www.yosemite.com', 'Famous for its waterfalls.'),
(4, 'Statue of Liberty', '101 Liberty Island', 'New York', 'NY', '10004', '456-789-0123', 'info@statueofliberty.com', 'www.statueofliberty.com', 'Icon of freedom.'),
(5, 'Mount Rushmore', '202 Rushmore Rd', 'Keystone', 'SD', '57751', '567-890-1234', 'contact@mtrushmore.com', 'www.mtrushmore.com', 'Famous monument with presidents.'),
(6, 'Golden Gate Bridge', '303 Bridge Rd', 'San Francisco', 'CA', '94129', '678-901-2345', 'info@goldengatebridge.com', 'www.goldengatebridge.com', 'Iconic suspension bridge.'),
(7, 'Niagara Falls', '404 Falls Rd', 'Niagara Falls', 'NY', '14303', '789-012-3456', 'contact@niagarafalls.com', 'www.niagarafalls.com', 'Famous waterfalls.'),
(8, 'Walt Disney World', '505 Disney Rd', 'Orlando', 'FL', '32830', '890-123-4567', 'info@disneyworld.com', 'www.disneyworld.com', 'World-famous theme park.'),
(9, 'Las Vegas Strip', '606 Strip Rd', 'Las Vegas', 'NV', '89109', '901-234-5678', 'contact@vegasstrip.com', 'www.vegasstrip.com', 'Entertainment capital.'),
(10, 'Times Square', '707 Broadway', 'New York', 'NY', '10036', '012-345-6789', 'info@timessquare.com', 'www.timessquare.com', 'Bustling commercial area.'),
(11, 'Hollywood Sign', '808 Hollywood Rd', 'Los Angeles', 'CA', '90068', '123-456-7890', 'info@hollywoodsign.com', 'www.hollywoodsign.com', 'Iconic landmark.'),
(12, 'Central Park', '909 Central Park W', 'New York', 'NY', '10024', '234-567-8901', 'contact@centralpark.com', 'www.centralpark.com', 'Famous urban park.'),
(13, 'Empire State Building', '1010 5th Ave', 'New York', 'NY', '10118', '345-678-9012', 'support@empirestatebuilding.com', 'www.empirestatebuilding.com', 'Historic skyscraper.'),
(14, 'Smithsonian Institution', '1111 Constitution Ave NW', 'Washington', 'DC', '20560', '456-789-0123', 'info@smithsonian.com', 'www.smithsonian.com', 'World’s largest museum.'),
(15, 'Disneyland', '1212 Disneyland Dr', 'Anaheim', 'CA', '92802', '567-890-1234', 'contact@disneyland.com', 'www.disneyland.com', 'Famous theme park.'),
(16, 'Mount Vernon', '1313 Mount Vernon Hwy', 'Mount Vernon', 'VA', '22121', '678-901-2345', 'info@mountvernon.com', 'www.mountvernon.com', 'Home of George Washington.'),
(17, 'The Alamo', '1414 Alamo Plaza', 'San Antonio', 'TX', '78205', '789-012-3456', 'contact@thealamo.com', 'www.thealamo.com', 'Historic site.'),
(18, 'Rockefeller Center', '1515 Rockefeller Plaza', 'New York', 'NY', '10111', '890-123-4567', 'info@rockefeller.com', 'www.rockefeller.com', 'Famous complex.'),
(19, 'Liberty Bell', '1616 Chestnut St', 'Philadelphia', 'PA', '19106', '901-234-5678', 'contact@libertybell.com', 'www.libertybell.com', 'Historic symbol.'),
(20, 'Space Needle', '1717 Broad St', 'Seattle', 'WA', '98109', '012-345-6789', 'info@spaceneedle.com', 'www.spaceneedle.com', 'Iconic observation tower.');

SELECT * FROM tourist_places;












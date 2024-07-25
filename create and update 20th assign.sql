CREATE DATABASE assinment;
USE assinment;
CREATE TABLE state_info(id int,state_name varchar(50),capital_city varchar(50),population_count int,total_area_km2 int,
primary_language varchar(50),literacy_percentage double,district_total int,gdp_billion_usd double,formation_date date);

CREATE TABLE scam_info(scam_id int,scam_title varchar(75),amount_involved float,number_of_persons int,scam_year year,
associated_state varchar(30),industry_sector varchar(50),date_detected date,penalty_amount float,scam_details varchar(10));

ALTER TABLE state_info ADD COLUMN governor_name varchar(30),ADD COLUMN cm_name varchar(40),ADD COLUMN tourism_index int,
ADD COLUMN average_income float,ADD COLUMN university_count int;

ALTER TABLE scam_info ADD COLUMN duration_days int,ADD COLUMN conviction_percentage float,ADD COLUMN media_attention varchar(50),
ADD COLUMN recovered_amount float,ADD COLUMN current_status varchar(20);

ALTER TABLE state_info RENAME COLUMN population_count TO population_total,RENAME COLUMN total_area_km2 TO land_area,
RENAME COLUMN district_total TO number_of_districts,RENAME COLUMN literacy_percentage TO literacy_rate,RENAME COLUMN average_income TO income_avg;

ALTER TABLE state_info MODIFY COLUMN population_total bigint,MODIFY COLUMN land_area bigint,MODIFY COLUMN number_of_districts int,
MODIFY COLUMN literacy_rate double,MODIFY COLUMN income_avg double;

ALTER TABLE scam_info MODIFY COLUMN total_amount double,MODIFY COLUMN people_involved int,MODIFY COLUMN detection_date date,
MODIFY COLUMN fines_imposed double,MODIFY COLUMN scam_summary varchar(200);

INSERT INTO state_info (id, state_name, capital_city, population_total, land_area, primary_language, literacy_rate, number_of_districts, gdp_billion_usd, formation_date, governor_name, cm_name, tourism_index, income_avg, university_count) VALUES
(1, 'Maharashtra', 'Mumbai', 112374333, 307713, 'Marathi', 82.3, 36, 400.00, '1960-05-01', 'Bhagat Singh Koshyari', 'Eknath Shinde', 1, 55000.00, 50),
(2, 'Karnataka', 'Bengaluru', 61095297, 191791, 'Kannada', 75.4, 31, 250.00, '1956-11-01', 'Thawar Chand Gehlot', 'Basavaraj Bommai', 2, 50000.00, 40),
(3, 'Tamil Nadu', 'Chennai', 72147030, 130058, 'Tamil', 80.3, 38, 260.00, '1956-11-01', 'R.N. Ravi', 'M.K. Stalin', 3, 52000.00, 45),
(4, 'Uttar Pradesh', 'Lucknow', 199812341, 243286, 'Hindi', 67.7, 75, 170.00, '1950-01-26', 'Anandiben Patel', 'Yogi Adityanath', 4, 35000.00, 55),
(5, 'West Bengal', 'Kolkata', 91276115, 88752, 'Bengali', 76.2, 23, 150.00, '1950-01-26', 'C.V. Ananda Bose', 'Mamata Banerjee', 5, 33000.00, 42),
(6, 'Rajasthan', 'Jaipur', 68548437, 342239, 'Hindi', 66.1, 33, 140.00, '2021-07-10', 'Kalraj Mishra', 'Ashok Gehlot', 6, 34000.00, 30),
(7, 'Gujarat', 'Gandhinagar', 60439692, 196024, 'Gujarati', 78.0, 33, 220.00, '2021-07-10', 'Acharya Devvrat', 'Bhupendra Patel', 7, 47000.00, 35),
(8, 'Punjab', 'Chandigarh', 27743338, 50362, 'Punjabi', 76.7, 22, 120.00, '2021-08-31', 'Banwarilal Purohit', 'Bhagwant Mann', 8, 39000.00, 25),
(9, 'Haryana', 'Chandigarh', 25351462, 44212, 'Hindi', 76.6, 22, 130.00, '2021-08-31', 'Bandaru Dattatreya', 'Manohar Lal Khattar', 9, 41000.00, 20),
(10, 'Kerala', 'Thiruvananthapuram', 33406061, 38863, 'Malayalam', 94.0, 14, 70.00, '2021-08-31', 'Arif Mohammed Khan', 'Pinarayi Vijayan', 10, 47000.00, 20),
(11, 'Andhra Pradesh', 'Amaravati', 49577103, 162968, 'Telugu', 67.0, 13, 120.00, '2019-05-30', 'Biswabhusan Harichandan', 'Y. S. Jagan Mohan Reddy', 11, 43000.00, 30),
(12, 'Telangana', 'Hyderabad', 35193978, 114840, 'Telugu', 66.5, 33, 150.00,'2018-03-31', 'Tamilisai Soundararajan', 'K. Chandrashekar Rao', 12, 45000.00, 25),
(13, 'Bihar', 'Patna', 104099452, 94163, 'Hindi', 63.8, 38, 70.00, '2021-08-31', 'Phagu Chauhan', 'Nitish Kumar', 13, 29000.00, 25),
(14, 'Jharkhand', 'Ranchi', 32988134, 79714, 'Hindi', 66.4, 24, 90.00, '2000-11-15', 'Ramesh Bais', 'Hemant Soren', 14, 32000.00, 20),
(15, 'Chhattisgarh', 'Raipur', 25545198, 135191, 'Hindi', 70.0, 28, 80.00, '2000-11-01', 'Anusuiya Uikey', 'Bhupesh Baghel', 15, 31000.00, 22),
(16, 'Odisha', 'Bhubaneswar', 46460000, 155707, 'Odia', 73.5, 30, 100.00, '1936-04-01', 'Ganeshi Lal', 'Naveen Patnaik', 16, 34000.00, 27),
(17, 'Assam', 'Dispur', 31169272, 78438, 'Assamese', 73.2, 33, 60.00, '1947-08-15', 'Jagadish Mukhi', 'Himanta Biswa Sarma', 17, 32000.00, 15),
(18, 'Himachal Pradesh', 'Shimla', 6864602, 55673, 'Hindi', 82.8, 12, 50.00, '1971-01-25', 'Rajendra Vishwanath Arlekar', 'Jai Ram Thakur', 18, 35000.00, 12),
(19, 'Uttarakhand', 'Dehradun', 11260000, 53483, 'Hindi', 87.6, 13, 60.00, '2000-11-09', ' Gurmit Singh', 'Pushkar Singh Dhami', 19, 37000.00, 10),
(20, 'Sikkim', 'Gangtok', 610577, 7096, 'Nepali', 82.2, 4, 25.00, '1975-05-16', 'Ganga Prasad', 'Prem Singh Tamang', 20, 40000.00, 8);

DESC scam_info;

INSERT INTO scam_info (scam_id, scam_title, total_amount, people_involved, scam_year, associated_state, industry_sector, detection_date, fines_imposed, scam_summary, duration_days, conviction_percentage, media_attention, recovered_amount, current_status) VALUES
(1, 'Fake Investment Scheme', 5000000.00, 25, 2015, 'Maharashtra', 'Finance', '2016-02-15', 2000000.00, 'A fraudulent investment scheme promising high returns.', 180, 85.0, 'High', 1500000.00, 'Closed'),
(2, 'Land Acquisition Fraud', 3000000.00, 10, 2018, 'Karnataka', 'Real Estate', '2018-07-20', 1500000.00, 'Illegal land acquisition using forged documents.', 120, 75.0, 'Medium', 1000000.00, 'Ongoing'),
(3, 'Education Scam', 2000000.00, 8, 2020, 'Tamil Nadu', 'Education', '2020-11-10', 500000.00, 'Fraudulent admissions and fake degrees issued.', 90, 60.0, 'High', 700000.00, 'Resolved'),
(4, 'Bank Loan Fraud', 10000000.00, 40, 2017, 'Uttar Pradesh', 'Banking', '2018-03-25', 5000000.00, 'Embezzlement of funds from bank loans.', 365, 50.0, 'Very High', 2000000.00, 'Closed'),
(5, 'Insurance Fraud', 1500000.00, 15, 2019, 'West Bengal', 'Insurance', '2019-10-05', 750000.00, 'Fraudulent insurance claims made by multiple parties.', 150, 70.0, 'Medium', 400000.00, 'Ongoing'),
(6, 'Telecom Scam', 4000000.00, 30, 2016, 'Rajasthan', 'Telecommunications', '2016-09-30', 2000000.00, 'Scam involving inflated billing and fake charges.', 240, 80.0, 'High', 2500000.00, 'Resolved'),
(7, 'Medical Fraud', 2500000.00, 12, 2021, 'Gujarat', 'Healthcare', '2021-12-20', 1000000.00, 'Fake medical products and services provided.', 60, 90.0, 'Medium', 1500000.00, 'Closed'),
(8, 'Construction Scam', 3500000.00, 20, 2018, 'Punjab', 'Construction', '2019-02-10', 1200000.00, 'Defective construction and misappropriation of funds.', 150, 65.0, 'High', 1000000.00, 'Ongoing'),
(9, 'Commodity Trading Fraud', 5000000.00, 22, 2017, 'Haryana', 'Trading', '2017-08-15', 2000000.00, 'Manipulation of commodity prices and false trading.', 180, 55.0, 'Medium', 1800000.00, 'Resolved'),
(10, 'Retail Scam', 1000000.00, 18, 2019, 'Kerala', 'Retail', '2020-03-01', 500000.00, 'Fraudulent pricing and misrepresentation of products.', 90, 80.0, 'High', 700000.00, 'Closed'),
(11, 'Tax Evasion Scheme', 8000000.00, 28, 2020, 'Andhra Pradesh', 'Taxation', '2020-12-15', 3000000.00, 'Evasion of taxes through fake invoices and schemes.', 300, 65.0, 'High', 2500000.00, 'Ongoing'),
(12, 'Loan Forgery', 4500000.00, 10, 2018, 'Telangana', 'Banking', '2018-05-30', 1800000.00, 'Forgery of loan documents and misappropriation of funds.', 150, 55.0, 'Medium', 1200000.00, 'Resolved'),
(13, 'Fraudulent NGO', 2200000.00, 16, 2019, 'Bihar', 'Non-Profit', '2019-07-15', 800000.00, 'Fake NGO claims and misuse of donations.', 120, 70.0, 'High', 1000000.00, 'Closed'),
(14, 'Corporate Espionage', 7000000.00, 12, 2021, 'Jharkhand', 'Corporate', '2021-11-20', 2500000.00, 'Theft of confidential corporate information.', 180, 85.0, 'Very High', 3000000.00, 'Ongoing'),
(15, 'Energy Sector Scam', 6000000.00, 20, 2016, 'Chhattisgarh', 'Energy', '2017-04-15', 2000000.00, 'Fraudulent energy contracts and mismanagement of funds.', 365, 75.0, 'High', 1500000.00, 'Resolved'),
(16, 'Tourism Scam', 1200000.00, 8, 2018, 'Odisha', 'Tourism', '2018-08-25', 400000.00, 'Fraudulent travel packages and misrepresentation.', 90, 60.0, 'Medium', 500000.00, 'Closed'),
(17, 'IT Fraud', 3500000.00, 15, 2020, 'Assam', 'IT', '2020-10-15', 1500000.00, 'Fraudulent IT services and fake software sales.', 150, 70.0, 'High', 1000000.00, 'Ongoing'),
(18, 'Real Estate Fraud', 8000000.00, 25, 2017, 'Himachal Pradesh', 'Real Estate', '2017-12-01', 3000000.00, 'Fake property documents and illegal transactions.', 365, 60.0, 'Very High', 3500000.00, 'Closed'),
(19, 'Welfare Scam', 2000000.00, 10, 2021, 'Uttarakhand', 'Welfare', '2021-09-01', 700000.00, 'Misuse of welfare funds and fake beneficiaries.', 120, 75.0, 'Medium', 800000.00, 'Ongoing'),
(20, 'Small Business Fraud', 1500000.00, 12, 2019, 'Sikkim', 'Retail', '2019-11-10', 500000.00, 'Fraudulent business operations and fake invoices.', 90, 65.0, 'High', 600000.00, 'Resolved');

UPDATE state_info SET capital_city = 'Mumbai',income_avg = 60000.00 WHERE id = 1;
UPDATE state_info SET primary_language = 'Kannada',literacy_rate = 76.0 WHERE id = 2;
UPDATE state_info SET gdp_billion_usd = 265.00,formation_date = '1956-11-01' WHERE id = 3;
UPDATE state_info SET governor_name = 'Anandiben Patel',tourism_index = 5 WHERE id = 4;
UPDATE state_info SET income_avg = 34000.00,university_count = 44 WHERE id = 5;
UPDATE state_info SET land_area = 342000,number_of_districts = 35 WHERE id = 6;
UPDATE state_info SET literacy_rate = 78.5,income_avg = 48000.00 WHERE id = 7;
UPDATE state_info SET capital_city = 'Chandigarh',gdp_billion_usd = 130.00 WHERE id = 8;
UPDATE state_info SET tourism_index = 8,income_avg = 42000.00 WHERE id = 9;
UPDATE state_info SET gdp_billion_usd = 72.00, number_of_districts = 14 WHERE id = 10;

UPDATE scam_info SET scam_title = 'Fake Investment Scheme Updated', total_amount = 5500000.00 WHERE scam_id = 1;
UPDATE scam_info SET associated_state = 'Karnataka Updated',detection_date = '2018-08-15' WHERE scam_id = 2;
UPDATE scam_info SET scam_summary = 'Fraudulent admissions and fake degrees issued with altered documents.', recovered_amount = 750000.00 WHERE scam_id = 3;
UPDATE scam_info SET people_involved = 45, fines_imposed = 5500000.00 WHERE scam_id = 4;
UPDATE scam_info SET duration_days = 160, conviction_percentage = 72.0 WHERE scam_id = 5;
UPDATE scam_info SET media_attention = 'Very High',recovered_amount = 2600000.00 WHERE scam_id = 6;
UPDATE scam_info SET scam_title = 'Medical Fraud Updated', total_amount = 2700000.00 WHERE scam_id = 7;
UPDATE scam_info SET detection_date = '2019-03-01', fines_imposed = 1300000.00 WHERE scam_id = 8;
UPDATE scam_info SET scam_summary = 'Manipulation of commodity prices and false trading practices.', media_attention = 'High' WHERE scam_id = 9;
UPDATE scam_info SET associated_state = 'Kerala Updated', recovered_amount = 750000.00 WHERE scam_id = 10;

DELETE FROM state_info WHERE id = 1;
DELETE FROM state_info WHERE id = 2;
DELETE FROM state_info WHERE id = 3;

DELETE FROM scam_info WHERE scam_id = 1;
DELETE FROM scam_info WHERE scam_id = 2;
DELETE FROM scam_info WHERE scam_id = 3;

SELECT * FROM state_info WHERE population_total > 1000000 AND literacy_rate = 70;
SELECT * FROM scam_info WHERE scam_id = 10 AND total_amount = 7000000;

SELECT * FROM state_info WHERE capital_city='channi' OR land_area>12000;
SELECT * FROM scam_info WHERE total_amount > 1000000 OR scam_year > 2010;

SELECT * FROM state_info WHERE state_name IN ('Karnataka', 'Maharashtra', 'Telangana');
SELECT * FROM state_info WHERE state_name NOT IN ('goa', 'madhyapradesh');

SELECT * FROM scam_info WHERE scam_id IN (1,2,3,4);
SELECT * FROM scam_info WHERE scam_id NOT IN (21,24,34);







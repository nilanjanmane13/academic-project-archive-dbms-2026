USE project_archive;
INSERT INTO DOMAIN (Domain_Name, Description) VALUES
('Web Development', 'Web-based application development'),
('Artificial Intelligence', 'AI and machine learning projects'),
('Internet of Things', 'Connected devices and embedded systems'),
('Cyber Security', 'Security and data protection'),
('Data Science', 'Data analysis and visualization');

SELECT * FROM DOMAIN;

INSERT INTO GUIDE (Name, Email, Phone, Designation, Department) VALUES
('Dr. Mrunal Pathak', 'mrunal.pathak@example.com', '9304501901', 'Assistant Professor', 'Information Technology'),
('Dr. Amit Deshmukh', 'amit.deshmukh@example.com', '9674391222', 'Assistant Professor', 'Computer Engineering'),
('Dr. Priya Kulkarni', 'priya.kulkarni@example.com', '9000000003', 'Assistant Professor', 'ENTC'),
('Dr. Rahul Joshi', 'rahul.joshi@example.com', '9000000004', 'Assistant Professor', 'Information Technology'),
('Dr. Sneha Patil', 'sneha.patil@example.com', '9000000005', 'Assistant Professor', 'Instrumentation');

SELECT * FROM GUIDE;

INSERT INTO TECHNOLOGY (Tech_name, Category) VALUES
('JavaScript', 'Web Development'),
('Python', 'Programming Language'),
('MySQL', 'Database'),
('TensorFlow', 'Artificial Intelligence'),
('ESP32', 'IoT and Embedded Systems');

SELECT * FROM TECHNOLOGY;

INSERT INTO COMPETITION (Name, Theme, Start_date, End_date, Level, Organized_by, Year) VALUES
('IEEE SYNAPSE 2026', 'Technical hackathon open to students from different colleges','2026-10-09', '2026-10-09',
 'Inter-college', 'AISSMS IOIT ', 2026),
('Google Code Jam 2023', 'International programming and algorithmic problem solving', '2023-04-15', '2023-04-15',
 'International', 'Google', 2023),
('Smart India Hackathon','Innovation and solutions for real-world problems','2022-12-08', '2022-12-12',
 'National', 'Ministry of Education Innovation Cell', 2022),
('ACM ICPC','Competitive programming and algorithmic problem solving','2025-11-01', '2025-11-01',
 'International', 'ICPC', 2025),
('HackMIT','Software innovation and technology development','2024-09-13', '2024-09-15',
 'National', 'MIT', 2024);
 
 SELECT * FROM COMPETITION;
 
 INSERT INTO STUDENT (Name, Email, Phone, Enroll_No, `Year`, Department, Date_Of_Joining) VALUES
('Nilanjan Mane', 'nilanjan.m@example.com', '9876543212', 'EN2025001', 2, 'IT', '2025-08-01'),
('Lokesh Patil', 'lokesh.patil@example.com', '9765432187', 'EN2025002', 2, 'IT', '2025-08-07'),
('Rahul Deshmukh', 'rahul.deshmukh@example.com', '9867123458', 'EN2023003', 4, 'ENTC', '2023-07-23'),
('Varad Jamdar', 'varad.j@example.com', '9786123459', 'EN2025004', 2, 'IT', '2025-08-23'),
('Karan Joshi', 'karan.joshi@example.com', '9891234567', 'EN2024005', 3, 'COMP', '2024-09-16');

SELECT * FROM STUDENT;

INSERT INTO TEAM (Team_Name, Joined_On, Created_On)VALUES
('Tech Titans', '2023-08-15', '2023-08-10'),
('Code Warriors', '2024-07-20', '2024-07-12'),
('InnovateX', '2025-08-18', '2025-08-05'),
('Byte Builders', '2026-01-15', '2025-12-20'),
('Quantum Coders', '2026-07-10', '2026-06-25');

SELECT * FROM TEAM;

UPDATE DOMAIN SET Domain_Id = 401 WHERE Domain_Id = 1;
UPDATE DOMAIN SET Domain_Id = 402 WHERE Domain_Id = 2;
UPDATE DOMAIN SET Domain_Id = 403 WHERE Domain_Id = 3;
UPDATE DOMAIN SET Domain_Id = 404 WHERE Domain_Id = 4;
UPDATE DOMAIN SET Domain_Id = 405 WHERE Domain_Id = 5;

UPDATE GUIDE SET Guide_Id = 501 WHERE Guide_Id = 1;
UPDATE GUIDE SET Guide_Id = 502 WHERE Guide_Id = 2;
UPDATE GUIDE SET Guide_Id = 503 WHERE Guide_Id = 3;
UPDATE GUIDE SET Guide_Id = 504 WHERE Guide_Id = 4;
UPDATE GUIDE SET Guide_Id = 505 WHERE Guide_Id = 5;

SELECT Domain_Id, Domain_Name FROM Domain;
SELECT Guide_Id, Name FROM Guide;

UPDATE TECHNOLOGY SET Tech_id = 601 WHERE Tech_id = 1;
UPDATE TECHNOLOGY SET Tech_id = 602 WHERE Tech_id = 2;
UPDATE TECHNOLOGY SET Tech_id = 603 WHERE Tech_id = 3;
UPDATE TECHNOLOGY SET Tech_id = 604 WHERE Tech_id = 4;
UPDATE TECHNOLOGY SET Tech_id = 605 WHERE Tech_id = 5;
SELECT Tech_id, Tech_name FROM TECHNOLOGY;

UPDATE COMPETITION SET Competition_id = 701 WHERE Competition_id = 1;
UPDATE COMPETITION SET Competition_id = 702 WHERE Competition_id = 2;
UPDATE COMPETITION SET Competition_id = 703 WHERE Competition_id = 3;
UPDATE COMPETITION SET Competition_id = 704 WHERE Competition_id = 4;
UPDATE COMPETITION SET Competition_id = 705 WHERE Competition_id = 5;
SELECT Competition_id, Name FROM COMPETITION;

UPDATE STUDENT SET Student_Id = 101 WHERE Student_Id = 1;
UPDATE STUDENT SET Student_Id = 102 WHERE Student_Id = 2;
UPDATE STUDENT SET Student_Id = 103 WHERE Student_Id = 3;
UPDATE STUDENT SET Student_Id = 104 WHERE Student_Id = 4;
UPDATE STUDENT SET Student_Id = 105 WHERE Student_Id = 5;
SELECT Student_Id, Name FROM STUDENT;

UPDATE TEAM SET Team_Id = 201 WHERE Team_Id = 1;
UPDATE TEAM SET Team_Id = 202 WHERE Team_Id = 2;
UPDATE TEAM SET Team_Id = 203 WHERE Team_Id = 3;
UPDATE TEAM SET Team_Id = 204 WHERE Team_Id = 4;
UPDATE TEAM SET Team_Id = 205 WHERE Team_Id = 5;
SELECT Team_Id, Team_Name FROM TEAM;

SELECT * FROM MEMBER_OF;
SELECT * FROM WORKS_ON;
SELECT * FROM USES;
SELECT * FROM PARTICIPATES_IN;

INSERT INTO PROJECT (Project_Id, Title, Description, Start_Date, End_Date, Status, 
Domain_Id, Guide_Id, Abstract, Github_url, Project_type)
VALUES
(301, 'Academic Project Archive System', 'A database system to store and manage academic projects', '2026-10-18', NULL, 'In Progress', 401, 501,
 'A centralized archive for storing student projects, guides, technologies and competitions',
 'https://github.com/Yasasri26/student-performance-prediction', 'DBMS Project'),

(302, 'Student Performance Prediction System', 'Predicts student performance using academic data',
 '2024-01-10', '2024-04-20', 'Completed',402, 502,
 'Uses student academic information to study performance patterns',
 'https://github.com/bhavna70/student-performance-prediction', 'Machine Learning'),

(303, 'IoT Smart Farm Monitoring System', 'Monitors farm conditions using connected sensors',
 '2023-02-01', '2023-05-15', 'Completed', 403, 503,
 'An IoT-based system for monitoring agricultural conditions',
 'https://github.com/bigphu/iot-smart-farm','IoT'),

(304, 'Data Analysis Portfolio',
 'Analyzes datasets and presents useful findings',
 '2025-03-01', '2025-06-15', 'Completed', 405, 504,
 'A project demonstrating data analysis and visualization techniques',
 'https://github.com/nehalbk/Data-Analysis', 'Data Analytics'),

(305, 'Secure Student Record Management',
 'Manages student records with a focus on data security',
 '2026-07-01', NULL, 'In Progress', 404, 505,
 'A system concept for managing academic records securely',
 'https://github.com/search?q=secure+student+record+management&type=repositories', 'Cybersecurity');
 
SELECT Project_Id, Title, Domain_Id, Guide_Id, Github_url
FROM PROJECT;

INSERT INTO DOCUMENT
(Doc_Id, File_Name, File_Type, File_Path, Uploaded_On, Project_Id) VALUES
(801, 'Project_Archive_Report.pdf', 'PDF',
 'documents/project_archive_report.pdf', '2026-10-20', 301),
(802, 'Student_Performance_Report.pdf', 'PDF',
 'documents/student_performance_report.pdf', '2026-04-20', 302),
(803, 'Smart_Farm_Documentation.pdf', 'PDF',
 'documents/smart_farm_documentation.pdf', '2026-05-15', 303),
(804, 'Data_Analysis_Report.xlsx', 'XLSX',
 'documents/data_analysis_report.xlsx', '2026-06-15', 304),
(805, 'Secure_Records_Design.pdf', 'PDF',
 'documents/secure_records_design.pdf', '2026-10-20', 305);
 
SELECT Doc_Id, File_Name, Project_Id
FROM DOCUMENT;

INSERT INTO REVIEW
(Review_Id, Rating, Review_Text, Reviewed_On, Reviewed_By, Project_Id) VALUES
(901, 5, 'Well structured database design with clear relationships',
 '2026-10-20', 'Ananya Desai', 301),
(902, 4, 'Good approach to student performance prediction',
 '2026-04-20', 'Rohan Mehta', 302),
(903, 5, 'Useful application of IoT for farm monitoring',
 '2026-05-15', 'Kavya Shah', 303),
(904, 4, 'Clear analysis and presentation of data',
 '2026-06-15', 'Arjun Kulkarni', 304),
(905, 4, 'Good focus on secure academic record management',
 '2026-10-20', 'Meera Joshi', 305);
 
INSERT INTO MEMBER_OF (Student_Id, Team_Id, Role)
VALUES
(101, 201, 'Team Leader'),
(102, 202, 'Team Leader'),
(103, 203, 'Team Leader'),
(104, 204, 'Team Leader'),
(105, 205, 'Team Leader');

SELECT * FROM MEMBER_OF;

INSERT INTO WORKS_ON (Team_Id, Project_Id)
VALUES
(201, 304),
(202, 302),
(203, 303),
(204, 305),
(205, 301);

SELECT * FROM WORKS_ON;

INSERT INTO USES
(Project_Id, Tech_id)
VALUES
(301, 603),
(302, 604),
(303, 605),
(304, 602),
(305, 601);

SELECT * FROM USES;

 INSERT INTO PARTICIPATES_IN
(Project_Id, Competition_id, Result, Competition_Rank, Award)
VALUES
(301, 701, 'Winner', 1, 'INR 100000 Cash Prize'),
(302, 702, 'Runner-up', 2, 'INR 45000 Cash Prize'),
(303, 703, 'Participant', 7 , NULL),
(304, 704, 'Winner', 1, 'INR 67000 Cash Prize'),
(305, 705, 'Participant', 4 , NULL);

-- Adding Extra records
-- Insert 45 additional domains
-- Domain Table
INSERT INTO DOMAIN (Domain_Name, Description) VALUES
('Cloud Computing', 'Cloud infrastructure and cloud-based applications'),
('Mobile App Development', 'Development of applications for mobile devices'),
('Blockchain Technology', 'Decentralized systems and blockchain applications'),
('Robotics', 'Robotic systems and automation'),
('Augmented Reality', 'Applications using augmented reality'),
('Virtual Reality', 'Immersive virtual reality applications'),
('Natural Language Processing', 'Processing and understanding human language'),
('Computer Vision', 'Analysis and interpretation of images and videos'),
('Data Mining', 'Discovering patterns in large datasets'),
('Big Data Analytics', 'Analysis of large and complex datasets'),
('DevOps', 'Software development and deployment automation'),
('Software Testing', 'Software quality assurance and testing'),
('UI UX Design', 'User interface and user experience design'),
('Game Development', 'Development of computer and mobile games'),
('E-Commerce', 'Online shopping and digital commerce systems'),
('Financial Technology', 'Technology-based financial applications'),
('Health Informatics', 'Information systems for healthcare'),
('Educational Technology', 'Technology-based educational solutions'),
('Agricultural Technology', 'Technology solutions for agriculture'),
('Smart City Systems', 'Technology for improving urban infrastructure'),
('Geographic Information Systems', 'Geographical data mapping and analysis'),
('Renewable Energy Systems', 'Technology for renewable energy management'),
('Embedded Systems', 'Dedicated computer systems embedded in devices'),
('Computer Networks', 'Communication networks and network infrastructure'),
('Distributed Systems', 'Systems operating across multiple computers'),
('Operating Systems', 'Operating system design and management'),
('Database Management', 'Database design, storage and management'),
('Information Retrieval', 'Searching and retrieving relevant information'),
('Recommendation Systems', 'Systems that recommend relevant items'),
('Speech Processing', 'Processing and recognition of speech'),
('Bioinformatics', 'Computational analysis of biological data'),
('Computational Biology', 'Computational methods for biological research'),
('Digital Forensics', 'Investigation and analysis of digital evidence'),
('Network Security', 'Protection of computer networks'),
('Cryptography', 'Secure communication and encryption techniques'),
('Privacy Engineering', 'Designing systems that protect personal information'),
('Human Computer Interaction', 'Interaction between people and computer systems'),
('Business Intelligence', 'Data-driven business reporting and decision support'),
('Predictive Analytics', 'Using data to predict future outcomes'),
('Edge Computing', 'Processing data near its source'),
('Quantum Computing', 'Computing based on quantum principles'),
('Autonomous Systems', 'Systems that operate with limited human intervention'),
('Supply Chain Analytics', 'Data analysis for supply chain operations'),
('Social Network Analysis', 'Analysis of relationships within social networks'),
('Accessibility Technology', 'Technology that improves digital accessibility');
SELECT * FROM DOMAIN;
SELECT COUNT(*) AS Total_Domains
FROM DOMAIN;

-- Guide Table

INSERT INTO GUIDE
(Name, Email, Phone, Designation, Department) VALUES
('Dr. Pritesh Patil', 'pritesh.patil26@sample.edu', '9876543211', 'Associate Professor', 'IT'),
('Dr. Rohan Desai', 'rohan.desai26@sample.edu', '8765432191', 'Assistant Professor', 'Computer'),
('Dr. Harshada Magar', 'harshada.magar26@sample.edu', '9876543212', 'Assistant Professor', 'IT'),
('Prof. Anjali Kulkarni', 'anjali.kulkarni26@sample.edu', '7654321981', 'Assistant Professor', 'AI&DS'),
('Dr. Meenakshi Thalor', 'meenakshi.thalor26@sample.edu', '8765432192', 'Associate Professor', 'IT'),
('Prof. Kunal Joshi', 'kunal.joshi26@sample.edu', '9876543213', 'Assistant Professor', 'E&TC'),
('Prof. Jayshree Pasalkar', 'jayshree.pasalkar26@sample.edu', '7654321982', 'Assistant Professor', 'IT'),
('Dr. Sagar Pawar', 'sagar.pawar26@sample.edu', '8765432193', 'Associate Professor', 'Electrical'),
('Prof. Gunjan Ukalkar', 'gunjan.ukalkar26@sample.edu', '9876543214', 'Assistant Professor', 'IT'),
('Dr. Neha Shinde', 'neha.shinde26@sample.edu', '7654321983', 'Assistant Professor', 'Instrumentation'),
('Dr. Neeta Moolani', 'neeta.moolani26@sample.edu', '8765432194', 'Associate Professor', 'IT'),
('Dr. Amit Bhosale', 'amit.bhosale26@sample.edu', '9876543215', 'Assistant Professor', 'Computer'),
('Dr. Pragati Mahale', 'pragati.mahale26@sample.edu', '7654321984', 'Assistant Professor', 'IT'),
('Prof. Siddharth More', 'siddharth.more26@sample.edu', '8765432195', 'Assistant Professor', 'AI&DS'),
('Dr. Kavita Jadhav', 'kavita.jadhav26@sample.edu', '9876543216', 'Associate Professor', 'E&TC'),
('Prof. Nikhil Chavan', 'nikhil.chavan26@sample.edu', '7654321985', 'Assistant Professor', 'Computer'),
('Dr. Swati Gokhale', 'swati.gokhale26@sample.edu', '8765432196', 'Assistant Professor', 'Instrumentation'),
('Prof. Akshay Pawale', 'akshay.pawale26@sample.edu', '9876543217', 'Assistant Professor', 'IT'),
('Dr. Manisha Shinde', 'manisha.shinde26@sample.edu', '7654321986', 'Associate Professor', 'Electrical'),
('Prof. Rahul Wagh', 'rahul.wagh26@sample.edu', '8765432197', 'Assistant Professor', 'AI&DS'),
('Dr. Snehal Patwardhan', 'snehal.patwardhan26@sample.edu', '9876543218', 'Assistant Professor', 'Computer'),
('Prof. Pranav Kulkarni', 'pranav.kulkarni26@sample.edu', '7654321987', 'Associate Professor', 'E&TC'),
('Dr. Rutuja Deshmukh', 'rutuja.deshmukh26@sample.edu', '8765432198', 'Assistant Professor', 'IT'),
('Prof. Mahesh Gaikwad', 'mahesh.gaikwad26@sample.edu', '9876543219', 'Assistant Professor', 'Instrumentation'),
('Dr. Pooja Kshirsagar', 'pooja.kshirsagar26@sample.edu', '7654321988', 'Associate Professor', 'AI&DS'),
('Prof. Amol Jagtap', 'amol.jagtap26@sample.edu', '8765432199', 'Assistant Professor', 'Electrical'),
('Dr. Shweta Ranade', 'shweta.ranade26@sample.edu', '9876543221', 'Assistant Professor', 'Computer'),
('Prof. Varun Salunkhe', 'varun.salunkhe26@sample.edu', '7654321989', 'Assistant Professor', 'IT'),
('Dr. Ashwini Pawar', 'ashwini.pawar26@sample.edu', '8765432211', 'Associate Professor', 'E&TC'),
('Prof. Tejas Patil', 'tejas.patil26@sample.edu', '9876543222', 'Assistant Professor', 'AI&DS'),
('Dr. Madhuri Kale', 'madhuri.kale26@sample.edu', '7654321991', 'Assistant Professor', 'Instrumentation'),
('Prof. Omkar Joshi', 'omkar.joshi26@sample.edu', '8765432212', 'Assistant Professor', 'Computer'),
('Dr. Vaishali More', 'vaishali.more26@sample.edu', '9876543223', 'Associate Professor', 'IT'),
('Prof. Nitin Bhandari', 'nitin.bhandari26@sample.edu', '7654321992', 'Assistant Professor', 'Electrical'),
('Dr. Prajakta Sawant', 'prajakta.sawant26@sample.edu', '8765432213', 'Assistant Professor', 'AI&DS'),
('Prof. Shrikant Pawar', 'shrikant.pawar26@sample.edu', '9876543224', 'Associate Professor', 'E&TC'),
('Dr. Deepa Choudhari', 'deepa.choudhari26@sample.edu', '7654321993', 'Assistant Professor', 'Computer'),
('Prof. Yash Deshmukh', 'yash.deshmukh26@sample.edu', '8765432214', 'Assistant Professor', 'Instrumentation'),
('Dr. Archana Shinde', 'archana.shinde26@sample.edu', '9876543225', 'Associate Professor', 'IT'),
('Prof. Chetan Aher', 'chetan.more26@sample.edu', '7654321994', 'Assistant Professor', 'Comp'),
('Dr. Komal Bhosale', 'komal.bhosale26@sample.edu', '8765432215', 'Assistant Professor', 'AI&DS'),
('Prof. Sameer Kulkarni', 'sameer.kulkarni26@sample.edu', '9876543226', 'Associate Professor', 'Computer'),
('Dr. Renuka Pawar', 'renuka.pawar26@sample.edu', '7654321995', 'Assistant Professor', 'E&TC'),
('Prof. Ajit Shinde', 'ajit.shinde26@sample.edu', '8765432216', 'Assistant Professor', 'Instrumentation'),
('Dr. Sonali Jadhav', 'sonali.jadhav26@sample.edu', '9876543227', 'Associate Professor', 'IT');
SELECT COUNT(*) AS Total_Guides
FROM GUIDE;
SELECT * FROM GUIDE;

-- Technology Table Records
-- Insert 45 additional technologies

INSERT INTO TECHNOLOGY (Tech_name, Category) VALUES
('HTML', 'Web Development'),
('CSS', 'Web Development'),
('React', 'Frontend Framework'),
('Angular', 'Frontend Framework'),
('Vue.js', 'Frontend Framework'),
('Node.js', 'Backend Development'),
('Express.js', 'Backend Framework'),
('TypeScript', 'Programming Language'),
('PHP', 'Programming Language'),
('ASP.NET', 'Web Development'),
('Java', 'Programming Language'),
('C', 'Programming Language'),
('C++', 'Programming Language'),
('C#', 'Programming Language'),
('Kotlin', 'Mobile Development'),
('Swift', 'Mobile Development'),
('Dart', 'Programming Language'),
('Flutter', 'Mobile Development'),
('React Native', 'Mobile Development'),
('Android SDK', 'Mobile Development'),
('Spring Boot', 'Backend Framework'),
('Django', 'Backend Framework'),
('Flask', 'Backend Framework'),
('Laravel', 'Backend Framework'),
('PostgreSQL', 'Database'),
('MongoDB', 'Database'),
('Oracle Database', 'Database'),
('Microsoft SQL Server', 'Database'),
('Redis', 'Database'),
('Firebase', 'Cloud Database'),
('AWS', 'Cloud Computing'),
('Microsoft Azure', 'Cloud Computing'),
('Google Cloud Platform', 'Cloud Computing'),
('Docker', 'DevOps'),
('Kubernetes', 'DevOps'),
('Git', 'Version Control'),
('GitHub', 'Version Control'),
('Jenkins', 'DevOps'),
('Linux', 'Operating System'),
('OpenCV', 'Computer Vision'),
('PyTorch', 'Artificial Intelligence'),
('Scikit-learn', 'Machine Learning'),
('Apache Hadoop', 'Big Data'),
('Apache Spark', 'Big Data'),
('Arduino', 'IoT and Embedded Systems');
SELECT COUNT(*) AS Total_Technologies
FROM TECHNOLOGY;
SELECT * FROM TECHNOLOGY;

-- Competition Record
-- Insert 45 additional competitions

INSERT INTO COMPETITION
(Name, Theme, Start_date, End_date, Level, Organized_by, Year)
VALUES
('CodeSprint 2025', 'Competitive programming and problem solving', '2025-01-15', '2025-01-16', 'Inter-college', 'AISSMS IOIT', 2025),
('AI Innovation Challenge', 'Artificial intelligence and machine learning', '2024-02-10', '2024-02-12', 'National', 'Tech Innovation Forum', 2024),
('RoboTech Challenge', 'Robotics and automation', '2025-03-05', '2025-03-06', 'Inter-college', 'Engineering Technology Club', 2025),
('Cloud Computing Summit Challenge', 'Cloud computing solutions', '2023-04-12', '2023-04-13', 'National', 'Cloud Computing Forum', 2023),
('CyberSecure Hackathon', 'Cybersecurity and secure applications', '2026-01-20', '2026-01-21', 'National', 'Cyber Security Association', 2026),
('Web Development Contest', 'Innovative web application development', '2024-05-10', '2024-05-10', 'College-level', 'Computer Engineering Club', 2024),
('IoT Buildathon', 'Internet of Things and smart devices', '2025-06-14', '2025-06-15', 'Inter-college', 'Embedded Systems Society', 2025),
('Data Science Challenge', 'Data analysis and predictive modelling', '2023-07-08', '2023-07-09', 'National', 'Data Science Forum', 2023),
('Mobile App Innovation Cup', 'Mobile application development', '2024-08-17', '2024-08-18', 'Inter-college', 'Mobile Developers Association', 2024),
('GreenTech Hackathon', 'Technology for environmental sustainability', '2025-09-06', '2025-09-07', 'National', 'Green Technology Council', 2025),
('Blockchain Innovation Challenge', 'Blockchain applications and distributed systems', '2023-10-14', '2023-10-15', 'International', 'Digital Innovation Forum', 2023),
('Smart Campus Challenge', 'Digital solutions for campus management', '2026-02-07', '2026-02-08', 'Inter-college', 'AISSMS IOIT', 2026),
('GameDev Competition', 'Game design and development', '2024-03-16', '2024-03-17', 'College-level', 'Game Developers Club', 2024),
('FinTech Innovation Challenge', 'Financial technology and digital payments', '2025-04-19', '2025-04-20', 'National', 'Financial Technology Forum', 2025),
('HealthTech Hackathon', 'Digital healthcare solutions', '2023-05-13', '2023-05-14', 'National', 'Healthcare Innovation Council', 2023),
('AgriTech Challenge', 'Technology for smart agriculture', '2024-06-22', '2024-06-23', 'Inter-college', 'Agricultural Technology Forum', 2024),
('Open Source Contribution Challenge', 'Open-source software development', '2025-07-12', '2025-07-13', 'International', 'Open Source Community', 2025),
('Robotics Design League', 'Robotic design and intelligent automation', '2026-03-14', '2026-03-15', 'Inter-college', 'Robotics Innovation Club', 2026),
('Big Data Analytics Contest', 'Large-scale data processing and analytics', '2023-08-19', '2023-08-20', 'International', 'Big Data Research Forum', 2023),
('UI UX Design Challenge', 'Accessible and user-friendly interface design', '2024-09-21', '2024-09-22', 'College-level', 'Design and Technology Club', 2024),
('Autonomous Systems Challenge', 'Intelligent and autonomous systems', '2025-10-11', '2025-10-12', 'National', 'Autonomous Systems Forum', 2025),
('E-Governance Innovation Contest', 'Digital public service solutions', '2023-11-18', '2023-11-19', 'National', 'Digital Governance Forum', 2023),
('EdTech Innovation Cup', 'Technology-enhanced learning', '2024-12-07', '2024-12-08', 'Inter-college', 'Education Technology Club', 2024),
('AR VR Development Challenge', 'Augmented and virtual reality applications', '2025-02-15', '2025-02-16', 'International', 'Immersive Technology Forum', 2025),
('Women in Technology Hackathon', 'Inclusive technology and digital innovation', '2026-04-11', '2026-04-12', 'National', 'Technology Community Forum', 2026),
('Smart Energy Challenge', 'Energy monitoring and efficiency', '2023-03-18', '2023-03-19', 'Inter-college', 'Energy Innovation Club', 2023),
('Digital Forensics Challenge', 'Digital investigation and evidence analysis', '2024-04-13', '2024-04-14', 'National', 'Digital Security Forum', 2024),
('Machine Learning Sprint', 'Machine learning models and applications', '2025-05-17', '2025-05-18', 'International', 'Machine Learning Community', 2025),
('Database Design Contest', 'Database design and query optimization', '2026-06-13', '2026-06-13', 'College-level', 'Database Systems Club', 2026),
('Startup Idea Challenge', 'Technology entrepreneurship and innovation', '2023-09-09', '2023-09-10', 'National', 'Startup Innovation Forum', 2023),
('Network Security Contest', 'Secure network design and monitoring', '2024-10-19', '2024-10-20', 'Inter-college', 'Network Security Club', 2024),
('Python Programming Cup', 'Programming fundamentals and algorithms', '2025-11-08', '2025-11-09', 'College-level', 'Programming Club', 2025),
('Smart Transportation Hackathon', 'Intelligent mobility and traffic management', '2026-07-18', '2026-07-19', 'National', 'Urban Technology Forum', 2026),
('Predictive Analytics Challenge', 'Forecasting and data-driven decisions', '2023-12-02', '2023-12-03', 'International', 'Analytics Research Forum', 2023),
('Assistive Technology Contest', 'Accessible technology for everyday life', '2024-01-20', '2024-01-21', 'National', 'Assistive Technology Forum', 2024),
('Embedded Systems Challenge', 'Microcontrollers and embedded applications', '2025-08-16', '2025-08-17', 'Inter-college', 'Embedded Innovation Club', 2025),
('Digital Learning Hackathon', 'Interactive digital education tools', '2026-08-08', '2026-08-09', 'Inter-college', 'Education Innovation Forum', 2026),
('Computer Vision Challenge', 'Image processing and visual recognition', '2023-02-11', '2023-02-12', 'International', 'Computer Vision Forum', 2023),
('Software Testing Challenge', 'Software quality and automated testing', '2024-07-13', '2024-07-14', 'College-level', 'Software Quality Club', 2024),
('Rural Innovation Hackathon', 'Technology solutions for rural communities', '2025-12-06', '2025-12-07', 'National', 'Rural Innovation Forum', 2025),
('Quantum Computing Challenge', 'Quantum algorithms and computing concepts', '2026-09-12', '2026-09-13', 'International', 'Quantum Technology Forum', 2026),
('Digital Twin Innovation Contest', 'Digital twins and simulation systems', '2023-06-17', '2023-06-18', 'National', 'Simulation Technology Forum', 2023),
('E-Waste Management Challenge', 'Technology for electronic waste management', '2024-11-16', '2024-11-17', 'Inter-college', 'Environmental Technology Club', 2024),
('Natural Language Processing Challenge', 'Text processing and language applications', '2025-03-22', '2025-03-23', 'International', 'Language Technology Forum', 2025),
('Innovation Expo Challenge', 'Student projects and emerging technologies', '2026-10-17', '2026-10-18', 'Inter-college', 'Engineering Innovation Forum', 2026);
SELECT * FROM COMPETITION
ORDER BY Competition_id;

-- Student Records
INSERT INTO STUDENT
(Name, Email, Phone, Enroll_No, Year, Department, Date_Of_Joining)
VALUES
('Varun Labade', 'varun.labade@example.com', '9834567123', 'EN2025006', 2, 'IT', '2025-08-11'),
('Rahul Pawar', 'rahul.pawar@example.com', '9823456713', 'EN2023006', 4, 'COMP', '2023-07-19'),
('Sneha Shinde', 'sneha.shinde@example.com', '9845671234', 'EN2024006', 3, 'ENTC', '2024-08-02'),
('Deep Rathi', 'deep.rathi@example.com', '9856712345', 'EN2025007', 2, 'IT', '2025-08-06'),
('Aditya More', 'aditya.more@example.com', '9861234571', 'EN2023007', 4, 'IT', '2023-08-01'),
('Krushna Kapse', 'krushna.kapse@example.com', '9871234561', 'EN2025008', 2, 'IT', '2025-08-15'),
('Ananya Joshi', 'ananya.joshi@example.com', '9881234561', 'EN2024007', 3, 'AI&DS', '2024-08-12'),
('Meera Salunkhe', 'meera.salunkhe@example.com', '9891234562', 'EN2023008', 4, 'COMP', '2023-08-14'),
('Karan Masmar', 'karan.masmar@example.com', '9891234561', 'EN2025009', 2, 'IT', '2025-08-18'),
('Sujal Jadhav', 'sujal.jadhav@example.com', '9812345672', 'EN2025010', 2, 'IT', '2025-08-21'),
('Siddharth Nikam', 'siddharth.nikam@example.com', '9823456714', 'EN2024008', 3, 'ENTC', '2024-08-05'),
('Piyush Jagtap', 'piyush.jagtap@example.com', '9834567124', 'EN2025011', 2, 'IT', '2025-08-09'),
('Vivek Bhosale', 'vivek.bhosale@example.com', '9891234563', 'EN2023009', 4, 'AI&DS', '2023-08-08'),
('Avani Morankar', 'avani.morankar@example.com', '9845671235', 'EN2025012', 2, 'IT', '2025-08-25'),
('Pranav Gaikwad', 'pranav.gaikwad@example.com', '9871234563', 'EN2024009', 3, 'IT', '2024-07-29'),
('Shaurya Kasegaonkar', 'shaurya.k@example.com', '9861234572', 'EN2025013', 2, 'IT', '2025-08-14'),
('Tanvi Gokhale', 'tanvi.gokhale@example.com', '9812345674', 'EN2023010', 4, 'IT', '2023-07-27'),
('Shreya Mane', 'shreya.mane@example.com', '9871234562', 'EN2025014', 2, 'IT', '2025-08-28'),
('Rohan Chavan', 'rohan.chavan@example.com', '9856712346', 'EN2024010', 3, 'COMP', '2024-08-19'),
('Paras Doshi', 'paras.doshi@example.com', '9881234562', 'EN2025015', 2, 'IT', '2025-08-17'),
('Ishita Desai', 'ishita.desai@example.com', '9823456715', 'EN2023011', 4, 'ENTC', '2023-07-25'),
('Mohan Jadhav', 'mohan.jadhav@example.com', '9812345673', 'EN2025016', 2, 'IT', '2025-08-05'),
('Pratiksha Kale', 'pratiksha.kale@example.com', '9861234575', 'EN2024011', 3, 'COMP', '2024-08-16'),
('Lisha Khairnar', 'lisha.khairnar@example.com', '9823456716', 'EN2025017', 2, 'IT', '2025-08-20'),
('Nikhil Shinde', 'nikhil.shinde@example.com', '9845671237', 'EN2023012', 4, 'IT', '2023-08-17'),
('Mrunmai Chitale', 'mrunmai.chitale@example.com', '9834567125', 'EN2025018', 2, 'IT', '2025-08-13'),
('Sanket Patil', 'sanket.patil@example.com', '9861234574', 'EN2024012', 3, 'AI&DS', '2024-07-31'),
('Om Kedar', 'om.kedar@example.com', '9845671236', 'EN2025019', 2, 'IT', '2025-08-22'),
('Rutuja Pawar', 'rutuja.pawar@example.com', '9834567126', 'EN2023013', 4, 'AI&DS', '2023-08-03'),
('Srujal Kalbhor', 'srujal.kalbhor@example.com', '9856712347', 'EN2025020', 2, 'IT', '2025-08-07'),
('Atharva Khot', 'atharva.khot@example.com', '9823456717', 'EN2024013', 3, 'COMP', '2024-08-21'),
('Janhavi Madre', 'janhavi.madre@example.com', '9861234573', 'EN2025021', 2, 'IT', '2025-08-26'),
('Pooja Wagh', 'pooja.wagh@example.com', '9856712348', 'EN2023014', 4, 'ENTC', '2023-08-17'),
('Yash Nimbalkar', 'yash.nimbalkar@example.com', '9881234564', 'EN2024014', 3, 'ENTC', '2024-08-09'),
('Omkar Shirole', 'omkar.shirole@example.com', '9812345675', 'EN2023015', 4, 'COMP', '2023-08-10'),
('Neha Kumbhar', 'neha.kumbhar@example.com', '9823456718', 'EN2024015', 3, 'AI&DS', '2024-08-06'),
('Akash Salve', 'akash.salve@example.com', '9834567127', 'EN2023016', 4, 'IT', '2023-08-12'),
('Manasi Deshpande', 'manasi.deshpande@example.com', '9845671238', 'EN2024016', 3, 'ENTC', '2024-08-23'),
('Chaitanya More', 'chaitanya.more@example.com', '9856712349', 'EN2023017', 4, 'AI&DS', '2023-07-30'),
('Pratiksha Patil', 'pratiksha.patil@example.com', '9861234576', 'EN2024017', 3, 'IT', '2024-08-07'),
('Soham Babar', 'soham.babar@example.com', '9871234565', 'EN2023018', 4, 'COMP', '2023-08-19'),
('Vaishnavi Pawar', 'vaishnavi.pawar@example.com', '9881234565', 'EN2024018', 3, 'ENTC', '2024-08-26'),
('Rupak Mahajan', 'rupak.mahajan@example.com', '9891234565', 'EN2025019', 4, 'COMP', '2025-09-28'),
('Aditi Kulkarni', 'aditi.kulkarni@example.com', '9812345676', 'EN2024020', 3, 'IT', '2024-08-15'),
('Kunal Deshmukh', 'kunal.deshmukh@example.com', '9823456719', 'EN2023020', 4, 'AI&DS', '2023-08-22');

SELECT Student_Id, Name, Year
FROM STUDENT
WHERE Student_Id = 148;

UPDATE STUDENT
SET Year = 2
WHERE Student_Id = 148;

SELECT * FROM STUDENT
ORDER BY Student_Id;

-- Team Record
INSERT INTO TEAM (Team_Name, Joined_On, Created_On)
VALUES
('Code Crafters', '2023-09-12', '2023-09-01'),
('Pixel Pioneers', '2025-08-20', '2025-08-10'),
('Logic Legends', '2024-07-18', '2024-07-05'),
('Data Dynamos', '2026-07-15', '2026-06-28'),
('Tech Mavericks', '2023-10-20', '2023-10-05'),
('Binary Beasts', '2025-09-14', '2025-09-01'),
('Digital Dreamers', '2024-08-22', '2024-08-10'),
('Cloud Chasers', '2026-08-12', '2026-07-25'),
('Syntax Squad', '2023-11-15', '2023-11-02'),
('Cyber Sentinels', '2025-10-18', '2025-10-01'),
('AI Explorers', '2024-09-16', '2024-09-01'),
('Future Founders', '2026-05-20', '2026-05-05'),
('Quantum Sparks', '2023-12-12', '2023-12-01'),
('Byte Bandits', '2025-07-25', '2025-07-10'),
('Code Comets', '2024-10-19', '2024-10-03'),
('Robo Rangers', '2026-09-10', '2026-08-20'),
('Web Wizards', '2023-08-28', '2023-08-15'),
('Data Detectives', '2025-11-12', '2025-11-01'),
('Tech Trailblazers', '2024-11-20', '2024-11-05'),
('Innovation Hub', '2026-04-18', '2026-04-01'),
('Neural Ninjas', '2023-09-25', '2023-09-10'),
('Digital Dragons', '2025-12-15', '2025-12-01'),
('Algorithm Aces', '2024-12-10', '2024-12-01'),
('Cloud Commanders', '2026-06-22', '2026-06-05'),
('Circuit Breakers', '2023-10-28', '2023-10-12'),
('App Architects', '2025-08-30', '2025-08-15'),
('Cyber Knights', '2024-07-28', '2024-07-10'),
('Vision Voyagers', '2026-08-25', '2026-08-05'),
('Database Daredevils', '2023-11-22', '2023-11-08'),
('Smart Systems', '2025-09-22', '2025-09-05'),
('Tech Titans Reloaded', '2024-08-30', '2024-08-15'),
('Hack Horizon', '2026-07-28', '2026-07-10'),
('Robotics Revolution', '2023-12-20', '2023-12-05'),
('The Debuggers', '2025-10-25', '2025-10-10'),
('Creative Coders', '2024-09-25', '2024-09-10'),
('AI Architects', '2026-09-18', '2026-09-01'),
('Digital Nomads', '2023-08-20', '2023-08-05'),
('NextGen Innovators', '2025-11-25', '2025-11-10'),
('Tech Tornadoes', '2024-10-28', '2024-10-10'),
('Project Phoenix', '2026-05-28', '2026-05-10'),
('Code Crusaders', '2023-09-18', '2023-09-05'),
('Data Dream Team', '2025-07-18', '2025-07-01'),
('Network Ninjas', '2024-11-28', '2024-11-10'),
('Future Coders', '2026-06-15', '2026-06-01'),
('Infinity Innovators', '2025-12-22', '2025-12-05');
SELECT * FROM TEAM
ORDER BY Team_Id;


UPDATE PROJECT
SET Problem_Statement =
    'Academic projects are often stored in scattered files and records, making it difficult for students and faculty to search, organize, and track projects in one place.'
WHERE Project_Id = 301;

UPDATE PROJECT
SET Problem_Statement =
    'Students and faculty may find it difficult to identify academic performance patterns and predict student outcomes using large amounts of academic data.'
WHERE Project_Id = 302;

UPDATE PROJECT
SET Problem_Statement =
    'Farmers may lack timely information about soil and environmental conditions, making it difficult to monitor farm conditions and make informed irrigation decisions.'
WHERE Project_Id = 303;

UPDATE PROJECT
SET Problem_Statement =
    'Analyzing datasets manually can be time-consuming and may make it difficult to identify meaningful patterns, trends, and insights from data.'
WHERE Project_Id = 304;

UPDATE PROJECT
SET Problem_Statement =
    'Student records may be exposed to unauthorized access or become difficult to manage when secure access controls and centralized record management are inadequate.'
WHERE Project_Id = 305;

SELECT Project_Id, Title, Problem_Statement
FROM PROJECT
ORDER BY Project_Id;

-- add extra project records
INSERT INTO PROJECT
(Title, Problem_Statement, Description, Abstract, Project_type,
 Start_Date, End_Date, Status, Github_url, Domain_Id, Guide_Id)
VALUES
('Online Book Exchange System',
 'Students often struggle to find affordable textbooks and exchange used books with other students.',
 'A platform for students to list, search, and exchange academic books.',
 'The system connects students who want to exchange or obtain used academic books.',
 'Web Development', '2026-01-05', '2026-04-15', 'Completed',
 'https://github.com/example/online-book-exchange', 401, 506),

('AI-Based Plant Disease Detection',
 'Farmers may struggle to identify plant diseases early by examining crop leaves manually.',
 'An application that classifies plant leaf images to identify possible diseases.',
 'The system uses image classification to support early plant disease identification.',
 'Machine Learning', '2026-02-01', NULL, 'In Progress',
 'https://github.com/example/plant-disease-detection', 402, 507),

('Smart Parking Management System',
 'Drivers waste time searching for available parking spaces in crowded areas.',
 'A system for tracking parking-space availability and managing parking records.',
 'The application helps drivers identify available parking spaces efficiently.',
 'IoT', '2025-07-01', '2025-11-30', 'Completed',
 'https://github.com/example/smart-parking', 403, 508),

('Student Feedback Portal',
 'Collecting and analyzing student feedback manually can be slow and difficult to organize.',
 'A portal for collecting feedback about courses and teaching.',
 'The portal organizes feedback and helps faculty review student responses.',
 'Web Development', '2026-03-01', NULL, 'In Progress',
 'https://github.com/example/student-feedback', 401, 509),

('Network Intrusion Detection System',
 'Suspicious network activity can remain undetected when traffic is not monitored effectively.',
 'A system that analyzes network activity to identify potentially suspicious behavior.',
 'The project explores techniques for detecting unusual network patterns.',
 'Cybersecurity', '2025-01-10', '2025-05-20', 'Completed',
 'https://github.com/example/intrusion-detection', 404, 510),

('Retail Sales Forecasting',
 'Retail businesses may find it difficult to estimate future sales from historical transactions.',
 'A data-analysis project for forecasting retail sales.',
 'The system analyzes historical sales data to identify trends and estimate future demand.',
 'Data Analytics', '2025-02-01', '2025-06-15', 'Completed',
 'https://github.com/example/retail-forecasting', 405, 511),

('Online Examination System',
 'Paper-based examinations require substantial manual effort for scheduling, evaluation, and record management.',
 'A web-based platform for conducting and managing online examinations.',
 'The system organizes examinations, questions, submissions, and results.',
 'Web Development', '2026-01-15', NULL, 'In Progress',
 'https://github.com/example/online-examination', 406, 512),

('Voice-Controlled Home Automation',
 'Controlling household devices individually can be inconvenient for users who need hands-free operation.',
 'A prototype that controls selected home devices using voice commands.',
 'The project combines voice-command processing with connected device control.',
 'IoT', '2025-03-01', '2025-07-30', 'Completed',
 'https://github.com/example/voice-home-automation', 407, 513),

('Fake News Classification System',
 'Readers may struggle to distinguish misleading online articles from reliable information.',
 'A machine-learning project that classifies text using selected features.',
 'The system explores text classification techniques to support misinformation analysis.',
 'Machine Learning', '2025-04-01', '2025-08-31', 'Completed',
 'https://github.com/example/fake-news-classifier', 408, 514),

('Cloud-Based File Storage',
 'Sharing files across devices can be difficult when users lack centralized and accessible storage.',
 'An application for uploading, organizing, and retrieving files.',
 'The system provides a centralized interface for managing digital files.',
 'Cloud Computing', '2026-04-01', NULL, 'In Progress',
 'https://github.com/example/cloud-file-storage', 409, 515),

('Hospital Appointment Booking',
 'Patients may face delays and confusion when booking appointments through manual processes.',
 'A platform for managing doctor availability and patient appointments.',
 'The application organizes appointment requests and scheduling information.',
 'Web Development', '2025-05-01', '2025-09-30', 'Completed',
 'https://github.com/example/hospital-booking', 410, 516),

('Credit Card Fraud Detection',
 'Financial institutions need methods to identify potentially fraudulent transactions among legitimate transactions.',
 'A machine-learning project that analyzes transaction features.',
 'The system investigates classification methods for identifying suspicious transactions.',
 'Machine Learning', '2025-06-01', '2025-10-15', 'Completed',
 'https://github.com/example/fraud-detection', 411, 517),

('Air Quality Monitoring Device',
 'People may not have timely access to local air-quality measurements for understanding environmental conditions.',
 'A sensor-based prototype for collecting air-quality readings.',
 'The device collects measurements and presents them for monitoring and analysis.',
 'IoT', '2026-02-10', NULL, 'In Progress',
 'https://github.com/example/air-quality-monitor', 412, 518),

('Library Management Database',
 'Maintaining book, member, issue, and return records manually can lead to errors and inefficient searches.',
 'A database system for organizing library operations.',
 'The project uses structured records to support book searches and circulation management.',
 'DBMS', '2025-01-20', '2025-04-30', 'Completed',
 'https://github.com/example/library-database', 413, 519),

('Password Strength Analyzer',
 'Users may create weak passwords without understanding their vulnerability to common guessing techniques.',
 'A tool that evaluates passwords against basic strength criteria.',
 'The application provides feedback on password characteristics and suggests improvements.',
 'Cybersecurity', '2025-02-15', '2025-05-15', 'Completed',
 'https://github.com/example/password-analyzer', 414, 520),

('Traffic Sign Recognition',
 'Drivers and automated systems may have difficulty interpreting traffic signs under varying visual conditions.',
 'An image-processing project for recognizing selected traffic signs.',
 'The system explores image classification for traffic-sign identification.',
 'Computer Vision', '2025-07-01', '2025-11-15', 'Completed',
 'https://github.com/example/traffic-sign-recognition', 415, 521),

('E-Commerce Recommendation Engine',
 'Online shoppers may struggle to discover relevant products among large product catalogs.',
 'A recommendation system that suggests products using available user or item data.',
 'The project compares recommendation approaches to improve product discovery.',
 'Machine Learning', '2026-01-01', NULL, 'In Progress',
 'https://github.com/example/ecommerce-recommendation', 416, 522),

('Smart Irrigation Controller',
 'Fixed irrigation schedules can waste water when crop and soil conditions do not require watering.',
 'A prototype that uses sensor readings to support irrigation decisions.',
 'The system uses soil-moisture information to help manage water delivery.',
 'IoT', '2025-08-01', '2025-12-15', 'Completed',
 'https://github.com/example/smart-irrigation', 403, 523),

('Employee Payroll Management',
 'Manual salary calculations and payroll recordkeeping can cause errors and consume administrative time.',
 'An application for maintaining employee and salary records.',
 'The system organizes payroll information and supports consistent salary calculations.',
 'DBMS', '2025-03-01', '2025-06-30', 'Completed',
 'https://github.com/example/payroll-management', 401, 524),

('Resume Screening Assistant',
 'Recruiters may spend considerable time reviewing resumes against job requirements.',
 'A tool for organizing resumes and comparing extracted skills with job criteria.',
 'The project explores automated resume analysis to assist initial candidate screening.',
 'Artificial Intelligence', '2026-03-01', NULL, 'In Progress',
 'https://github.com/example/resume-screening', 402, 525),

('Blockchain Certificate Verification',
 'Employers and institutions may find it difficult to verify the authenticity of academic certificates.',
 'A prototype for recording certificate verification information using blockchain concepts.',
 'The system explores tamper-evident records for academic credential verification.',
 'Blockchain', '2025-04-01', '2025-08-01', 'Completed',
 'https://github.com/example/certificate-verification', 404, 526),

('Personal Expense Tracker',
 'Individuals may struggle to understand spending patterns when expenses are recorded inconsistently.',
 'An application for recording expenses and organizing spending categories.',
 'The project summarizes personal spending to help users review their expenses.',
 'Mobile Application', '2025-05-01', '2025-09-01', 'Completed',
 'https://github.com/example/expense-tracker', 405, 527),

('Smart Waste Segregation',
 'Mixing recyclable and non-recyclable waste makes collection and recycling less efficient.',
 'A prototype for classifying selected waste categories using sensors or image processing.',
 'The project explores ways to support more effective waste segregation.',
 'IoT', '2026-04-01', NULL, 'In Progress',
 'https://github.com/example/smart-waste-segregation', 407, 528),

('Online Food Ordering Platform',
 'Customers and restaurants may face communication errors when food orders are managed manually.',
 'A platform for browsing menus and recording customer orders.',
 'The application organizes menu information, orders, and order status.',
 'Web Development', '2025-06-01', '2025-10-01', 'Completed',
 'https://github.com/example/food-ordering', 408, 529),

('Student Attendance Analytics',
 'Attendance records alone may not clearly reveal patterns of absenteeism across classes and semesters.',
 'A data-analysis project for summarizing attendance records.',
 'The system produces attendance summaries to help identify patterns that may require attention.',
 'Data Analytics', '2026-01-10', NULL, 'In Progress',
 'https://github.com/example/attendance-analytics', 409, 530),

('IoT-Based Water Level Monitor',
 'Water tanks may overflow or become empty when water levels are not monitored regularly.',
 'A sensor-based system for measuring and displaying water levels.',
 'The prototype monitors tank levels and can provide alerts at configured thresholds.',
 'IoT', '2025-07-01', '2025-11-01', 'Completed',
 'https://github.com/example/water-level-monitor', 410, 531),

('Secure File Sharing Application',
 'Files shared without appropriate access controls may be exposed to unintended recipients.',
 'An application for sharing files with access restrictions.',
 'The project explores controlled file sharing and basic security measures.',
 'Cybersecurity', '2025-08-01', '2025-12-01', 'Completed',
 'https://github.com/example/secure-file-sharing', 411, 532),

('Customer Churn Prediction',
 'Businesses may identify dissatisfied customers too late to take appropriate retention measures.',
 'A machine-learning project that analyzes customer data for churn patterns.',
 'The system explores predictive analysis to identify customers who may discontinue a service.',
 'Machine Learning', '2026-02-01', NULL, 'In Progress',
 'https://github.com/example/customer-churn', 412, 533),

('Digital Notice Board',
 'Printed notices can be difficult to update quickly and may not reach all intended students.',
 'A digital platform for publishing and displaying announcements.',
 'The system centralizes notices and makes updates easier to distribute.',
 'Web Development', '2025-01-15', '2025-04-15', 'Completed',
 'https://github.com/example/digital-notice-board', 413, 534),

('Electricity Consumption Dashboard',
 'Users may find it difficult to understand electricity consumption without organized usage summaries.',
 'A dashboard for displaying and analyzing electricity consumption data.',
 'The project presents consumption patterns to support informed energy use.',
 'Data Analytics', '2025-02-01', '2025-06-01', 'Completed',
 'https://github.com/example/electricity-dashboard', 414, 535),

('Gesture Recognition Interface',
 'Traditional input devices may be inconvenient for some touch-free interaction scenarios.',
 'A prototype that recognizes selected hand gestures using a camera.',
 'The project explores computer-vision methods for gesture-based interaction.',
 'Computer Vision', '2025-03-01', '2025-07-01', 'Completed',
 'https://github.com/example/gesture-recognition', 415, 536),

('Agricultural Crop Recommendation',
 'Farmers may lack a convenient way to compare crop choices with soil and environmental conditions.',
 'A data-driven tool for recommending crops using selected agricultural features.',
 'The project explores predictive methods for crop selection support.',
 'Machine Learning', '2026-03-01', NULL, 'In Progress',
 'https://github.com/example/crop-recommendation', 416, 537),

('Online Event Registration',
 'Manual event registration can create duplicate entries and make participant tracking difficult.',
 'A platform for registering participants and managing event details.',
 'The system organizes registrations and maintains participant records.',
 'Web Development', '2025-04-01', '2025-08-01', 'Completed',
 'https://github.com/example/event-registration', 401, 538),

('Smart Energy Monitoring',
 'Users may not notice unusual energy consumption when usage data is not monitored regularly.',
 'A prototype for collecting and displaying energy-consumption measurements.',
 'The system presents energy readings to support monitoring and analysis.',
 'IoT', '2025-05-01', '2025-09-01', 'Completed',
 'https://github.com/example/energy-monitoring', 402, 539),

('Document Similarity Checker',
 'Reviewers may find it time-consuming to identify similar content across large collections of documents.',
 'A tool for comparing documents using text-similarity methods.',
 'The project explores similarity analysis to help identify overlapping document content.',
 'Natural Language Processing', '2025-06-01', '2025-10-01', 'Completed',
 'https://github.com/example/document-similarity', 403, 540),

('Inventory Management System',
 'Businesses may experience stock discrepancies when inventory movements are tracked manually.',
 'An application for recording stock, purchases, and inventory changes.',
 'The system maintains inventory records and supports stock-level monitoring.',
 'DBMS', '2025-07-01', '2025-11-01', 'Completed',
 'https://github.com/example/inventory-management', 404, 541),

('Phishing URL Detection',
 'Users may unknowingly visit malicious websites because suspicious URLs are difficult to recognize.',
 'A tool that examines URL characteristics to identify potentially suspicious links.',
 'The project explores classification methods for phishing URL detection.',
 'Cybersecurity', '2026-04-01', NULL, 'In Progress',
 'https://github.com/example/phishing-detection', 405, 542),

('Public Transport Route Planner',
 'Passengers may find it difficult to compare transport routes and estimate convenient journeys.',
 'An application for presenting route options using available transport data.',
 'The project organizes route information to support journey planning.',
 'Web Development', '2025-08-01', '2025-12-01', 'Completed',
 'https://github.com/example/route-planner', 406, 543),

('Speech Emotion Recognition',
 'Applications that process speech may not account for emotional cues present in spoken audio.',
 'A machine-learning project that classifies selected speech emotion categories.',
 'The system explores audio features for emotion classification.',
 'Machine Learning', '2025-09-01', '2026-01-15', 'Completed',
 'https://github.com/example/speech-emotion', 407, 544),

('Online Course Recommendation',
 'Learners may struggle to find courses that match their interests, skills, and learning goals.',
 'A recommendation tool for suggesting relevant learning resources.',
 'The project explores methods for matching learners with suitable courses.',
 'Artificial Intelligence', '2026-01-15', NULL, 'In Progress',
 'https://github.com/example/course-recommendation', 408, 545),

('Smart Greenhouse Monitoring',
 'Greenhouse conditions can change quickly when temperature and humidity are not monitored consistently.',
 'A sensor-based system for monitoring greenhouse environmental conditions.',
 'The project collects environmental readings to support greenhouse management.',
 'IoT', '2025-10-01', '2026-02-01', 'Completed',
 'https://github.com/example/greenhouse-monitoring', 409, 546),

('Digital Forensics Case Tracker',
 'Digital investigation teams may find it difficult to organize case progress and evidence records consistently.',
 'A database application for maintaining digital-forensics case information.',
 'The system organizes case details and evidence references for easier tracking.',
 'DBMS', '2025-11-01', '2026-03-01', 'Completed',
 'https://github.com/example/forensics-case-tracker', 410, 547),

('Weather Data Visualization',
 'Weather datasets can be difficult to interpret when observations are presented only as raw tables.',
 'A visualization tool for presenting weather measurements and trends.',
 'The project transforms weather data into charts and summaries for easier interpretation.',
 'Data Analytics', '2025-12-01', '2026-04-01', 'Completed',
 'https://github.com/example/weather-visualization', 411, 548),

('Campus Navigation Assistant',
 'New students and visitors may struggle to locate buildings and facilities across a large campus.',
 'A campus navigation application using available location and map information.',
 'The project organizes campus locations to support easier navigation.',
 'Mobile Application', '2026-02-15', NULL, 'In Progress',
 'https://github.com/example/campus-navigation', 412, 549),

('Research Paper Recommendation System',
 'Students and researchers may find it difficult to discover relevant academic papers across large collections.',
 'A recommendation tool for suggesting research papers based on selected topics or text.',
 'The project explores document features and recommendation methods to improve research discovery.',
 'Natural Language Processing', '2026-03-15', NULL, 'In Progress',
 'https://github.com/example/paper-recommendation', 413, 550);
SELECT * FROM PROJECT;

INSERT INTO WORKS_ON (Team_Id, Project_Id)
SELECT t.Team_Id, p.Project_Id
FROM TEAM t
JOIN PROJECT p
    ON p.Project_Id = t.Team_Id + 103
WHERE t.Team_Id BETWEEN 201 AND 245
AND NOT EXISTS (
    SELECT 1
    FROM WORKS_ON w
    WHERE w.Team_Id = t.Team_Id
      AND w.Project_Id = p.Project_Id
);

SELECT COUNT(*) AS Total_Team_Project_Relationships
FROM WORKS_ON;

SELECT t.Team_Id, t.Team_Name
FROM TEAM t
LEFT JOIN WORKS_ON w
    ON t.Team_Id = w.Team_Id
WHERE w.Team_Id IS NULL;
INSERT INTO WORKS_ON (Team_Id, Project_Id)
VALUES (246, 306);
SELECT COUNT(*) AS Total_Relationships
FROM WORKS_ON;

SELECT t.Team_Id, t.Team_Name
FROM TEAM t
LEFT JOIN WORKS_ON w
    ON t.Team_Id = w.Team_Id
WHERE w.Team_Id IS NULL;

SELECT p.Project_Id, p.Title
FROM PROJECT p
LEFT JOIN WORKS_ON w
    ON p.Project_Id = w.Project_Id
WHERE w.Project_Id IS NULL;

INSERT INTO WORKS_ON (Team_Id, Project_Id)
VALUES
(247, 349),
(248, 350),
(249, 348),
(250, 347);

-- Project Record
INSERT INTO PARTICIPATES_IN
(Project_Id, Competition_id, Result, Competition_Rank, Award)
VALUES
(306,706,'Winner',1,'INR 10000 Cash Prize'),
(307,707,'Participant',5,'Certificate'),
(308,708,'Runner-up',2,'INR 5000 Cash Prize'),
(309,709,'Participant',8,'Certificate'),
(310,710,'Winner',1,'INR 15000 Cash Prize'),
(311,711,'Participant',6,'Certificate'),
(312,712,'Runner-up',2,'INR 5000 Cash Prize'),
(313,713,'Participant',4,'Certificate'),
(314,714,'Participant',9,'Certificate'),
(315,715,'Winner',1,'INR 12000 Cash Prize'),
(316,716,'Runner-up',2,'INR 6000 Cash Prize'),
(317,717,'Participant',7,'Certificate'),
(318,718,'Participant',5,'Certificate'),
(319,719,'Winner',1,'INR 10000 Cash Prize'),
(320,720,'Participant',3,'Certificate'),
(321,721,'Runner-up',2,'INR 7000 Cash Prize'),
(322,722,'Participant',6,'Certificate'),
(323,723,'Winner',1,'INR 15000 Cash Prize'),
(324,724,'Participant',8,'Certificate'),
(325,725,'Runner-up',2,'INR 5000 Cash Prize'),
(326,726,'Participant',4,'Certificate'),
(327,727,'Participant',7,'Certificate'),
(328,728,'Winner',1,'INR 12000 Cash Prize'),
(329,729,'Runner-up',2,'INR 6000 Cash Prize'),
(330,730,'Participant',5,'Certificate'),
(331,731,'Participant',9,'Certificate'),
(332,732,'Winner',1,'INR 10000 Cash Prize'),
(333,733,'Participant',3,'Certificate'),
(334,734,'Runner-up',2,'INR 5000 Cash Prize'),
(335,735,'Participant',6,'Certificate'),
(336,736,'Winner',1,'INR 15000 Cash Prize'),
(337,737,'Participant',4,'Certificate'),
(338,738,'Runner-up',2,'INR 7000 Cash Prize'),
(339,739,'Participant',8,'Certificate'),
(340,740,'Winner',1,'INR 10000 Cash Prize'),
(341,741,'Participant',5,'Certificate'),
(342,742,'Runner-up',2,'INR 6000 Cash Prize'),
(343,743,'Participant',7,'Certificate'),
(344,744,'Participant',3,'Certificate'),
(345,745,'Winner',1,'INR 12000 Cash Prize'),
(346,746,'Runner-up',2,'INR 5000 Cash Prize'),
(347,747,'Participant',6,'Certificate'),
(348,748,'Winner',1,'INR 15000 Cash Prize'),
(349,749,'Participant',4,'Certificate'),
(350,750,'Runner-up',2,'INR 7000 Cash Prize');
UPDATE PARTICIPATES_IN
SET Award = 'Certificate'
WHERE Project_Id IN (303, 305);
SELECT * FROM PARTICIPATES_IN;

-- document record
INSERT INTO DOCUMENT
(Doc_Id, File_Name, File_Type, File_Path, Uploaded_On, Project_Id)
VALUES
(806,'Book_Exchange_Report.pdf','PDF','documents/book_exchange_report.pdf','2026-10-20',306),
(807,'Plant_Disease_Detection_Report.pdf','PDF','documents/plant_disease_detection_report.pdf','2026-10-20',307),
(808,'Smart_Parking_Documentation.pdf','PDF','documents/smart_parking_documentation.pdf','2026-10-20',308),
(809,'Student_Feedback_Report.pdf','PDF','documents/student_feedback_report.pdf','2026-10-20',309),
(810,'Network_Intrusion_Report.pdf','PDF','documents/network_intrusion_report.pdf','2026-10-20',310),
(811,'Retail_Forecasting_Report.xlsx','XLSX','documents/retail_forecasting_report.xlsx','2026-10-20',311),
(812,'Online_Examination_Report.pdf','PDF','documents/online_examination_report.pdf','2026-10-20',312),
(813,'Home_Automation_Report.pdf','PDF','documents/home_automation_report.pdf','2026-10-20',313),
(814,'Fake_News_Classification_Report.pdf','PDF','documents/fake_news_classification_report.pdf','2026-10-20',314),
(815,'Cloud_File_Storage_Report.pdf','PDF','documents/cloud_file_storage_report.pdf','2026-10-20',315),
(816,'Hospital_Appointment_Report.pdf','PDF','documents/hospital_appointment_report.pdf','2026-10-20',316),
(817,'Fraud_Detection_Report.xlsx','XLSX','documents/fraud_detection_report.xlsx','2026-10-20',317),
(818,'Air_Quality_Report.pdf','PDF','documents/air_quality_report.pdf','2026-10-20',318),
(819,'Library_Management_Report.pdf','PDF','documents/library_management_report.pdf','2026-10-20',319),
(820,'Password_Analyzer_Report.pdf','PDF','documents/password_analyzer_report.pdf','2026-10-20',320),
(821,'Traffic_Sign_Recognition_Report.pdf','PDF','documents/traffic_sign_recognition_report.pdf','2026-10-20',321),
(822,'Recommendation_Engine_Report.pdf','PDF','documents/recommendation_engine_report.pdf','2026-10-20',322),
(823,'Smart_Irrigation_Report.pdf','PDF','documents/smart_irrigation_report.pdf','2026-10-20',323),
(824,'Payroll_Management_Report.xlsx','XLSX','documents/payroll_management_report.xlsx','2026-10-20',324),
(825,'Resume_Screening_Report.pdf','PDF','documents/resume_screening_report.pdf','2026-10-20',325),
(826,'Blockchain_Certificate_Report.pdf','PDF','documents/blockchain_certificate_report.pdf','2026-10-20',326),
(827,'Expense_Tracker_Report.xlsx','XLSX','documents/expense_tracker_report.xlsx','2026-10-20',327),
(828,'Waste_Segregation_Report.pdf','PDF','documents/waste_segregation_report.pdf','2026-10-20',328),
(829,'Food_Ordering_Report.pdf','PDF','documents/food_ordering_report.pdf','2026-10-20',329),
(830,'Attendance_Analytics_Report.xlsx','XLSX','documents/attendance_analytics_report.xlsx','2026-10-20',330),
(831,'Water_Level_Monitor_Report.pdf','PDF','documents/water_level_monitor_report.pdf','2026-10-20',331),
(832,'Secure_File_Sharing_Report.pdf','PDF','documents/secure_file_sharing_report.pdf','2026-10-20',332),
(833,'Customer_Churn_Report.xlsx','XLSX','documents/customer_churn_report.xlsx','2026-10-20',333),
(834,'Digital_Notice_Board_Report.pdf','PDF','documents/digital_notice_board_report.pdf','2026-10-20',334),
(835,'Energy_Monitoring_Report.xlsx','XLSX','documents/energy_monitoring_report.xlsx','2026-10-20',335),
(836,'Gesture_Recognition_Report.pdf','PDF','documents/gesture_recognition_report.pdf','2026-10-20',336),
(837,'Crop_Recommendation_Report.pdf','PDF','documents/crop_recommendation_report.pdf','2026-10-20',337),
(838,'Event_Registration_Report.pdf','PDF','documents/event_registration_report.pdf','2026-10-20',338),
(839,'Smart_Energy_Report.pdf','PDF','documents/smart_energy_report.pdf','2026-10-20',339),
(840,'Document_Similarity_Report.pdf','PDF','documents/document_similarity_report.pdf','2026-10-20',340),
(841,'Inventory_Management_Report.xlsx','XLSX','documents/inventory_management_report.xlsx','2026-10-20',341),
(842,'Phishing_URL_Detection_Report.pdf','PDF','documents/phishing_url_detection_report.pdf','2026-10-20',342),
(843,'Transport_Route_Planner_Report.pdf','PDF','documents/transport_route_planner_report.pdf','2026-10-20',343),
(844,'Speech_Emotion_Report.pdf','PDF','documents/speech_emotion_report.pdf','2026-10-20',344),
(845,'Course_Recommendation_Report.pdf','PDF','documents/course_recommendation_report.pdf','2026-10-20',345),
(846,'Greenhouse_Monitoring_Report.pdf','PDF','documents/greenhouse_monitoring_report.pdf','2026-10-20',346),
(847,'Digital_Forensics_Report.pdf','PDF','documents/digital_forensics_report.pdf','2026-10-20',347),
(848,'Weather_Visualization_Report.xlsx','XLSX','documents/weather_visualization_report.xlsx','2026-10-20',348),
(849,'Campus_Navigation_Report.pdf','PDF','documents/campus_navigation_report.pdf','2026-10-20',349),
(850,'Research_Paper_Recommendation_Report.pdf','PDF','documents/research_paper_recommendation_report.pdf','2026-10-20',350);
SELECT COUNT(*) AS Total_Records
FROM DOCUMENT;
SELECT * FROM DOCUMENT;

-- Review Records
INSERT INTO REVIEW
(Review_Id, Rating, Review_Text, Reviewed_On, Reviewed_By, Project_Id)
VALUES
(906,4,'Simple and useful book exchange platform','2026-10-20','Aarav Patil',306),
(907,3,'Plant disease detection needs better accuracy','2026-10-20','Isha Sharma',307),
(908,5,'Efficient parking management solution','2026-10-20','Vivaan Shah',308),
(909,4,'Feedback collection is easy and organized','2026-10-20','Ananya Kulkarni',309),
(910,2,'Intrusion detection needs more testing','2026-10-20','Aditya Joshi',310),
(911,5,'Useful forecasting with clear results','2026-10-20','Saanvi Deshmukh',311),
(912,3,'Examination interface could be improved','2026-10-20','Reyansh Patil',312),
(913,4,'Home automation features work well','2026-10-20','Myra Mehta',313),
(914,1,'Classification results were inaccurate','2026-10-20','Arjun Pawar',314),
(915,4,'Cloud storage interface is easy to use','2026-10-20','Anaya Singh',315),
(916,5,'Appointment booking process is convenient','2026-10-20','Atharv Joshi',316),
(917,3,'Fraud detection requires additional testing','2026-10-20','Sara Khan',317),
(918,4,'Air quality readings are clearly displayed','2026-10-20','Vihaan More',318),
(919,5,'Library records are easy to manage','2026-10-20','Diya Patil',319),
(920,2,'Password analysis could provide better guidance','2026-10-20','Kabir Shah',320),
(921,4,'Traffic sign recognition works reasonably well','2026-10-20','Aditi Kulkarni',321),
(922,5,'Recommendations are relevant and useful','2026-10-20','Ishaan Desai',322),
(923,3,'Irrigation control needs more sensor testing','2026-10-20','Riya Joshi',323),
(924,4,'Payroll calculations are clearly organized','2026-10-20','Omkar Patil',324),
(925,1,'Resume screening produced unsuitable results','2026-10-20','Nisha More',325),
(926,5,'Certificate verification provides a useful solution','2026-10-20','Atharva Shah',326),
(927,4,'Expense tracking is simple and convenient','2026-10-20','Mira Pawar',327),
(928,3,'Waste segregation accuracy could improve','2026-10-20','Rudra Mehta',328),
(929,5,'Food ordering process is straightforward','2026-10-20','Aarohi Desai',329),
(930,4,'Attendance statistics are easy to understand','2026-10-20','Siddharth Joshi',330),
(931,2,'Water level alerts need better reliability','2026-10-20','Pooja Patil',331),
(932,5,'File sharing features are useful and secure','2026-10-20','Neil Shah',332),
(933,3,'Churn predictions need more accurate data','2026-10-20','Tanvi Kulkarni',333),
(934,4,'Notice updates are displayed clearly','2026-10-20','Yash Deshmukh',334),
(935,5,'Energy consumption trends are easy to view','2026-10-20','Sana Khan',335),
(936,1,'Gesture recognition was difficult to use','2026-10-20','Kunal More',336),
(937,4,'Crop recommendations are presented clearly','2026-10-20','Prisha Joshi',337),
(938,5,'Event registration is quick and convenient','2026-10-20','Dev Patil',338),
(939,3,'Energy monitoring needs more detailed reports','2026-10-20','Aanya Shah',339),
(940,4,'Document similarity results are useful','2026-10-20','Manav Desai',340),
(941,5,'Inventory records are easy to maintain','2026-10-20','Ira Kulkarni',341),
(942,2,'Phishing detection needs additional validation','2026-10-20','Vedant Pawar',342),
(943,4,'Route suggestions are clear and helpful','2026-10-20','Shreya Mehta',343),
(944,3,'Emotion recognition is not always consistent','2026-10-20','Parth Joshi',344),
(945,5,'Course recommendations match user interests','2026-10-20','Kiara Patil',345),
(946,4,'Greenhouse conditions are easy to monitor','2026-10-20','Dhruv Shah',346),
(947,1,'Case records need a simpler interface','2026-10-20','Simran Desai',347),
(948,5,'Weather data is displayed effectively','2026-10-20','Rohan Kulkarni',348),
(949,4,'Campus navigation is easy to understand','2026-10-20','Anvi More',349),
(950,3,'Paper recommendations could be more relevant','2026-10-20','Harsh Joshi',350);
SELECT COUNT(*) AS Total_Reviews
FROM REVIEW;
SELECT * FROM REVIEW;

-- member of records
INSERT INTO MEMBER_OF (Student_Id, Team_Id, Role)
VALUES
(106,206,'Team Leader'),
(107,207,'Developer'),
(108,208,'Designer'),
(109,209,'Researcher'),
(110,210,'Developer'),
(111,211,'Team Leader'),
(112,212,'Designer'),
(113,213,'Developer'),
(114,214,'Researcher'),
(115,215,'Developer'),
(116,216,'Team Leader'),
(117,217,'Developer'),
(118,218,'Designer'),
(119,219,'Researcher'),
(120,220,'Developer'),
(121,221,'Team Leader'),
(122,222,'Designer'),
(123,223,'Developer'),
(124,224,'Researcher'),
(125,225,'Developer'),
(126,226,'Team Leader'),
(127,227,'Developer'),
(128,228,'Designer'),
(129,229,'Researcher'),
(130,230,'Developer'),
(131,231,'Team Leader'),
(132,232,'Designer'),
(133,233,'Developer'),
(134,234,'Researcher'),
(135,235,'Developer'),
(136,236,'Team Leader'),
(137,237,'Developer'),
(138,238,'Designer'),
(139,239,'Researcher'),
(140,240,'Developer'),
(141,241,'Team Leader'),
(142,242,'Designer'),
(143,243,'Developer'),
(144,244,'Researcher'),
(145,245,'Developer'),
(146,246,'Team Leader'),
(147,247,'Designer'),
(148,248,'Developer'),
(149,249,'Researcher'),
(150,250,'Developer');
SELECT * FROM MEMBER_OF;

-- Uses Record
INSERT INTO USES (Project_Id, Tech_id)
VALUES
(306,612),
(307,635),
(308,608),
(309,627),
(310,641),
(311,619),
(312,606),
(313,644),
(314,615),
(315,630),
(316,622),
(317,648),
(318,611),
(319,636),
(320,625),
(321,609),
(322,643),
(323,617),
(324,650),
(325,632),
(326,614),
(327,639),
(328,607),
(329,628),
(330,645),
(331,620),
(332,634),
(333,610),
(334,647),
(335,623),
(336,638),
(337,616),
(338,642),
(339,605),
(340,631),
(341,618),
(342,649),
(343,626),
(344,640),
(345,613),
(346,637),
(347,621),
(348,646),
(349,624),
(350,633);
SELECT COUNT(*) AS Total_Records
FROM USES;
SELECT * FROM USES;

-- Works On Records
SELECT COUNT(*) AS Total_Records
FROM WORKS_ON;
SELECT * FROM WORKS_ON
ORDER BY Team_Id, Project_Id;

-- =========================================================
-- SAMPLE PROJECT OUTPUTS
-- =========================================================

INSERT INTO PROJECT_OUTPUT
(Project_Id, Output_Type, Title, Status,
 Application_or_Paper_ID, Output_Date, Details)
VALUES

-- =========================
-- PATENTS: 15 RECORDS
-- =========================

(303, 'Patent',
 'Smart Farm Monitoring and Irrigation Control',
 'Filed', 'SAMPLE-PAT-2023-001', '2023-03-15',
 'Illustrative patent application; not a verified filing.'),

(308, 'Patent',
 'Intelligent Parking Space Detection System',
 'Filed', 'SAMPLE-PAT-2023-002', '2023-06-20',
 'Illustrative patent application; not a verified filing.'),

(313, 'Patent',
 'Voice-Controlled Home Automation',
 'Filed', 'SAMPLE-PAT-2023-003', '2023-08-10',
 'Illustrative patent application; not a verified filing.'),

(315, 'Patent',
 'Secure Cloud File Storage Mechanism',
 'Granted', 'SAMPLE-PAT-2023-004', '2023-11-05',
 'Illustrative grant record; not a verified patent.'),

(321, 'Patent',
 'Traffic Sign Recognition and Alert System',
 'Filed', 'SAMPLE-PAT-2024-001', '2024-01-25',
 'Illustrative patent application; not a verified filing.'),

(323, 'Patent',
 'Automated Smart Irrigation Controller',
 'Granted', 'SAMPLE-PAT-2024-002', '2024-03-12',
 'Illustrative grant record; not a verified patent.'),

(326, 'Patent',
 'Blockchain-Based Certificate Verification',
 'Filed', 'SAMPLE-PAT-2024-003', '2024-05-18',
 'Illustrative patent application; not a verified filing.'),

(331, 'Patent',
 'IoT Water Level Monitoring and Alert Device',
 'Filed', 'SAMPLE-PAT-2024-004', '2024-07-22',
 'Illustrative patent application; not a verified filing.'),

(339, 'Patent',
 'Smart Energy Consumption Monitoring',
 'Granted', 'SAMPLE-PAT-2024-005', '2024-09-14',
 'Illustrative grant record; not a verified patent.'),

(340, 'Patent',
 'Document Similarity Detection Technique',
 'Filed', 'SAMPLE-PAT-2024-006', '2024-11-08',
 'Illustrative patent application; not a verified filing.'),

(346, 'Patent',
 'Smart Greenhouse Environmental Controller',
 'Filed', 'SAMPLE-PAT-2025-001', '2025-01-19',
 'Illustrative patent application; not a verified filing.'),

(347, 'Patent',
 'Digital Forensics Evidence Tracking System',
 'Granted', 'SAMPLE-PAT-2025-002', '2025-03-26',
 'Illustrative grant record; not a verified patent.'),

(349, 'Patent',
 'Indoor Campus Navigation Assistance System',
 'Filed', 'SAMPLE-PAT-2025-003', '2025-06-11',
 'Illustrative patent application; not a verified filing.'),

(342, 'Patent',
 'Phishing URL Detection and Warning System',
 'Filed', 'SAMPLE-PAT-2025-004', '2025-09-17',
 'Illustrative patent application; not a verified filing.'),

(328, 'Patent',
 'Smart Waste Segregation and Classification Device',
 'Granted', 'SAMPLE-PAT-2025-005', '2025-12-03',
 'Illustrative grant record; not a verified patent.'),

-- =========================
-- RESEARCH PAPERS: 20 RECORDS
-- =========================

(303, 'Research Paper',
 'IoT-Based Smart Agriculture Monitoring: A Performance Study',
 'Published', 'SAMPLE-PAPER-2023-001', '2023-02-10',
 'Example journal publication name: International Journal of Smart Agriculture (fictional example).'),

(302, 'Research Paper',
 'Student Performance Prediction Using Machine Learning',
 'Published', 'SAMPLE-PAPER-2023-002', '2023-04-21',
 'Example journal publication name: Journal of Educational Data Analytics (fictional example).'),

(304, 'Research Paper',
 'Exploratory Data Analysis for Student Datasets',
 'Submitted', 'SAMPLE-PAPER-2023-003', '2023-06-14',
 'Example conference: International Conference on Data Science and Applications (fictional example).'),

(310, 'Research Paper',
 'Network Intrusion Detection Using Classification Methods',
 'Published', 'SAMPLE-PAPER-2023-004', '2023-08-09',
 'Example journal publication name: Journal of Cybersecurity Research (fictional example).'),

(319, 'Research Paper',
 'Database Design for Academic Library Management',
 'Published', 'SAMPLE-PAPER-2023-005', '2023-10-16',
 'Example journal publication name: International Journal of Database Systems (fictional example).'),

(314, 'Research Paper',
 'Fake News Classification Using Natural Language Processing',
 'Submitted', 'SAMPLE-PAPER-2024-001', '2024-01-17',
 'Example conference: Conference on Language Technologies (fictional example).'),

(316, 'Research Paper',
 'Online Hospital Appointment Scheduling: A System Study',
 'Published', 'SAMPLE-PAPER-2024-002', '2024-02-23',
 'Example journal publication name: Journal of Healthcare Computing (fictional example).'),

(317, 'Research Paper',
 'Credit Card Fraud Detection with Data Mining',
 'Published', 'SAMPLE-PAPER-2024-003', '2024-04-12',
 'Example journal publication name: International Journal of Financial Technology (fictional example).'),

(320, 'Research Paper',
 'Password Strength Evaluation and Security Awareness',
 'Submitted', 'SAMPLE-PAPER-2024-004', '2024-05-28',
 'Example conference: Symposium on Information Security (fictional example).'),

(322, 'Research Paper',
 'Recommendation Techniques for E-Commerce Products',
 'Published', 'SAMPLE-PAPER-2024-005', '2024-07-15',
 'Example journal publication name: Journal of Recommender Systems (fictional example).'),

(325, 'Research Paper',
 'Resume Screening Using Text Classification',
 'Submitted', 'SAMPLE-PAPER-2024-006', '2024-09-20',
 'Example conference: International Conference on Artificial Intelligence Applications (fictional example).'),

(330, 'Research Paper',
 'Student Attendance Analytics Using Data Visualization',
 'Published', 'SAMPLE-PAPER-2024-007', '2024-11-11',
 'Example journal publication name: Journal of Learning Analytics (fictional example).'),

(332, 'Research Paper',
 'Secure File Sharing in Distributed Applications',
 'Published', 'SAMPLE-PAPER-2025-001', '2025-01-13',
 'Example journal publication name: Journal of Network and Information Security (fictional example).'),

(333, 'Research Paper',
 'Customer Churn Prediction with Supervised Learning',
 'Submitted', 'SAMPLE-PAPER-2025-002', '2025-02-24',
 'Example conference: Conference on Business Data Analytics (fictional example).'),

(335, 'Research Paper',
 'Electricity Consumption Dashboard and Trend Analysis',
 'Published', 'SAMPLE-PAPER-2025-003', '2025-04-09',
 'Example journal publication name: Journal of Energy Data Systems (fictional example).'),

(337, 'Research Paper',
 'Agricultural Crop Recommendation Using Soil Parameters',
 'Published', 'SAMPLE-PAPER-2025-004', '2025-06-18',
 'Example journal publication name: Journal of Agricultural Computing (fictional example).'),

(343, 'Research Paper',
 'Public Transport Route Planning and Optimization',
 'Submitted', 'SAMPLE-PAPER-2025-005', '2025-08-07',
 'Example conference: International Conference on Smart Mobility (fictional example).'),

(344, 'Research Paper',
 'Speech Emotion Recognition: A Comparative Study',
 'Published', 'SAMPLE-PAPER-2025-006', '2025-09-22',
 'Example journal publication name: Journal of Speech and Language Computing (fictional example).'),

(348, 'Research Paper',
 'Weather Data Visualization and Seasonal Trends',
 'Published', 'SAMPLE-PAPER-2025-007', '2025-11-14',
 'Example journal publication name: Journal of Environmental Data Analysis (fictional example).'),

(350, 'Research Paper',
 'Research Paper Recommendation Using Text Similarity',
 'Submitted', 'SAMPLE-PAPER-2026-001', '2026-02-12',
 'Example conference: Conference on Information Retrieval (fictional example).');
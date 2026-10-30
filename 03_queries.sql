USE project_archive;
SELECT * FROM MEMBER_OF;
SELECT * FROM WORKS_ON;
SELECT * FROM USES;
SELECT * FROM PARTICIPATES_IN;

SELECT * FROM STUDENT;
SELECT * FROM TEAM;
SELECT * FROM PROJECT;
SELECT * FROM DOMAIN;
SELECT * FROM GUIDE;
SELECT * FROM TECHNOLOGY;
SELECT * FROM COMPETITION;
SELECT * FROM DOCUMENT;
SELECT * FROM REVIEW;

SELECT 'STUDENT' AS Table_Name, COUNT(*) AS Total_Records FROM STUDENT
UNION ALL
SELECT 'TEAM', COUNT(*) FROM TEAM
UNION ALL
SELECT 'PROJECT', COUNT(*) FROM PROJECT
UNION ALL
SELECT 'DOMAIN', COUNT(*) FROM DOMAIN
UNION ALL
SELECT 'GUIDE', COUNT(*) FROM GUIDE
UNION ALL
SELECT 'TECHNOLOGY', COUNT(*) FROM TECHNOLOGY
UNION ALL
SELECT 'COMPETITION', COUNT(*) FROM COMPETITION
UNION ALL
SELECT 'DOCUMENT', COUNT(*) FROM DOCUMENT
UNION ALL
SELECT 'REVIEW', COUNT(*) FROM REVIEW
UNION ALL
SELECT 'MEMBER_OF', COUNT(*) FROM MEMBER_OF
UNION ALL
SELECT 'WORKS_ON', COUNT(*) FROM WORKS_ON
UNION ALL
SELECT 'USES', COUNT(*) FROM USES
UNION ALL
SELECT 'PARTICIPATES_IN', COUNT(*) FROM PARTICIPATES_IN;

SELECT
    P.Project_Id,
    P.Title,
    D.Domain_Name,
    G.Name AS Guide_Name
FROM PROJECT P
JOIN DOMAIN D
    ON P.Domain_Id = D.Domain_Id
JOIN GUIDE G
    ON P.Guide_Id = G.Guide_Id;
    
SELECT
    T.Team_Id,
    T.Team_Name,
    P.Project_Id,
    P.Title
FROM TEAM T
JOIN WORKS_ON W
    ON T.Team_Id = W.Team_Id
JOIN PROJECT P
    ON W.Project_Id = P.Project_Id;
    
SELECT
    S.Student_Id,
    S.Name AS Student_Name,
    T.Team_Id,
    T.Team_Name,
    M.Role
FROM STUDENT S
JOIN MEMBER_OF M
    ON S.Student_Id = M.Student_Id
JOIN TEAM T
    ON M.Team_Id = T.Team_Id;
    
SELECT
    P.Project_Id,
    P.Title,
    T.Tech_id,
    T.Tech_name,
    T.Category
FROM PROJECT P
JOIN USES U
    ON P.Project_Id = U.Project_Id
JOIN TECHNOLOGY T
    ON U.Tech_id = T.Tech_id;
    
SELECT
    P.Project_Id,
    P.Title,
    C.Name AS Competition_Name,
    PI.Result,
    PI.Competition_Rank,
    PI.Award
FROM PROJECT P
JOIN PARTICIPATES_IN PI
    ON P.Project_Id = PI.Project_Id
JOIN COMPETITION C
    ON PI.Competition_id = C.Competition_id;
    
SELECT
    P.Project_Id,
    P.Title,
    D.File_Name,
    R.Rating,
    R.Reviewed_By
FROM PROJECT P
JOIN DOCUMENT D
    ON P.Project_Id = D.Project_Id
JOIN REVIEW R
    ON P.Project_Id = R.Project_Id;
    
-- EXPERIMENT 6: IMPLEMENTATION OF RELATIONAL OPERATORS IN SQL
-- 1. Boolean Operators and Pattern Matching
-- 1. AND operator
SELECT *
FROM STUDENT
WHERE Department = 'IT' AND Year = 2;

-- 2. OR operator
SELECT *
FROM STUDENT
WHERE Department = 'IT' OR Department = 'ENTC';

-- 3. NOT operator
SELECT *
FROM PROJECT
WHERE NOT Status = 'Completed';

-- 4. Names starting with 'A'
SELECT *
FROM STUDENT
WHERE Name LIKE 'A%';

-- 5. Projects containing the word 'System'
SELECT *
FROM PROJECT
WHERE Title LIKE '%System%';

-- 6. Arithmetic operation
SELECT
    Project_Id,
    Title,
    Rating,
    Rating + 1 AS Adjusted_Rating
FROM PROJECT
JOIN REVIEW USING (Project_Id);

-- 6. Arithmetic operation
SELECT
    Project_Id,
    Rating,
    Rating * 20 AS Rating_Percentage
FROM REVIEW;

-- 7. UPPER() function
SELECT Name, UPPER(Name) AS Uppercase_Name
FROM STUDENT;

-- 8. LENGTH() function
SELECT Title, LENGTH(Title) AS Title_Length
FROM PROJECT;

-- 3. Group Functions

-- 9. COUNT() - Total number of students
SELECT COUNT(*) AS Total_Students
FROM STUDENT;

-- 10. AVG() - Average project review rating
SELECT AVG(Rating) AS Average_Rating
FROM REVIEW;

-- 11. MAX() - Highest review rating
SELECT MAX(Rating) AS Highest_Rating
FROM REVIEW;

-- 12. MIN() - Lowest review rating
SELECT MIN(Rating) AS Lowest_Rating
FROM REVIEW;

-- 13. SUM() - Total of all review ratings
SELECT SUM(Rating) AS Total_Rating
FROM REVIEW;

-- 14. GROUP BY - Count projects in each status
SELECT Status, COUNT(*) AS Total_Projects
FROM PROJECT
GROUP BY Status;

-- 15. GROUP BY - Average rating for each project
SELECT Project_Id, AVG(Rating) AS Average_Rating
FROM REVIEW
GROUP BY Project_Id;

-- 16. HAVING - Show project statuses with more than one project
SELECT Status, COUNT(*) AS Total_Projects
FROM PROJECT
GROUP BY Status
HAVING COUNT(*) > 1;

-- 4. Processing Date and Time Functions

-- 17. CURRENT_DATE() - Display today's date
SELECT CURRENT_DATE() AS Today;

-- 18. YEAR() - Extract the year from project start date
SELECT Title, YEAR(Start_Date) AS Project_Start_Year
FROM PROJECT;

-- 19. DATEDIFF() - Calculate project duration in days
SELECT
    Title,
    DATEDIFF(End_Date, Start_Date) AS Duration_Days
FROM PROJECT
WHERE End_Date IS NOT NULL;

-- 20. DATE_FORMAT() - Format project start date
SELECT
    Title,
    DATE_FORMAT(Start_Date, '%d-%m-%Y') AS Formatted_Start_Date
FROM PROJECT;

-- 5. Complex Queries and Set Operators

-- 21. Nested query - Students belonging to teams
SELECT Name
FROM STUDENT
WHERE Student_Id IN (
    SELECT Student_Id
    FROM MEMBER_OF
);

-- 22. Nested query - Projects with above-average review ratings
SELECT Title
FROM PROJECT
WHERE Project_Id IN (
    SELECT Project_Id
    FROM REVIEW
    WHERE Rating > (
        SELECT AVG(Rating)
        FROM REVIEW
    )
);

-- 23. Nested query - Projects with the highest review rating
SELECT Title
FROM PROJECT
WHERE Project_Id IN (
    SELECT Project_Id
    FROM REVIEW
    WHERE Rating = (
        SELECT MAX(Rating)
        FROM REVIEW
    )
);

-- 24. UNION - Combine project titles and team names
SELECT Title AS Name
FROM PROJECT
UNION
SELECT Team_Name AS Name
FROM TEAM;

-- 25. UNION ALL - Combine project titles and team names, including duplicates
SELECT Title AS Name
FROM PROJECT
UNION ALL
SELECT Team_Name AS Name
FROM TEAM;


-- EXPERIMENT 7
-- 1
CREATE VIEW Hackathon_Achievements AS
SELECT
C.Name AS Hackathon_Name,
C.Year AS Hackathon_Year,
C.Level AS Competition_Level,
P.Title AS Project_Title,
T.Team_Name,
D.Domain_Name,
PI.Result,
PI.Competition_Rank,
PI.Award
FROM COMPETITION C
JOIN PARTICIPATES_IN PI
ON C.Competition_id = PI.Competition_id
JOIN PROJECT P
ON PI.Project_Id = P.Project_Id
JOIN WORKS_ON W
ON P.Project_Id = W.Project_Id
JOIN TEAM T
ON W.Team_Id = T.Team_Id
JOIN DOMAIN D
ON P.Domain_Id = D.Domain_Id;

-- 2
SELECT * FROM Hackathon_Achievements;

-- 3
CREATE VIEW Project_Status_View AS
SELECT Project_Id, Title, Status
FROM PROJECT;

UPDATE Project_Status_View
SET Status = 'Completed'
WHERE Project_Id = 301;

SELECT Project_Id, Title, Status
FROM PROJECT
WHERE Project_Id = 301;

-- 4
CREATE VIEW Student_Count_By_Department AS
SELECT Department, COUNT(*) AS Total_Students
FROM STUDENT
GROUP BY Department;
SELECT * FROM Student_Count_By_Department;


-- New Features
USE project_archive;

SELECT
    P.Project_Id,
    P.Title AS Project_Title,
    P.Status AS Project_Status,
    COUNT(PO.Output_Id) AS Total_Outputs,
    SUM(CASE
        WHEN PO.Output_Type = 'Research Paper' THEN 1
        ELSE 0
    END) AS Research_Papers,
    SUM(CASE
        WHEN PO.Output_Type = 'Patent' THEN 1
        ELSE 0
    END) AS Patents,
    CASE
        WHEN COUNT(PO.Output_Id) = 0
            THEN 'No Outputs Recorded'
        WHEN SUM(CASE
            WHEN PO.Output_Type = 'Research Paper' THEN 1
            ELSE 0
        END) > 0
        AND SUM(CASE
            WHEN PO.Output_Type = 'Patent' THEN 1
            ELSE 0
        END) > 0
            THEN 'Research Paper and Patent Recorded'
        WHEN SUM(CASE
            WHEN PO.Output_Type = 'Research Paper' THEN 1
            ELSE 0
        END) > 0
            THEN 'Research Paper Recorded'
        WHEN SUM(CASE
            WHEN PO.Output_Type = 'Patent' THEN 1
            ELSE 0
        END) > 0
            THEN 'Patent Recorded'
        ELSE 'Other Output Recorded'
    END AS Output_Summary
FROM PROJECT P
LEFT JOIN PROJECT_OUTPUT PO
    ON P.Project_Id = PO.Project_Id
GROUP BY
    P.Project_Id,
    P.Title,
    P.Status
ORDER BY P.Project_Id;

-- change domains
SELECT Domain_Id, Domain_Name
FROM DOMAIN
WHERE Domain_Name = 'Database Management';

UPDATE PROJECT
SET Domain_Id = 432
WHERE Project_Id = 301;

SELECT
    P.Project_Id,
    P.Title,
    D.Domain_Name
FROM PROJECT P
JOIN DOMAIN D
    ON P.Domain_Id = D.Domain_Id
WHERE P.Project_Id = 301;

SELECT
    Project_Id,
    Title,
    CASE Project_Id
        WHEN 301 THEN 'Database Management'
        WHEN 302 THEN 'Artificial Intelligence'
        WHEN 303 THEN 'Internet of Things'
        WHEN 304 THEN 'Data Science'
        WHEN 305 THEN 'Cyber Security'
        WHEN 306 THEN 'E-Commerce'
        WHEN 307 THEN 'Artificial Intelligence'
        WHEN 308 THEN 'Internet of Things'
        WHEN 309 THEN 'Web Development'
        WHEN 310 THEN 'Cyber Security'
    END AS Proposed_Domain
FROM PROJECT
WHERE Project_Id BETWEEN 301 AND 310
ORDER BY Project_Id;

SELECT
    Project_Id,
    Title,
    CASE Project_Id
        WHEN 311 THEN 'Data Science'
        WHEN 312 THEN 'Web Development'
        WHEN 313 THEN 'Internet of Things'
        WHEN 314 THEN 'Artificial Intelligence'
        WHEN 315 THEN 'Web Development'
        WHEN 316 THEN 'Web Development'
        WHEN 317 THEN 'Artificial Intelligence'
        WHEN 318 THEN 'Internet of Things'
        WHEN 319 THEN 'Database Management'
        WHEN 320 THEN 'Cyber Security'
    END AS Proposed_Domain
FROM PROJECT
WHERE Project_Id BETWEEN 311 AND 320
ORDER BY Project_Id;

SELECT
    Project_Id,
    Title,
    CASE Project_Id
        WHEN 321 THEN 'Computer Vision'
        WHEN 322 THEN 'E-Commerce'
        WHEN 323 THEN 'Internet of Things'
        WHEN 324 THEN 'Database Management'
        WHEN 325 THEN 'Artificial Intelligence'
        WHEN 326 THEN 'Cyber Security'
        WHEN 327 THEN 'Mobile App Development'
        WHEN 328 THEN 'Internet of Things'
        WHEN 329 THEN 'E-Commerce'
        WHEN 330 THEN 'Data Science'
    END AS Proposed_Domain
FROM PROJECT
WHERE Project_Id BETWEEN 321 AND 330
ORDER BY Project_Id;

SELECT
    Project_Id,
    Title,
    CASE Project_Id
        WHEN 331 THEN 'Cyber Security'
        WHEN 332 THEN 'Artificial Intelligence'
        WHEN 333 THEN 'Internet of Things'
        WHEN 334 THEN 'Web Development'
        WHEN 335 THEN 'Data Science'
        WHEN 336 THEN 'Computer Vision'
        WHEN 337 THEN 'Mobile App Development'
        WHEN 338 THEN 'Database Management'
        WHEN 339 THEN 'E-Commerce'
        WHEN 340 THEN 'Cyber Security'
        WHEN 341 THEN 'Artificial Intelligence'
        WHEN 342 THEN 'Internet of Things'
        WHEN 343 THEN 'Data Science'
        WHEN 344 THEN 'Web Development'
        WHEN 345 THEN 'Computer Vision'
        WHEN 346 THEN 'Mobile App Development'
        WHEN 347 THEN 'Database Management'
        WHEN 348 THEN 'Cyber Security'
        WHEN 349 THEN 'E-Commerce'
        WHEN 350 THEN 'Artificial Intelligence'
    END AS Proposed_Domain
FROM PROJECT
WHERE Project_Id BETWEEN 331 AND 350
ORDER BY Project_Id;

-- update 
-- Used Transaction

START TRANSACTION;
UPDATE PROJECT
SET Domain_Id = CASE Project_Id
    WHEN 301 THEN 432
    WHEN 302 THEN 402
    WHEN 303 THEN 403
    WHEN 304 THEN 405
    WHEN 305 THEN 404
    WHEN 306 THEN 420
    WHEN 307 THEN 402
    WHEN 308 THEN 403
    WHEN 309 THEN 401
    WHEN 310 THEN 404

    WHEN 311 THEN 405
    WHEN 312 THEN 401
    WHEN 313 THEN 403
    WHEN 314 THEN 402
    WHEN 315 THEN 406
    WHEN 316 THEN 401
    WHEN 317 THEN 402
    WHEN 318 THEN 403
    WHEN 319 THEN 432
    WHEN 320 THEN 404

    WHEN 321 THEN 413
    WHEN 322 THEN 420
    WHEN 323 THEN 403
    WHEN 324 THEN 432
    WHEN 325 THEN 402
    WHEN 326 THEN 408
    WHEN 327 THEN 407
    WHEN 328 THEN 403
    WHEN 329 THEN 420
    WHEN 330 THEN 405

    WHEN 331 THEN 403
    WHEN 332 THEN 404
    WHEN 333 THEN 405
    WHEN 334 THEN 401
    WHEN 335 THEN 405
    WHEN 336 THEN 413
    WHEN 337 THEN 402
    WHEN 338 THEN 401
    WHEN 339 THEN 403
    WHEN 340 THEN 402

    WHEN 341 THEN 432
    WHEN 342 THEN 404
    WHEN 343 THEN 405
    WHEN 344 THEN 402
    WHEN 345 THEN 434
    WHEN 346 THEN 403
    WHEN 347 THEN 438
    WHEN 348 THEN 405
    WHEN 349 THEN 407
    WHEN 350 THEN 434
END
WHERE Project_Id BETWEEN 301 AND 350;

SELECT
    P.Project_Id,
    P.Title,
    D.Domain_Name
FROM PROJECT P
JOIN DOMAIN D
    ON P.Domain_Id = D.Domain_Id
WHERE P.Project_Id BETWEEN 301 AND 350
ORDER BY P.Project_Id;

SELECT
    D.Domain_Id,
    D.Domain_Name,
    COUNT(P.Project_Id) AS Project_Count
FROM DOMAIN D
JOIN PROJECT P
    ON D.Domain_Id = P.Domain_Id
GROUP BY D.Domain_Id, D.Domain_Name
ORDER BY Project_Count DESC, D.Domain_Name;

COMMIT;

SELECT Project_Id, Title, Start_Date
FROM PROJECT
ORDER BY Start_Date, Project_Id;

UPDATE PROJECT
SET Start_Date = CASE Project_Id
    WHEN 310 THEN '2023-01-10'
    WHEN 334 THEN '2023-01-15'
    WHEN 319 THEN '2023-01-20'
    WHEN 311 THEN '2023-02-01'
    WHEN 335 THEN '2023-02-05'
    WHEN 320 THEN '2023-02-15'
    WHEN 304 THEN '2023-03-01'
    WHEN 313 THEN '2023-03-05'
    WHEN 324 THEN '2023-03-10'
END
WHERE Project_Id IN (310, 334, 319, 311, 335, 320, 304, 313, 324);

SELECT Project_Id, Title, Start_Date
FROM PROJECT
WHERE YEAR(Start_Date) = 2023
ORDER BY Start_Date;


UPDATE PROJECT
SET Start_Date = CASE Project_Id
    WHEN 336 THEN '2024-01-15'
    WHEN 314 THEN '2024-02-01'
    WHEN 326 THEN '2024-02-15'
    WHEN 338 THEN '2024-03-01'
    WHEN 316 THEN '2024-03-15'
    WHEN 327 THEN '2024-04-01'
    WHEN 339 THEN '2024-04-15'
    WHEN 317 THEN '2024-05-01'
    WHEN 329 THEN '2024-05-15'
END
WHERE Project_Id IN (336, 314, 326, 338, 316, 327, 339, 317, 329);

SELECT Project_Id, Title, Start_Date
FROM PROJECT
WHERE YEAR(Start_Date) = 2024
ORDER BY Start_Date;

ALTER TABLE PROJECT_OUTPUT
CHANGE COLUMN Identifier Application_or_Paper_ID VARCHAR(255);


-- Rename Output_Date to Filed_Date
ALTER TABLE PROJECT_OUTPUT
CHANGE COLUMN Output_Date Filed_Date DATE;

-- Add Published_Date for research papers
ALTER TABLE PROJECT_OUTPUT
ADD COLUMN Published_Date DATE;

SELECT Output_Id, Title, Status, Filed_Date
FROM PROJECT_OUTPUT
WHERE Output_Type = 'Research Paper'
  AND Status = 'Published'
  AND Filed_Date IS NOT NULL;
  
UPDATE PROJECT_OUTPUT
SET Published_Date = DATE_ADD(Filed_Date, INTERVAL 2 MONTH)
WHERE Output_Id IN (
    SELECT Output_Id
    FROM (
        SELECT Output_Id
        FROM PROJECT_OUTPUT
        WHERE Output_Type = 'Research Paper'
          AND Status = 'Published'
          AND Filed_Date IS NOT NULL
    ) AS PublishedPapers
);

SELECT
    Output_Id,
    Title,
    Status,
    Filed_Date,
    Published_Date
FROM PROJECT_OUTPUT
WHERE Output_Type = 'Research Paper'
ORDER BY Filed_Date;

UPDATE PROJECT
SET End_Date = '2026-10-24'
WHERE Project_Id = 301
  AND Status = 'Completed';
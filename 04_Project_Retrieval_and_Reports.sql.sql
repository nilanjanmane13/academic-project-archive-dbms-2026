
-- =========================================================
-- FINAL PROJECT DASHBOARD
-- =========================================================

USE project_archive;

-- =========================================================
-- SECTION 1: VIEW ALL PROJECTS
-- =========================================================

SELECT
    Project_Id,
    Title,
    Problem_Statement,
    Status
FROM PROJECT
ORDER BY Project_Id;


-- =========================================================
-- SECTION 2: PROJECT DETAILS WITH DOMAIN AND GUIDE
-- =========================================================

SELECT
    P.Project_Id,
    P.Title,
    D.Domain_Name,
    G.Name AS Guide_Name,
    P.Project_type,
    P.Status,
    P.Start_Date,
    P.End_Date
FROM PROJECT P
JOIN DOMAIN D
    ON P.Domain_Id = D.Domain_Id
LEFT JOIN GUIDE G
    ON P.Guide_Id = G.Guide_Id
ORDER BY P.Project_Id;


-- =========================================================
-- SECTION 3: TEAM-WISE PROJECT DETAILS
-- =========================================================

SELECT
    T.Team_Name,
    P.Title,
    P.Problem_Statement,
    P.Status
FROM TEAM T
JOIN WORKS_ON W
    ON T.Team_Id = W.Team_Id
JOIN PROJECT P
    ON W.Project_Id = P.Project_Id
ORDER BY T.Team_Name, P.Title;


-- =========================================================
-- SECTION 4: TECHNOLOGIES USED BY PROJECTS
-- =========================================================

SELECT
    P.Title,
    T.Tech_name,
    T.Category
FROM PROJECT P
JOIN USES U
    ON P.Project_Id = U.Project_Id
JOIN TECHNOLOGY T
    ON U.Tech_id = T.Tech_id
ORDER BY P.Title, T.Tech_name;


-- =========================================================
-- SECTION 5: COMPETITION PARTICIPATION AND RESULTS
-- =========================================================

SELECT
    P.Title,
    C.Name AS Competition_Name,
    C.Level,
    PI.Result,
    PI.Competition_Rank,
    PI.Award
FROM PROJECT P
JOIN PARTICIPATES_IN PI
    ON P.Project_Id = PI.Project_Id
JOIN COMPETITION C
    ON PI.Competition_id = C.Competition_id
ORDER BY P.Title, C.Name;


-- =========================================================
-- SECTION 6: NUMBER OF PROJECTS IN EACH DOMAIN
-- =========================================================

SELECT
    D.Domain_Name,
    COUNT(P.Project_Id) AS Total_Projects
FROM DOMAIN D
LEFT JOIN PROJECT P
    ON D.Domain_Id = P.Domain_Id
GROUP BY D.Domain_Id, D.Domain_Name
ORDER BY Total_Projects DESC, D.Domain_Name;


-- =========================================================
-- SECTION 7: PROJECT COUNT BY STATUS
-- =========================================================

SELECT
    Status,
    COUNT(*) AS Total_Projects
FROM PROJECT
GROUP BY Status
ORDER BY Total_Projects DESC;


-- =========================================================
-- SECTION 8: GUIDE-WISE PROJECT COUNT
-- =========================================================

SELECT
    G.Name AS Guide_Name,
    COUNT(P.Project_Id) AS Total_Projects
FROM GUIDE G
LEFT JOIN PROJECT P
    ON G.Guide_Id = P.Guide_Id
GROUP BY G.Guide_Id, G.Name
ORDER BY Total_Projects DESC, G.Name;

-- =========================================================
-- SECTION 9: YEAR-WISE PROJECT RETRIEVAL
-- =========================================================

-- year wise how many projects

SELECT
    YEAR(Start_Date) AS Project_Year,
    COUNT(*) AS Total_Projects
FROM PROJECT
GROUP BY YEAR(Start_Date)
ORDER BY Project_Year;

-- Year 2023
SELECT
    Project_Id,
    Title,
    Problem_Statement,
    Start_Date,
    End_Date,
    Status
FROM PROJECT
WHERE YEAR(Start_Date) = 2023
ORDER BY Start_Date, Title;

-- Year 2024
SELECT
    Project_Id,
    Title,
    Problem_Statement,
    Start_Date,
    End_Date,
    Status
FROM PROJECT
WHERE YEAR(Start_Date) = 2024
ORDER BY Start_Date, Title;

-- year 2025
SELECT
    Project_Id,
    Title,
    Problem_Statement,
    Start_Date,
    End_Date,
    Status
FROM PROJECT
WHERE YEAR(Start_Date) = 2025
ORDER BY Start_Date, Title;

-- year 2026
SELECT
    Project_Id,
    Title,
    Problem_Statement,
    Start_Date,
    End_Date,
    Status
FROM PROJECT
WHERE YEAR(Start_Date) = 2026
ORDER BY Start_Date, Title;

-- =========================================================
-- SECTION 10: WINNING PROJECTS AND AWARDS
-- =========================================================

SELECT
    P.Project_Id,
    P.Title AS Project_Title,
    C.Name AS Competition_Name,
    PI.Result,
    PI.Competition_Rank,
    PI.Award
FROM PROJECT P
JOIN PARTICIPATES_IN PI
    ON P.Project_Id = PI.Project_Id
JOIN COMPETITION C
    ON PI.Competition_id = C.Competition_id
WHERE PI.Result = 'Winner'
ORDER BY PI.Competition_Rank, P.Title;

-- =========================================================
-- SECTION 11: RESEARCH PAPERS AND PATENTS
-- =========================================================

-- =========================================================
-- SECTION 11A: PATENT RECORDS
-- =========================================================

SELECT
    P.Project_Id,
    P.Title AS Project_Title,
    PO.Title AS Patent_Title,
    PO.Status,
    PO.Application_or_Paper_ID,
    PO.Filed_Date
FROM PROJECT P
JOIN PROJECT_OUTPUT PO
    ON P.Project_Id = PO.Project_Id
WHERE PO.Output_Type = 'Patent'
ORDER BY PO.Filed_Date DESC, P.Title;


-- =========================================================
-- SECTION 11B: RESEARCH PAPER RECORDS
-- =========================================================

SELECT
    P.Project_Id,
    P.Title AS Project_Title,
    PO.Title AS Research_Paper_Title,
    PO.Status AS Publication_Status,
    PO.Application_or_Paper_ID AS Research_Paper_ID,
    PO.Filed_Date,
    PO.Published_Date
FROM PROJECT P
JOIN PROJECT_OUTPUT PO
    ON P.Project_Id = PO.Project_Id
WHERE PO.Output_Type = 'Research Paper'
ORDER BY PO.Filed_Date DESC, P.Title;

-- =========================================================
-- SECTION 12: SEARCH PROJECTS BY KEYWORD
-- =========================================================

-- Query 12.1: Search projects containing 'Smart'
SELECT Project_Id, Title, Problem_Statement, Description, Status
FROM PROJECT
WHERE Title LIKE '%Smart%'
   OR Problem_Statement LIKE '%Smart%'
ORDER BY Title;


-- Query 12.2: Search projects containing 'Student'
SELECT Project_Id, Title, Problem_Statement, Description, Status
FROM PROJECT
WHERE Title LIKE '%Student%'
   OR Problem_Statement LIKE '%Student%'
ORDER BY Title;

-- Query 12.3: Search projects containing 'Data'
SELECT Project_Id, Title, Problem_Statement, Description, Status
FROM PROJECT
WHERE Title LIKE '%Data%'
   OR Problem_Statement LIKE '%Data%'
ORDER BY Title;


-- Query 12.4: Search projects containing 'IoT'
SELECT Project_Id, Title, Problem_Statement, Description, Status
FROM PROJECT
WHERE Title LIKE '%IoT%'
   OR Problem_Statement LIKE '%IoT%'
ORDER BY Title;


-- Query 12.5: Search projects containing 'Management'
SELECT Project_Id, Title, Problem_Statement, Description, Status
FROM PROJECT
WHERE Title LIKE '%Management%'
   OR Problem_Statement LIKE '%Management%'
ORDER BY Title;

-- =========================================================
-- SECTION 13: SEARCH PROJECTS BY STATUS
-- =========================================================

-- Query 13.1: Retrieve projects in progress
SELECT Project_Id, Title, Problem_Statement, Start_Date, End_Date, Status
FROM PROJECT
WHERE Status = 'In Progress'
ORDER BY Title;


-- Query 13.2: Retrieve completed projects
SELECT Project_Id, Title, Problem_Statement, Start_Date, End_Date, Status
FROM PROJECT
WHERE Status = 'Completed'
ORDER BY Title;

-- Query 13.3: Retrieve all projects with their status
SELECT Project_Id, Title, Start_Date, End_Date, Status
FROM PROJECT
ORDER BY Status, Title;

-- =========================================================
-- SECTION 14: PROJECT DURATION REPORT
-- =========================================================

SELECT
    Project_Id,
    Title,
    Start_Date,
    End_Date,
    DATEDIFF(End_Date, Start_Date) AS Project_Duration_Days,
    Status
FROM PROJECT
WHERE Status = 'Completed'
  AND Start_Date IS NOT NULL
  AND End_Date IS NOT NULL
ORDER BY Project_Duration_Days DESC;
CREATE DATABASE insurance_project;
USE insurance_project;

SELECT * FROM insurance_fraud LIMIT 10;
SELECT COUNT(*) FROM insurance_fraud;
DESCRIBE insurance_fraud;  -- It Gives total no of columns and their types

 -- P1:- Overall Fraud rate?
SELECT ROUND(SUM(FraudFound_P) * 100 / COUNT(*),2) AS Fraud_Rate
FROM insurance_fraud;

-- P2:- Which Gender Has Higher Fraud Rate? 
SELECT Sex, COUNT(*) AS Total_Claims,
SUM(FraudFound_P) AS Fraud_Claims,
ROUND(SUM(FraudFound_P) * 100 / COUNT(*), 2) AS Fraud_Rate
FROM insurance_fraud
GROUP BY Sex;

-- P3:- Which Age Group Has Highest Fraud?
SELECT Age_Group, COUNT(*) AS Total_Claims,
SUM(FraudFound_P) AS Fraud_Claims,
ROUND(SUM(FraudFound_P) * 100 / COUNT(*), 2) AS Fraud_Rate
FROM insurance_fraud
GROUP BY Age_Group
ORDER BY Fraud_Rate DESC;

-- P4:- Which Vehicle Category Has Highest Fraud?
SELECT VehicleCategory, COUNT(*) AS Total_Claims,
SUM(FraudFound_P) AS Fraud_Claims,
ROUND(SUM(FraudFound_P) * 100 / COUNT(*), 2) AS Fraud_Rate
FROM insurance_fraud
GROUP BY VehicleCategory
ORDER BY Fraud_Rate DESC;

-- P5:- Does Police Report Affect Fraud? 
SELECT PoliceReportFiled, COUNT(*) AS Total_Claims,
SUM(FraudFound_P) AS Fraud_Claims,
ROUND(SUM(FraudFound_P) * 100 / COUNT(*), 2) AS Fraud_Rate
FROM insurance_fraud
GROUP BY PoliceReportFiled;

-- P6:- Does Witness Presence Affect Fraud?
SELECT WitnessPresent, COUNT(*) AS Total_Claims,
SUM(FraudFound_P) AS Fraud_Claims,
ROUND(SUM(FraudFound_P) * 100 / COUNT(*), 2) AS Fraud_Rate
FROM insurance_fraud
GROUP BY WitnessPresent;

-- P7:- Which Vehicle Price Segment Has Highest Fraud?
SELECT VehiclePrice, COUNT(*) AS Total_Claims,
SUM(FraudFound_P) AS Fraud_Claims,
ROUND(SUM(FraudFound_P) * 100 / COUNT(*), 2) AS Fraud_Rate
FROM insurance_fraud
GROUP BY VehiclePrice
ORDER BY Fraud_Rate DESC;

-- P8:- Does Driver Rating Impact Fraud?
SELECT DriverRating, COUNT(*) AS Total_Claims,
SUM(FraudFound_P) AS Fraud_Claims,
ROUND(SUM(FraudFound_P) * 100 / COUNT(*), 2) AS Fraud_Rate
FROM insurance_fraud
GROUP BY DriverRating
ORDER BY Fraud_Rate DESC;

-- P9:- Which Marital Status Has Highest Fraud?
SELECT MaritalStatus, COUNT(*) AS Total_Claims,
SUM(FraudFound_P) AS Fraud_Claims,
ROUND(SUM(FraudFound_P) * 100 / COUNT(*), 2) AS Fraud_Rate
FROM insurance_fraud
GROUP BY MaritalStatus
ORDER BY Fraud_Rate DESC;

-- P10:- Top Fraud Indicators 
SELECT Fault, PoliceReportFiled, WitnessPresent,
COUNT(*) AS Total_Claims,
SUM(FraudFound_P) AS Fraud_Claims
FROM insurance_fraud
GROUP BY Fault, PoliceReportFiled, WitnessPresent
ORDER BY Fraud_Claims DESC; 






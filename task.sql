-- 1
SELECT COUNT(Wards.Id) AS WardCount, Departments.Name
FROM Wards 
JOIN Departments ON Wards.Id_Department = Departments.Id
GROUP BY Departments.Name
HAVING COUNT(Wards.Id) > 1;

-- 2
SELECT SUM(Places) AS TotalPlaces, Departments.Name
FROM Wards 
JOIN Departments ON Wards.Id_Department = Departments.Id
GROUP BY Departments.Name
HAVING SUM(Places) > 20;

-- 3
SELECT Salary, COUNT(Id) AS DoctorCount
FROM Doctors
GROUP BY Salary
HAVING COUNT(Id) > 1;

-- 4
SELECT FirstName, LastName, (Salary + Premium) AS TotalIncome
FROM Doctors
GROUP BY FirstName, LastName, Salary, Premium
HAVING (Salary + Premium) > 10000;

-- 5
SELECT COUNT(Inspections.Id) AS InspCount, Doctors.FirstName, Doctors.LastName
FROM Inspections 
JOIN Doctors ON Inspections.Id_Doctor = Doctors.Id
GROUP BY Doctors.FirstName, Doctors.LastName
HAVING COUNT(Inspections.Id) > 3;

-- 6
SELECT Wards.Name, COUNT(Inspections.Id) AS InspCount
FROM Inspections
JOIN Wards ON Inspections.Id_Ward = Wards.Id
GROUP BY Wards.Name
HAVING COUNT(Inspections.Id) > 2;

-- 7
SELECT Specializations.Name, COUNT(Inspections.Id) AS UsageCount
FROM Inspections
JOIN Doctors ON Inspections.Id_Doctor = Doctors.Id
JOIN Specializations ON Doctors.Id_Specialization = Specializations.Id
GROUP BY Specializations.Name
HAVING COUNT(Inspections.Id) > 5;

-- 8
SELECT AVG(Salary) AS AvgSalary, Departments.Name
FROM Doctors
JOIN Departments ON Doctors.Id_Department = Departments.Id
GROUP BY Departments.Name
HAVING AVG(Salary) > 7000;
# 1 Write a query to find the addresses
# (LOCATION_ID, DEPARTMENT_NAME, STREET_ADDRESS,
#   CITY, STATE_PROVINCE, COUNTRY_NAME)
#   of all the Departments.

SELECT
  Departments.DEPARTMENT_NAME,
  Locations.STREET_ADDRESS,
  Locations.CITY,
  Locations.STATE_PROVINCE,
  Countries.COUNTRY_NAME
FROM Locations
INNER JOIN Departments
  ON Locations.LOCATION_ID = Departments.LOCATION_ID
INNER JOIN Countries
  ON Locations.COUNTRY_ID = Countries.COUNTRY_ID;



# 2  Write a query to find the name
#    (FIRST_NAME, LAST_NAME),
#    DEPARTMENT_ID and DEPARTMENT_NAME
#    of all the employees.
SELECT
  Employees.FIRST_NAME,
  Employees.LAST_NAME,
  Departments.DEPARTMENT_ID,
  Departments.DEPARTMENT_NAME
FROM Employees
INNER JOIN Departments
  ON Employees.DEPARTMENT_ID = Departments.DEPARTMENT_ID;

# 3 Write a query to find the name
#  (FIRST_NAME, LAST_NAME), JOB_TITLE, DEPARTMENT_NAME
#   and CITY of the employees who works in London.


SELECT
  Employees.FIRST_NAME,
  Employees.LAST_NAME,
  Jobs.JOB_TITLE,
  Departments.DEPARTMENT_NAME,
  Locations.CITY
FROM Employees
INNER JOIN Jobs
  ON Employees.JOB_ID = Jobs.JOB_ID
INNER JOIN Departments
  ON Employees.DEPARTMENT_ID = Departments.DEPARTMENT_ID
INNER JOIN Locations
  ON Departments.LOCATION_ID = Locations.LOCATION_ID
  WHERE Locations.City = "Seattle";


# 4 Write a query to find the EMPLOYEE_ID, EMPLOYEE NAME
#   (FIRST_NAME, LAST_NAME) along
#   with their MANAGER_ID and MANAGER NAME (FIRST_NAME, LAST_NAME)

SELECT
   Workerbee.FIRST_NAME,
   Workerbee.LAST_NAME,
   Workerbee.MANAGER_ID,
   Managers.FIRST_NAME AS Manager_FIRST,
   Managers.LAST_NAME AS Manager_LAST
FROM Employees AS Workerbee
INNER JOIN Employees AS Managers
  ON Workerbee.MANAGER_ID = Managers.EMPLOYEE_ID;





# 5 Write a query to display the DEPARTMENT_ID
#  and DEPARTMENT_NAME and
# Manager name (FIRST_NAME, LAST_NAME).

SELECT DISTINCT
   Departments.MANAGER_ID,
   Departments.DEPARTMENT_NAME,
   Employees.EMPLOYEE_ID,
   Employees.FIRST_NAME,
   Employees.LAST_NAME
FROM Employees
INNER JOIN Departments
  ON Departments.DEPARTMENT_ID = Employees.DEPARTMENT_ID
  WHERE Employees.EMPLOYEE_ID = Departments.MANAGER_ID;

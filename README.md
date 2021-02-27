# SQL-Employee-Challenge

## File Descriptions:
* Data Folder - (6) Employee Data CSV files 

* Entity Relationship Diagram - an ERD was generated based on the available data using GenMyModel (https://app.genmymodel.com/api/login). The ERD was also used to automate the table creation SQL expressions located in the EmployeeSQL\DataEngineering.sql file.

![Employee ERD](https://github.com/pulliam-chris/SQL-Employee-Challenge/blob/main/ERD.png "Employee ERD")

* EmployeeSQL\DataEngineering.sql - creates the empty tables and establishes the table relations for the Employee data.

* POSTGRES
  * --IMPORT CSV's IN ORDER AFTER APPLYING THE COMPLETE DataEngineering.sql script  
  * --from pgAdmin import Salaries from data\salaries.csv  
  * --from pgAdmin import Titles from data\titles.csv  
  * --from pgAdmin import Employees from data\employees.csv  
  * --from pgAdmin import Departments from data\departments_cleaned.csv  
  * --from pgAdmin import Dept_Emp from data\dept_emp.csv (omits 'id' [primary serial key] on import process)  
  * --from pgAdmin import Dept_Mgr from data\dept_manager_cleaned.csv  

* EmployeeSQL\DataAnalysis.sql - the collection of SQL expressions to demonstrate the proper relationships established between the primary and linking tables.

* SQL_Alchemy.ipynb - Creates an engine object and establishes a connection to the local Employee database that was previously created and queried.  Using dataframes the following plots where produced to explore salary trends within the full set of Employees.

![Average Salary by Job Title](https://github.com/pulliam-chris/SQL-Employee-Challenge/blob/main/images/AvgSalary_plot.PNG "Average Salary by Job Title")

![Salary Groupings](https://github.com/pulliam-chris/SQL-Employee-Challenge/blob/main/images/SalaryBins_plot.PNG "Salary Groupings")

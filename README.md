# sql-challenge
## Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Before You Begin
  1. Create a new repository for this project called sql-challenge. Do not add this assignment to an existing repository.
  
  2. Clone the new repository to your computer.
  
  3. Inside your local Git repository, create a directory for this Challenge. Use a folder name that corresponds to the Challenge, such as EmployeeSQL.
  
  4. Note that you’ll add your files to this folder and push the changes to GitHub.

## Files
Download the following files to help you get started:

[Module 9 Challenge files](https://static.bc-edx.com/data/dl-1-2/m9/lms/starter/Starter_Code.zip)
## Instructions
This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

### Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like [QuickDBDLinks](http://www.quickdatabasediagrams.com/)

### Data Engineering
  1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
  
      * Remember to specify the data types, primary keys, foreign keys, and other constraints.
      
      * For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.
      
      * Be sure to create the tables in the correct order to handle the foreign keys.
      
  2. Import each CSV file into its corresponding SQL table.

**HINT**
To avoid errors, import the data in the same order as the corresponding tables got created. And, remember to account for the headers when doing the imports.

### Data Analysis
  1. List the employee number, last name, first name, sex, and salary of each employee.
  
  2. List the first name, last name, and hire date for the employees who were hired in 1986.
  
  3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
  
  4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
  
  5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
  
  6. List each employee in the Sales department, including their employee number, last name, and first name.
  
  7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  
  8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Module 9 Challenge Credits

For this assigment I started using the lecture notes from Lecture 9. Then I used google to find an image that helped me created the code in QuickDBD to sketch the ERD.

To create the tables I used the lecture notes code and modified it to fit the necessary information. In order to write the queries, I used geeksforgeeks.com to learn more about SQL Joins and followed their syntax and examples. For other details like filtering out data starting by a certain letter, I used google. My classmates also help because when someone has questions it gets posted in the groupchat and someone else answers for everyone to see or they post links for resounces and supplementary videos.

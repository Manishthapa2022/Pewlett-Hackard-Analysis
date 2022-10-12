# Pewlett-Hackard-Analysis
---
## **Overview of Analysis**
Pewlett Hackward is a large company boasting several thousand employees annd its been around for a long time. As many of its employees will begin to retire shortly, the company is looking at the future in two ways that is by offering a retirement package for those who meet certain criteria and secondly by checking how many positions will befilled in the future. As a analyst, I have been asked by the company to provide the following deliverables so that the company can prepare well for the `silver tsunami`:
- The number of retiring employees per title
- The employees eligible for an mentorship program
- A written report on the employee database analysis

To easily visualize the relationship between the different tables, a Entity relationship Diagram was created
![Entitiy Relationship Diagram](https://github.com/Manishthapa2022/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

### Results
---
After completing the analyis, the retiring titles table was created to understand the total numbr of employees that will retire.
![Retiring temployees](https://github.com/Manishthapa2022/Pewlett-Hackard-Analysis/blob/main/Images/Retiring_employees.PNG)

* It can be seen that a lot of senior staff that is 25916 Senior Engineers and 24926 Senior Staff will be leaving the organisation. 
* Only 2 managers will retiring which is comparitively negligible as compared to other employees. 

Further analysis of the data was carried out to understand the number of employees who weree eligibile for mentorship and the following results were obtained: 
* In total `1549 employes` have been shortlisted after reviewing the data and carrying out the necessary analysis [Mentorship Eligibility](https://github.com/Manishthapa2022/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibilty.csv).
* The only major selection criiteria for the mentorship pprogramm has been that the employees should be born in 1965 and currently working with the company. NO other factors have been considered such as the time spent with the orgaanization, what level the employee is currently working at and time spent in the role. 

### Summary
---
Based on the above analysis , it can be seen that in total 72458 employees are due to retire and these roles will bbe required to bbe filled. A further analysis by department wise and the number of employees retiring frm each department including their designation would shed more light and individual departmnts can the prepare accoridngly.   

To understand whether we have enough qualified retirement ready employees to mentor the next generator of employees, a further analysis was carried out and following results were obtained. 

![](https://github.com/Manishthapa2022/Pewlett-Hackard-Analysis/blob/main/Images/Eligible_mentors.png)

it can be seen that when we refer this table to the retiring titles tables not enough mentors are available to train the new employees. In total there are 11549 mentors when compared to 72458 retiring employees which is not enough. THis figure is even more profound when only senior staff are being compared. In total 1098 Senior engineers and senior staff members are avilable for mentor ship when compared to 50842 retirees. The company management needs to include more mentors by increasing the age bracket and also considering other factors suuch as time spent with company, and experience in current role. 



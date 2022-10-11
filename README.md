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
After completing analysis based on the first deliverable, the retiring titles tables was create.

After reviewing the table above, it can be seen that 

![]()

### Summary
---
Further analysis was carrried out to understand the number of employees for each department eligible for mentorship and the below table was tabulated using the code:
```Sql
select count(me.emp_no) as "Total Count", me.title
into eligible_mentors
from mentorship_eligibilty as me
group by me.title
order by "Total Count" DESC;
```
![]()
it can be seen that when we refer this table to the retiring titles tables not enough mentors are available to train the new employees. Also, ther are no manager level mentors available to train the new employees and for 24926 retiring senior staff, only 454 are available for the mentorship program.  

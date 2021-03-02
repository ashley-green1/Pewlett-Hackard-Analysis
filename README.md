# Pewlett-Hackard-Analysis



## Project Overview

Pewlett Hackard is faced with an aging workforce and must identify employees who are likely to retire soon.  
Doing so will prepare the organization to effectively manage their human capital and avoid disruptions that could hurt the business. 


Two managers from the Sales and Development departments want to try a new mentoring program for employees getting ready to retire.  At our weekly cross-functional meeting, they presented the following: 
> Instead of having a large chunk of their workforce retiring, they want to introduce a mentoring program: experienced and successful employees stepping back into a part-time role instead of retiring completely. Their new role in the company would be as a mentor to the newly hired folks. Before they can present their idea to the CEO, they'd like to have an idea of how many people between the departments they would need to pitch their idea to.
> 


Following the meeting, I am tasked with analyzing 6 CSV files where Pewlett Hackard stores their employee data.  To do so, I will be using MySQL, a relationship database management system.   


Here is a quick view showing how each of the 6 files relate to one another, as well as, the data that each file stores.

![Employee Database](https://github.com/ashley-green1/Pewlett-Hackard-Analysis/blob/master/EmployeeDB.png)

As you can see, relying on memory can make it tricky to keep up with the critical data and which file its stored.  Especially with people moving in and out of the organization.  This is where MySQL becomes in and makes things a tad easier.

Now on to our analysis...


## Resources

- Data Source: employees.csv, departments.csv, dept_emp.csv, dept_manager.csv, salaries.csv, titles.csv
- Software: "PostgreSQL 11.11, compiled by Visual C++ build 1914, 64-bit"


## Analysis Results

### Retiring Titles
Here are the major takeaways based on analyzing employees born betwen 1952-1955 who work in the sales or development departments:
*  90,398 employees may be retiring soon
*  57,668 senior level employees may be retiring soon
*  2 managers may be retiring soon
*  Senior Engineers & Senior Staff make up 63.7% of the potential retirees
  
![Retiring Titles](https://github.com/ashley-green1/Pewlett-Hackard-Analysis/blob/master/retiring_titles.png)

### Mentorship Eligibility

The major takeaways from discerning which employees may be a fit for the mentorship program are as follows:
*  Eligible employees are born in 1965 and do not have a termination date established.
*  Based on this criteria, only 1,550 employees are eligible for the mentorship program based 
*  Senior level employes make up 47.8% of the eligible mentors
*  None of the eligible mentors are managers

## Analysis Summary

The analysis revealed that Pewlett Hackard has some challenges ahead with training the new talent that will replace its aging workforce.  If each of the 1,550 eligible mentors were to accept the new role, they'd each be assigned approximately 60 new employees.  That is quite a lot to ask of someone who's looking forward to retiring. 

Though the Mentorship Eligibility program is a good idea, a deeper dive is necessary to determine if the idea can come to fruition. For example, it would be good to know how many senior level engineers are eligible for the mentiorship program and how many new engineers they'd need to mentor. Depending on how the mentoring and training are designed, 60 new employees may not seem challenging. The same deeper dive can be done with the other titles as well.  From there, it would be prudent to get feedback from potential mentors to fine tune the Mentorship Eligibility program.



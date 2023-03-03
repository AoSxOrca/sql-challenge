CREATE TABLE titles (title_id CHAR(5) PRIMARY key,
                     title VARCHAR(20) NOT NULL
                    );

 
CREATE TABLE employees (emp_no INTEGER PRIMARY KEY,
                        emp_title_id  char(5) NOT NULL,
                        birth_date DATE ,
                        first_name  VARCHAR(40) NOT NULL,
                        last_name  VARCHAR(40) NOT NULL,
                        sex CHAR(1) not NULL,
                        hire_date VARCHAR(10) NOT NULL,
                        
                        FOREIGN key(emp_title_id) REFERENCES titles(title_id)
                       );
					   

CREATE TABLE salaries (emp_no INTEGER PRIMARY key,
                       salary INTEGER NOT NULL,
                      FOREIGN key (emp_no) REFERENCES employees (emp_no)
                      );
					  
					  

 CREATE TABLE departments (dept_no CHAR(5) PRIMARY KEY,
                          dept_name VARCHAR(20) NOT NULL
                         );
                         
						 
CREATE TABLE dept_emp (emp_no INTEGER NOT NULL,
                       dept_no CHAR(5) NOT NULL,
                       PRIMARY key( emp_no, dept_no),
                       
                       FOREIGN key(emp_no) REFERENCES employees(emp_no),
                       FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
                      );
					  
					  
CREATE TABLE dept_manager (dept_no CHAR(5) NOT NULL,
                           emp_no INTEGER NOT NULL,
                           
                           PRIMARY key( dept_no, emp_no),
                           
                           FOREIGN key(dept_no) REFERENCES departments(dept_no),
                           FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
                          );					  
					   
					   
					   
					   
					   
					   
	
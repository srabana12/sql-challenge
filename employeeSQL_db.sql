CREATE TABLE departments (
  dept_no SERIAL PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
  title_id SERIAL PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
  emp_no SERIAL PRIMARY KEY,
  emp_title_id INTEGER NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
  birth_date DATE NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  sex VARCHAR NOT NULL,
  hire_date DATE NOT NULL
);

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no INTEGER NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
  dept_no INTEGER NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no) 
);

CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INTEGER NOT NULL
);
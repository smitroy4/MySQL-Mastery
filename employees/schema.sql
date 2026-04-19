CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    
    hire_date DATE NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    
    salary DECIMAL(10,2) NOT NULL CHECK (salary > 0),
    
    manager_id INT,
    
    address TEXT,
    
    status ENUM('Active', 'Inactive', 'Terminated') DEFAULT 'Active',
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_manager
        FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
        ON DELETE SET NULL
);
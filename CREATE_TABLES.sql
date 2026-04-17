-- CREATE TABLES --
-- 1. VESSELS TABLE (port schema)
--- vessel_id is the PRIMARY KEY - unique, not null (PK is a unique column identifier usually not null)

CREATE TABLE port.vessels (
	vessel_id INT IDENTITY PRIMARY KEY,
	vessel_name VARCHAR (100) NOT NULL,
	vessel_type VARCHAR(50),
	country_of_origin VARCHAR(50),
	gross_tonnage DECIMAL(10,2)
);


-- 2. BERTHS TABLE (port schema)
CREATE TABLE port.berths (
	berth_id INT IDENTITY PRIMARY KEY,
	berth_number VARCHAR(20) NOT NULL,
	berth_type VARCHAR(20),
	capacity_tons DECIMAL(10, 2)
);

-- 3.PORT OPERATIONS TABLE (port schema)
-- vessel_id is FOREIGN KEY referencing port.vessels
-- berth_id is FOREIGN KEY referencing port.berths

CREATE TABLE port.operations (
	operation_id INT IDENTITY PRIMARY KEY NOT NULL,
	vessel_id INT FOREIGN KEY REFERENCES port.vessels(vessel_id),
	berth_id INT FOREIGN KEY REFERENCES port.berths(berth_id),
	operation_date DATETIME NOT NULL,
	operation_type VARCHAR(50),  ---e.g. loading, offloading
	cargo_tons DECIMAL(10, 2),
);


/*
CREATE TABLE port.operations(
	operation_id INT IDENTITY PRIMARY KEY,
	vessel_id INT FOREIGN KEY REFERENCES port.vessels(vessel_id)
	berth_id INT FOREIGN KEY REFERENCES port.berths(berth_id)
	operation_type VARCHAR(100),
	operation_date DATETIME,
	cargo_tons DECIMAL(10, 2)
);

*/

-- 4. EMPLOYEE TABLE (hr schema)
-- supervisor_id references employee_id in the SAME table
-- This enables self join

CREATE TABLE hr.employees (
	employee_id INT IDENTITY PRIMARY KEY NOT NULL,
	employee_name VARCHAR(100),
	department VARCHAR(255),
	salary DECIMAL (10, 2),
	supervisor_id INT FOREIGN KEY REFERENCES hr.employees(employee_id)
	-- supervisor_id points back to the same table which enables self join
);

-- 5. VESSEL AUDITS TABLE (for duplicate lesson)

CREATE TABLE port.vessel_arrivals(
	arrival_id INT IDENTITY PRIMARY KEY NOT NULL,
	vessel_name VARCHAR(255),
	arrival_date DATETIME,
	berth_number VARCHAR(20)

);














-- POPULATE TABLES WITH SAMPLE DATA
-- Insert vessels

INSERT INTO port.vessels(vessel_name, vessel_type, country_of_origin, gross_tonnage)
VALUES
('MV Bonny', 'Tanker', 'Nigeria', 45000.00),
('MV Lagos', 'Cargo', 'Ghana', 32000.00),
('MV Delta', 'Bulk Carrier', 'Liberia', 58000.00),
('MV Warri', 'Container', 'Nigeria', 27000.00),
('MV Port Harcourt', 'Tanker', 'Cameroon', 41000.00);


-- Insert berths
INSERT INTO port.berths(berth_number, berth_type, capacity_tons)
VALUES
('Berth 1', 'Tanker Berth', 50000.00),
('Berth 2', 'Cargo Berth', 35000.00),
('Berth 3', 'Bulk Berth', 60000.00),
('Berth 4', 'Container Berth', 30000.00);

-- Insert Port Operations
-- Note: MV Delta (vessels_id=3) has NO operation - useful for LEFT JOIN lesson

INSERT INTO port.operations(vessel_id, berth_id, operation_date, operation_type, cargo_tons)
VALUES
('1','1','2026-01-15','offloading',40000),
('2','2','2026-01-16','loading',28000),
('4','4','2026-01-17','loading',22000),
('5','1','2026-01-18','offloading',38000);

-- Berth 3 has no vessel -- useful for FULL OUTER JOIN lesson

-- Insert Employees (including supervisor hierarchy)
INSERT INTO hr.employees(employee_name, department, salary, supervisor_id)
VALUES
('Mr. Tunde','Management', 500000.00, NULL), -- employee_id = 1, no supervisor(top)
('Mrs. Ahmed','Operations', 350000.00, 1), -- employee_id = 2, reports to Mr.Tunde
('John Obi','Port', 250000.00, 2),			--- employee_id = 3 reports to Mrs. Ahmed
('Mr. Serah Eze','Terminal', 240000.00, 2), -- employee_id = 4 reports to Mrs. Ahmed
('Mike Dike','Logistics', 230000.00, 1); -- employee_id = 5 reports to Mr. Tunde

-- insert vessel arrivals (with DUPLICATES for demo)
 INSERT INTO port.vessel_arrivals (vessel_name, arrival_date, berth_number)
VALUES
('MV Bonny', '2024-01-10', 'Berth 1'),
('MV Bonny', '2024-01-10', 'Berth 1'), -- DUPLICATE	
('MV Bonny', '2024-01-10', 'Berth 1'), -- DUPLICATE
('MV Lagos', '2024-01-11', 'Berth 2'),
('MV Lagos', '2024-01-11', 'Berth 2'), -- DUPLICATE
('MV Delta', '2024-01-12', 'Berth 3');



)







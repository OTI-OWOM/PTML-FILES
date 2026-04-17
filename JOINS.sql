--- ALL JOIN TYPES WITH PTML EXAMPLES -- 

-- INNER JOIN --
-- Returns ONLY vessels that have matching operations
-- MV Delta will NOT appear (no operation logged)
 SELECT 
	v.vessel_name,
	v.vessel_type,
	o.operation_type,
	o.operation_date,
	o.cargo_tons
FROM
	port.vessels v
	INNER JOIN port.operations o ON v.vessel_id = o.vessel_id; 



-- LEFT JOIN
-- Returns ALL vessels + their operations
-- MV Detail WILL appear with NULL on the operations side 

SELECT
	v.vessel_name,
	v.vessel_type,
	o.operation_type,
	o.operation_date,
	o.cargo_tons
FROM
	port.vessels v
	LEFT JOIN port.operations o ON v.vessel_id = o.vessel_id; */

-- RIGHT JOIN
-- Returns ALL operations + their vessels
-- Any operation with no matching vessel appears with NULL

SELECT
	v.vessel_name,
	o.operation_type,
	o.operation_date,
	o.cargo_tons
FROM port.vessels v
RIGHT JOIN port.operations o ON v.vessel_id = v.vessel_id; 

--FULL OUTER JOIN
-- Returns ALL vessels and ALL operations
-- MV Delta (no operation) = NULL on operations side
-- Berth 3 (no vessels assigned) = NULL on vessel side

 SELECT
	v.vessel_name,
	b.berth_number,
	o.operation_type,
	o.operation_date
FROM port.vessels v
FULL OUTER JOIN port.operations o ON v.vessel_id = o.vessel_id
FULL OUTER JOIN port.berths b ON o.berth_id = b.berth_id



-- CROSS JOIN
-- Returns Every possible combination of vessels and berths
-- 5 vessels x 4 berths = 20 rows (useful for berth planning)

 SELECT
	v.vessel_name,
	b.berth_type,
	b.berth_number
FROM port.vessels v
CROSS JOIN port.berths b; 



-- SELF JOIN
-- Joins hr.employees table to ITSELF
-- Shows each employee alongside their supervisor

SELECT
	e.employee_name AS employee,
	e.department,
	s.employee_name AS supervisor
FROM hr.employees e
LEFT JOIN hr.employees s ON e.supervisor_id = s.employee_id;
-- Mr. Tunde will show NULL for supervisor (he is the top)



/*				JOIN QUICK REFERENCES

   INNER JOIN      → Only matching records on BOTH sides
   LEFT JOIN       → All from LEFT + matches from right (NULL if no match)
   RIGHT JOIN      → All from RIGHT + matches from left (NULL if no match)
   FULL OUTER JOIN → Everything from BOTH sides (NULL where no match)
   CROSS JOIN      → Every possible combination of rows
   SELF JOIN       → Table joined to ITSELF (hierarchy/org chart)
*/










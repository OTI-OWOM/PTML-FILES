
-- INDEXES
-- speeds up lookup from frequently searched columns

-- Clustered Index: Already created automatically by PRIMARY KEY

-- Non-Clustered Index: speed up serach by vessel_name
CREATE INDEX idx_vessel_name
ON port.vessels(vessel_name);


-- Non-Clustered Index: speed up search by operation_date
CREATE INDEX idx_operation_date
ON port.operations(operation_date);

/*
	TRADE-OFF
	Indexes speed up SELECT queries
	but slows down INSERT, UPDATE and DELETE operations
	because the index must also be updated when data changes
*/

/*

CREATE INDEX idx_vessel_name
ON port.vessel_arrivals(vessel_name);


CREATE INDEX idx_arrival_date
ON port.vessel_arrivals(arrival_date);

*/
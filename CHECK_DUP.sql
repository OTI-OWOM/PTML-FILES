
-- CHECK FOR DUPLICATES
/*--METHOD 1 - Find duplicates using GROUP BY + HAVING
SELECT 
	vessel_name,
	COUNT(*) AS occurrence
FROM
	port.vessel_arrivals

GROUP BY
	vessel_name
HAVING
	COUNT(*) > 1;
*/


/*
SELECT
	vessel_name,
	COUNT(*) AS occurrence
FROM
	port.vessel_arrivals
GROUP BY 
	vessel_name
HAVING
	COUNT(*) > 1;





*/
-- METHOD 2: see full duplicate rows using ROW_NUMBER() 
WITH cte AS (
	SELECT *,
		ROW_NUMBER() OVER (
		PARTITION BY vessel_name
		ORDER BY arrival_id
	) AS row_num
	FROM port.vessel_arrivals
)
SELECT * FROM cte WHERE row_num > 1;


/*

WITH cte AS (
	SELECT
		*,
	ROW_NUMBER()OVER (
	PARTITION BY vessel_name,
	ORDER BY arrival_id
	) AS row_num
	FROM port.vessel_arrivals
)
SELECT * FROM cte WHERE row_num > 1;


*/

--- METHOD 3: DELETE duplicates, keep only first occurrence

/*
WITH cte AS (
	SELECT *,
	ROW_NUMBER() OVER(
		PARTITION BY vessel_name
		ORDER BY arrival_id
	) AS row_num
	FROM port.vessel_arrivals
)
DELETE FROM cte WHERE row_num > 1;
*/


/*

WITH cte AS (
	SELECT
		*,
	ROW_NUMBER() OVER (
		PARTITION BY vessel_name,
		ORDER BY arrival_id
	) AS row_num
	FROM port.vessel_arrivals
)
DELETE FROM cte WHERE row_num > 1;

*/
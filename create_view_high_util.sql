-- Create a view of utilizations in last six months
-- View includes names from cap_list table

CREATE VIEW high_utilizers AS
	SELECT a.subscriber_id, a.admission_id, b.memb_first_name, b.memb_last_name, a.admit_date, a.discharge_date, a.ed6mo	
	FROM utilization a, cap_list b
	WHERE a.ed6mo > 6
	AND a.subscriber_id = b.subscriber_id;
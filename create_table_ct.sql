-- create client track table

CREATE TABLE client_track (
	admission_id varchar REFERENCES utilization (admission_id),
	encounter varchar,
	encounter_date date,
	hours numeric,
	pra_id varchar REFERENCES pra_list (pra_id),
	spec_ops_id varchar REFERENCES spec_ops (spec_ops_id)
);
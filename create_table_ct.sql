-- create client track table
CREATE TABLE client_track (
	admission_id varchar REFERENCES utilization (admission_id),
	encounter varchar,
	encounter_date date,
	hours numeric,
	pra_id varchar REFERENCES pra (pra_id),
	spec_ops_id varchar REFERENCES spec_ops (spec_ops_id)
);

-- add comment to this table
COMMENT ON TABLE client_track IS 'Client Track';

-- add comments to the columns
COMMENT ON COLUMN client_track.admission_id IS 'ID generated for hospital admission';
COMMENT ON COLUMN client_track.encounter IS 'Type of encounter by staff';
COMMENT ON COLUMN client_track.encounter_date IS 'Date of encounter';
COMMENT ON COLUMN client_track.hours IS 'Time spent by staff on encounter';
COMMENT ON COLUMN client_track.pra_id IS 'Unique record number for PRA patients';
COMMENT ON COLUMN client_track.spec_ops_id IS 'Unique record number for special operations patients';

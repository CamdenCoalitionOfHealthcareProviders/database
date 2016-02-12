-- creates capitation list table
CREATE TABLE cap_list (
	hie_id varchar,
	subscriber_id varchar,
	practice char,
	last_cap_date date,
	payer char,
	source char,	
	PRIMARY KEY (subscriber_id)
);

-- add comment to this table
COMMENT ON TABLE cap_list IS 'Capitation List';

-- add comments to the columns
COMMENT ON COLUMN cap_list.hie_id IS 'HIE ID generated by CareEvolution';
COMMENT ON COLUMN cap_list.subscriber_id IS 'ID generated by insurance company';
COMMENT ON COLUMN cap_list.practice IS 'Patient PCP';
COMMENT ON COLUMN cap_list.last_cap_date IS 'Most recent capitation month';
COMMENT ON COLUMN cap_list.payer IS 'United or Horizon';
COMMENT ON COLUMN cap_list.source IS 'Where each cap list(s) originates from';
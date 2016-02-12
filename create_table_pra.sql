-- create perinatal risk assessment table
CREATE TABLE pra (
	subscriber_id varchar REFERENCES cap_list (subscriber_id),
	pra_id varchar,
	lmpdt date,
	edcdt date,
	preg_status char,
	hie_id varchar,
	PRIMARY KEY (pra_id)
);

-- add comment to this table
COMMENT ON TABLE pra IS 'Perinatal Risk Assessment';

-- add comments to the columns
COMMENT ON COLUMN pra.subscriber_id IS 'ID generated by insurance company';
COMMENT ON COLUMN pra.pra_id IS 'Unique record number for PRA patients';
COMMENT ON COLUMN pra.lmpdt IS 'Last Menstrual Period Date';
COMMENT ON COLUMN pra.edcdt IS 'Estimated Date of Confinement';
COMMENT ON COLUMN pra.preg_status IS 'Pregnancy status';
COMMENT ON COLUMN pra.hie_id IS 'HIE ID generated by CareEvolution';
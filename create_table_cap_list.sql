-- creates capitation list table
CREATE TABLE cap_list (
	hie_id varchar,
	subscriber_id varchar,
	unique_id varchar,
	practice varchar,
	dob varchar,
	medicaid_no varchar,
	medicare_no varchar,
	memb_first_name varchar,
	memb_last_name varchar,
	memb_add_1 varchar,
	memb_add_2 varchar,
	memb_city varchar,
	memb_st varchar,
	memb_zip varchar,
	memb_add varchar,
	ssn varchar,
	gender varchar,
	memb_eth varchar,
	memb_lang varchar,
	home_phone varchar,
	bus_phone varchar,
	curr_pcp_id varchar,
	curr_pcp_full_name varchar,
	phone_number varchar,
	curr_pcp_address_line_1 varchar,
	curr_pcp_address_line_2 varchar,
	curr_pcp_city varchar,
	curr_pcp_st varchar,
	curr_pcp_zip varchar,
	pcp_add varchar,
	vend_id varchar,
	vend_full_name varchar,
	irs_tax_id varchar,
	memb_dim_id varchar,
	future_risk_costs varchar,
	future_costs varchar,
	prior_total_costs_annual varchar,
	prior_rx_costs_annual varchar,
	future_rx_costs varchar,
	memb_months varchar,
	memb_months_total varchar,
	last_cap_date varchar,
	prim_risk_factor varchar,
	prev_cap_date  varchar,
	create_date varchar,
	high_risk_cohort varchar,
	payer varchar,
	source varchar,
	xover_prog varchar,
	xover_prog_other varchar,
	span_speaking varchar,
	homeless varchar,
	notes_archive varchar,
	notes_util_recent varchar,
	PRIMARY KEY (subscriber_id)
);

-- add comment to this table
COMMENT ON TABLE cap_list IS 'Capitation List';

-- add comments to the columns
COMMENT ON COLUMN cap_list.hie_id IS 'HIE ID generated by CareEvolution';
COMMENT ON COLUMN cap_list.subscriber_id IS 'ID generated by insurance company';
COMMENT ON COLUMN cap_list.unique_id IS 'ID based on member first and last name and DOB';
COMMENT ON COLUMN cap_list.practice IS 'Patient PCP';
COMMENT ON COLUMN cap_list.dob IS 'date of birth';
COMMENT ON COLUMN cap_list.medicaid_no IS 'member medicaid number';
COMMENT ON COLUMN cap_list.medicare_no IS 'member medicare number';
COMMENT ON COLUMN cap_list.memb_first_name IS 'member first name';
COMMENT ON COLUMN cap_list.memb_last_name IS 'member last name';
COMMENT ON COLUMN cap_list.memb_add_1 IS 'member address line 1';
COMMENT ON COLUMN cap_list.memb_add_2 IS 'member address line 2';
COMMENT ON COLUMN cap_list.memb_city IS 'member city';
COMMENT ON COLUMN cap_list.memb_st IS 'member state';
COMMENT ON COLUMN cap_list.memb_zip IS 'member zip';
COMMENT ON COLUMN cap_list.memb_add IS 'member concatenated address';
COMMENT ON COLUMN cap_list.ssn IS 'member social security number';
COMMENT ON COLUMN cap_list.gender IS 'member gender';
COMMENT ON COLUMN cap_list.memb_eth IS 'member ethnicity';
COMMENT ON COLUMN cap_list.memb_lang IS 'member language';
COMMENT ON COLUMN cap_list.home_phone IS 'member home phone number';
COMMENT ON COLUMN cap_list.bus_phone IS 'member business phone number';
COMMENT ON COLUMN cap_list.curr_pcp_id IS 'current pcp id number';
COMMENT ON COLUMN cap_list.curr_pcp_full_name IS 'current pcp full name';
COMMENT ON COLUMN cap_list.phone_number IS 'current pcp phone number';
COMMENT ON COLUMN cap_list.curr_pcp_address_line_1 IS 'current pcp address line 1';
COMMENT ON COLUMN cap_list.curr_pcp_address_line_2 IS 'current pcp address line 2';
COMMENT ON COLUMN cap_list.curr_pcp_city IS 'current pcp city';
COMMENT ON COLUMN cap_list.curr_pcp_st IS 'current pcp state';
COMMENT ON COLUMN cap_list.curr_pcp_zip IS 'current pcp zip';
COMMENT ON COLUMN cap_list.pcp_add IS 'current pcp concatenated address';
COMMENT ON COLUMN cap_list.vend_id IS 'vendor ID number';
COMMENT ON COLUMN cap_list.vend_full_name IS 'vendor full name';
COMMENT ON COLUMN cap_list.irs_tax_id IS 'IRS tax ID';
COMMENT ON COLUMN cap_list.memb_dim_id IS '';
COMMENT ON COLUMN cap_list.future_risk_costs IS 'future risk costs';
COMMENT ON COLUMN cap_list.future_costs IS 'future costs';
COMMENT ON COLUMN cap_list.prior_total_costs_annual IS 'prior total costs annualized';
COMMENT ON COLUMN cap_list.prior_rx_costs_annual IS 'prior prescription costs annualized';
COMMENT ON COLUMN cap_list.future_rx_costs IS 'future prescription costs annualized';
COMMENT ON COLUMN cap_list.memb_months IS 'member months';
COMMENT ON COLUMN cap_list.memb_months_total IS 'total member months';
COMMENT ON COLUMN cap_list.last_cap_date IS 'Most recent capitation month';
COMMENT ON COLUMN cap_list.prim_risk_factor IS 'primary risk factor';
COMMENT ON COLUMN cap_list.prev_cap_date  IS 'previous capitation date';
COMMENT ON COLUMN cap_list.create_date IS 'created date';
COMMENT ON COLUMN cap_list.high_risk_cohort IS 'high risk cohort';
COMMENT ON COLUMN cap_list.payer IS 'United or Horizon';
COMMENT ON COLUMN cap_list.source IS 'Where each cap list(s) originates from';
COMMENT ON COLUMN cap_list.xover_prog IS 'crossover program';
COMMENT ON COLUMN cap_list.xover_prog_other IS 'other crossover program';
COMMENT ON COLUMN cap_list.span_speaking IS 'spanish speaking';
COMMENT ON COLUMN cap_list.homeless IS 'currently homeless';
COMMENT ON COLUMN cap_list.notes_archive IS 'all notes archive ';
COMMENT ON COLUMN cap_list.notes_util_recent IS 'most recent utilization notes';

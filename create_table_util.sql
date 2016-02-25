-- create utilization tracker table
CREATE TABLE utilization (
	subscriber_id varchar REFERENCES cap_list (subscriber_id),
	admission_id varchar,
	admit_date varchar,
	discharge_date varchar,
	provider varchar,
	current_admit varchar,
	facility varchar,
	patient_class varchar,
	dx_currentdx varchar,
	dx_historical varchar,
	inp6mo numeric,
	inp6mo_util numeric,
	ed6mo numeric,
	ed6mo_util numeric,
	chart_review_notes varchar,
	typology varchar,
	engage varchar,
	rule_out_reason varchar,
	rule_out_reason_other varchar,
	call_assigned_to varchar,
	bedside_assigned_to varchar,
	workflow_complete_date varchar,
	engage_date varchar,
	bedside_not_possible_reason varchar,
	phone_current varchar,
	facility_description varchar,
	deceased_date varchar,
	appt_sched_date varchar,
	appt_status varchar,
	gift_card_eligible_exception varchar,
	notes varchar,
	acr varchar,
	assigned_to varchar,
	util_practice varchar,
	util_source varchar,
	util_outcome varchar,
	call_assigned_cchp varchar,
	taxi varchar,
	taxi_sched varchar,
	taxi_time varchar,
	name_incorrect varchar,
	name_correct varchar,
	name_error_reason varchar,
	bedside_assign_date varchar,
	hosp_room varchar,
	util_outcome_other varchar,
	util_outcome_cat varchar,
	reason_cmi_ineligible varchar,
	bed_engage_outcome varchar,
	bed_engage_outcome_reason varchar,
	bed_engage_outcome_reason_other varchar,
	hie_error_desc varchar,
	hie_error_status varchar,
	hie_res_date varchar,
	hie_res_note varchar,
	preg_risk_factors varchar,
	dx_cat_1 varchar,
	dx_cat_2 varchar,
	dx_cat_3 varchar,
	chief_complaint_1 varchar,
	chief_complaint_2 varchar,
	chief_complaint_3 varchar,
	PRIMARY KEY (admission_id)
);

-- add comment to this table
COMMENT ON TABLE utilization IS 'Patient Utilizations';

-- add comments to the columns
COMMENT ON COLUMN utilization.subscriber_id IS 'ID generated by insurance company';
COMMENT ON COLUMN utilization.admission_id IS 'Utilization admission ID';
COMMENT ON COLUMN utilization.admit_date IS 'admission date';
COMMENT ON COLUMN utilization.discharge_date IS 'discharge date';
COMMENT ON COLUMN utilization.provider IS 'provider';
COMMENT ON COLUMN utilization.current_admit IS 'currently admitted';
COMMENT ON COLUMN utilization.facility IS 'facility';
COMMENT ON COLUMN utilization.patient_class IS 'patient class';
COMMENT ON COLUMN utilization.dx_currentdx IS 'current diagnosis';
COMMENT ON COLUMN utilization.dx_historical IS 'historic diagnosis';
COMMENT ON COLUMN utilization.inp6mo IS 'inpatient admissions in last six months';
COMMENT ON COLUMN utilization.inp6mo_util IS 'inpatient admissions in last six months at time of utilization';
COMMENT ON COLUMN utilization.ed6mo IS 'emergency department admissions in last six months';
COMMENT ON COLUMN utilization.ed6mo_util IS 'emergency department admissions in last six months at time of utilization';
COMMENT ON COLUMN utilization.chart_review_notes IS 'chart review notes';
COMMENT ON COLUMN utilization.typology IS 'typology';
COMMENT ON COLUMN utilization.engage IS 'engage patient';
COMMENT ON COLUMN utilization.rule_out_reason IS 'rule out reason';
COMMENT ON COLUMN utilization.rule_out_reason_other IS 'other rule out reason';
COMMENT ON COLUMN utilization.call_assigned_to IS 'Coalition staff member assigned to call patient';
COMMENT ON COLUMN utilization.bedside_assigned_to IS 'Coalition staff member assigned to bedside';
COMMENT ON COLUMN utilization.workflow_complete_date IS 'Date workflow complete';
COMMENT ON COLUMN utilization.engage_date IS 'Date patient engaged';
COMMENT ON COLUMN utilization.bedside_not_possible_reason IS 'Reason bedside engagement not possible';
COMMENT ON COLUMN utilization.phone_current IS 'Patient current phone';
COMMENT ON COLUMN utilization.facility_description IS 'Facility description';
COMMENT ON COLUMN utilization.deceased_date IS 'Patient deceased date';
COMMENT ON COLUMN utilization.appt_sched_date IS 'Appointment schedule date';
COMMENT ON COLUMN utilization.appt_status IS 'Appointment status';
COMMENT ON COLUMN utilization.gift_card_eligible_exception IS 'Patient is gift card eligible';
COMMENT ON COLUMN utilization.notes IS 'Notes';
COMMENT ON COLUMN utilization.acr IS 'ACR patient';
COMMENT ON COLUMN utilization.assigned_to IS 'Where patient is assigned to';
COMMENT ON COLUMN utilization.util_practice IS 'Practice at utilization';
COMMENT ON COLUMN utilization.util_source IS 'Source at utilization';
COMMENT ON COLUMN utilization.util_outcome IS 'Utilization outcome';
COMMENT ON COLUMN utilization.call_assigned_cchp IS 'Call assigned to CCHP';
COMMENT ON COLUMN utilization.taxi IS 'Patient requires taxi';
COMMENT ON COLUMN utilization.taxi_sched IS 'Taxi transportation is scheduled';
COMMENT ON COLUMN utilization.taxi_time IS 'Taxi time';
COMMENT ON COLUMN utilization.name_incorrect IS 'Is this an incorrect name';
COMMENT ON COLUMN utilization.name_correct IS 'Correct name';
COMMENT ON COLUMN utilization.name_error_reason IS 'Reason for name error';
COMMENT ON COLUMN utilization.bedside_assign_date IS 'Bedside assignment date';
COMMENT ON COLUMN utilization.hosp_room IS 'Hospital room';
COMMENT ON COLUMN utilization.util_outcome_other IS 'Other utilization outcome';
COMMENT ON COLUMN utilization.util_outcome_cat IS 'Utilization outcome category';
COMMENT ON COLUMN utilization.reason_cmi_ineligible IS 'Reason ineligible for CMI intervention';
COMMENT ON COLUMN utilization.bed_engage_outcome IS 'Bedside engagement outcome';
COMMENT ON COLUMN utilization.bed_engage_outcome_reason IS 'Bedside engagement outcome reason';
COMMENT ON COLUMN utilization.bed_engage_outcome_reason_other IS 'Bedside engagement outcome other reason';
COMMENT ON COLUMN utilization.hie_error_desc IS 'HIE error description';
COMMENT ON COLUMN utilization.hie_error_status IS 'HIE Error Status';
COMMENT ON COLUMN utilization.hie_res_date IS 'HIE Resolution Date';
COMMENT ON COLUMN utilization.hie_res_note IS 'HIE Resolution Note';
COMMENT ON COLUMN utilization.preg_risk_factors IS 'Pregnancy Risk Factors';
COMMENT ON COLUMN utilization.dx_cat_1 IS 'Diagnosis Category 1';
COMMENT ON COLUMN utilization.dx_cat_2 IS 'Diagnosis Category 2';
COMMENT ON COLUMN utilization.dx_cat_3 IS 'Diagnosis Category Other';
COMMENT ON COLUMN utilization.chief_complaint_1 IS 'Chief Complaint Category 1';
COMMENT ON COLUMN utilization.chief_complaint_2 IS 'Chief Complaint Category 2';
COMMENT ON COLUMN utilization.chief_complaint_3 IS 'Chief Complaint Category Other';
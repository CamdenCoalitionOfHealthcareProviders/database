-- create client track table
CREATE TABLE client_track (
	admission_id varchar REFERENCES utilization (admission_id),
	encounter  varchar,
	encounter_other varchar,
	sched_date varchar,
	staff_assignment varchar,
	staff_assignment_other varchar,
	sched_time varchar,
	encounter_date varchar,
	ct_present varchar,
	call_not_complete_reason varchar,
	call_not_complete_reason_other varchar,
	activities_completed varchar,
	care_coord_method varchar,
	care_coord_method_other varchar,
	hours varchar,
	documentation_hours varchar,
	notes varchar,
	home_visit_1_sched_complete_date varchar,
	home_visit_2_sched_complete_date varchar,
	gift_card_number varchar,
	gift_card_date varchar,
	gift_card_no varchar,
	dsr_service_activity varchar,
	active_pt varchar,
	provider varchar,
	provider_other varchar,
	need_pcp_follow_up varchar,
	need_care_coord_pcp varchar,
	follow_up_notes varchar,
	pcp_12_mos varchar,
	pcp_before_hosp varchar,
	action varchar,
	action_other varchar,
	no_action_reason varchar,
	no_action_reason_other varchar,
	hie_id varchar,
	duplicate varchar,
	init_practice_pcp_sched varchar,
	init_practice_pcp_sched_other varchar,
	pra_id varchar REFERENCES pra (pra_id),
	ppv varchar,
	spec_ops_id varchar REFERENCES spec_ops (spec_ops_id)
);

-- add comment to this table
COMMENT ON TABLE client_track IS 'Client Track';

-- add comments to the columns
COMMENT ON COLUMN client_track.admission_id IS 'Utilization admission ID';
COMMENT ON COLUMN client_track.encounter IS 'Type of encounter by CCHP employee';
COMMENT ON COLUMN client_track.encounter_other IS 'Other type of encounter by CCHP employee';
COMMENT ON COLUMN client_track.sched_date IS 'Scheduled date';
COMMENT ON COLUMN client_track.staff_assignment IS 'CCHP staff member';
COMMENT ON COLUMN client_track.staff_assignment_other IS 'CCHP staff member other';
COMMENT ON COLUMN client_track.sched_time IS 'Scheduled time';
COMMENT ON COLUMN client_track.encounter_date IS 'Encounter date';
COMMENT ON COLUMN client_track.ct_present IS 'Client present';
COMMENT ON COLUMN client_track.call_not_complete_reason IS 'Reason call not completed';
COMMENT ON COLUMN client_track.call_not_complete_reason_other IS 'Other reason call not completed';
COMMENT ON COLUMN client_track.activities_completed IS 'Activities completed';
COMMENT ON COLUMN client_track.care_coord_method IS 'Care coordination method';
COMMENT ON COLUMN client_track.care_coord_method_other IS 'Other care coordination method';
COMMENT ON COLUMN client_track.hours IS 'Hours';
COMMENT ON COLUMN client_track.documentation_hours IS 'Documentation hours';
COMMENT ON COLUMN client_track.notes IS 'Notes';
COMMENT ON COLUMN client_track.home_visit_1_sched_complete_date IS 'Date home visit 1 scheduling complete';
COMMENT ON COLUMN client_track.home_visit_2_sched_complete_date IS 'Date home visit 2 scheduling complete';
COMMENT ON COLUMN client_track.gift_card_number IS 'Gift card number';
COMMENT ON COLUMN client_track.gift_card_date IS 'Gift card date';
COMMENT ON COLUMN client_track.gift_card_no IS 'No gift gard';
COMMENT ON COLUMN client_track.dsr_service_activity IS 'DSR service activity';
COMMENT ON COLUMN client_track.active_pt IS 'Active patient';
COMMENT ON COLUMN client_track.provider IS 'Provider';
COMMENT ON COLUMN client_track.provider_other IS 'Other provider';
COMMENT ON COLUMN client_track.need_pcp_follow_up IS 'Need PCP follow up';
COMMENT ON COLUMN client_track.need_care_coord_pcp IS 'Need care coordination at PCP';
COMMENT ON COLUMN client_track.follow_up_notes IS 'Follow up notes';
COMMENT ON COLUMN client_track.pcp_12_mos IS 'PCP in 12 months';
COMMENT ON COLUMN client_track.pcp_before_hosp IS 'PCP before hospital';
COMMENT ON COLUMN client_track.action IS 'Action';
COMMENT ON COLUMN client_track.action_other IS 'Other action';
COMMENT ON COLUMN client_track.no_action_reason IS 'Reason for no action';
COMMENT ON COLUMN client_track.no_action_reason_other IS 'Other reason for no action';
COMMENT ON COLUMN client_track.hie_id IS 'HIE ID generated by CareEvolution';
COMMENT ON COLUMN client_track.duplicate IS 'Duplicate record';
COMMENT ON COLUMN client_track.init_practice_pcp_sched IS 'Practice at initial PCP scheduling';
COMMENT ON COLUMN client_track.init_practice_pcp_sched_other IS 'Other practice at initial PCP scheduling';
COMMENT ON COLUMN client_track.pra_id IS 'Unique record number for PRA patients';
COMMENT ON COLUMN client_track.ppv IS 'PPV';
COMMENT ON COLUMN client_track.spec_ops_id IS 'Special ops ID, same as HIE ID';
COMMENT ON COLUMN client_track.document IS 'Document';

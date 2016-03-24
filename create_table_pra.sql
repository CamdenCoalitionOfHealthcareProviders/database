-- create perinatal risk assessment table
CREATE TABLE pra (
	subscriber_id varchar REFERENCES cap_list (subscriber_id),
	pra_id varchar,
	pra_pat_id varchar,
	engage varchar,
	pra_create_date varchar,
	most_recent_update varchar,
	pra_fac_created varchar,
	pra_fac_updated varchar,
	lmpdt varchar,
	edcdt varchar,
	est_preg_term varchar,
	pra_risk_factor varchar,
	delivered_date varchar,
	delivery_details varchar,
	delivery_details_other varchar,
	gest_diabetes varchar,
	preeclampsia varchar,
	delivery_details_risk_factors varchar,
	workflow_closed_date varchar,
	workflow_closed_reason varchar,
	preg_status varchar,
	partner_prog varchar,
	partner_prog_other varchar,
	pra_risk_factor_yes_no varchar,
	risk_changed varchar,
	comm_health_referral varchar,
	add_services_pt_interest varchar,
	add_services_cchp_referral varchar,
	risk_change_delivery varchar,
	pcp_risk_notification varchar,
	services_post_delivery_add varchar,
	hie_id varchar --,
--	PRIMARY KEY (pra_id)
);

-- add comment to this table
COMMENT ON TABLE pra IS 'Perinatal Risk Assessment';

-- add comments to the columns
COMMENT ON COLUMN pra.subscriber_id IS 'ID generated by insurance company';
COMMENT ON COLUMN pra.pra_id IS 'Unique record number for PRA patients';
COMMENT ON COLUMN pra.pra_pat_id IS 'PRA patient ID';
COMMENT ON COLUMN pra.engage IS 'engaged yes/no';
COMMENT ON COLUMN pra.pra_create_date IS 'risk assessment creation date';
COMMENT ON COLUMN pra.most_recent_update IS 'most recept update data';
COMMENT ON COLUMN pra.pra_fac_created IS 'PRA facility at creation date';
COMMENT ON COLUMN pra.pra_fac_updated IS 'Updated PRA facility';
COMMENT ON COLUMN pra.lmpdt IS 'Last Menstrual Period Date';
COMMENT ON COLUMN pra.edcdt IS 'Estimated Date of Confinement';
COMMENT ON COLUMN pra.est_preg_term IS 'Estimated pregnancy termination date';
COMMENT ON COLUMN pra.pra_risk_factor IS 'PRA risk factors';
COMMENT ON COLUMN pra.delivered_date IS 'Delivery date';
COMMENT ON COLUMN pra.delivery_details IS 'Delivery details';
COMMENT ON COLUMN pra.delivery_details_other IS 'Other delivery outcomes';
COMMENT ON COLUMN pra.gest_diabetes IS 'Patient has gestational diabetes?';
COMMENT ON COLUMN pra.preeclampsia IS 'Patient has preeclampsia?';
COMMENT ON COLUMN pra.delivery_details_risk_factors IS 'Delivery details and risk factors';
COMMENT ON COLUMN pra.workflow_closed_date IS 'Workflow closed date';
COMMENT ON COLUMN pra.workflow_closed_reason IS 'Workflow closed reason';
COMMENT ON COLUMN pra.preg_status IS 'Pregnancy status';
COMMENT ON COLUMN pra.partner_prog IS 'Partner program';
COMMENT ON COLUMN pra.partner_prog_other IS 'Other partner program';
COMMENT ON COLUMN pra.pra_risk_factor_yes_no IS 'Patient has PRA risk factor';
COMMENT ON COLUMN pra.risk_changed IS 'Did the risk change during pregancy';
COMMENT ON COLUMN pra.comm_health_referral IS 'Patient is referred to CI/CHW/CHV';
COMMENT ON COLUMN pra.add_services_pt_interest IS 'Patient interested in additional services';
COMMENT ON COLUMN pra.add_services_cchp_referral IS 'Did CCHP refer patient for additional services';
COMMENT ON COLUMN pra.risk_change_delivery IS 'Did delivery risk change';
COMMENT ON COLUMN pra.pcp_risk_notification IS 'Was PCP notified of risk';
COMMENT ON COLUMN pra.services_post_delivery_add IS 'Additional services post delivery';
COMMENT ON COLUMN pra.hie_id IS 'HIE ID generated by CareEvolution';

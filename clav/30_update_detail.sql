CREATE TABLE p_soj_cl_t.temp_clav_session_dtl_bu20240602075355 USING PARQUET AS
SELECT
	s.*
FROM
	p_soj_cl_t.clav_session_dtl s
WHERE
	s.session_start_dt BETWEEN '2024-05-30' AND '2024-06-01';

ALTER TABLE p_soj_cl_t.clav_session_dtl DROP IF EXISTS PARTITION (session_start_dt >= '2024-05-30', session_start_dt <= '2024-06-01');

INSERT INTO p_soj_cl_t.clav_session_dtl
(
	guid,
	session_skey,
	site_id,
	cobrand,
	cguid,
	valid_page_count,
	min_sc_seqnum,
	max_sc_seqnum,
	signedin_user_id,
	mapped_user_id,
	agent_id,
	social_agent_type,
	search_agent_type,
	device_type,
	agent_details,
	session_cntry_id,
	session_rev_rollup,
	ip,
	gr_cnt,
	gr_1_cnt,
	vi_cnt,
	homepage_cnt,
	myebay_cnt,
	signin_cnt,
	siid_cnt,
	nonjs_hp_cnt,
	primary_app_id,
	bot_session,
	bot_flags64,
	session_flags64,
	session_traffic_source_id,
	session_traffic_source_details,
	first_seqnum,
	on_ebay_sess,
	session_traffic_source_dtl2,
	session_details,
	ref_domain,
	referrer,
	roverentry_src_string,
	roverns_src_string,
	roveropen_src_string,
	rtm_src_string,
	notif_src_string,
	lndg_page_id,
	lndg_page_fmly4,
	lndg_page_url,
	lndg_sid,
	lndg_mppid,
	lndg_mnt,
	lndg_ort,
	ref_keyword,
	start_timestamp,
	end_timestamp,
	exit_page_id,
	roverentry_ts,
	roverns_ts,
	roveropen_ts,
	rtm_ts,
	notification_ts,
	notification_id,
	debug_flag,
	mcs_entry_src_string,
	mcs_entry_ts,
	updated_ts,
	dlk_entry_src_string,
	dlk_entry_ts,
	dlk_brguid,
	dlk_brsess,
	dlk_details,
	dlk_deeplink,
	dlk_referrer,
	dlk_mweb_link_type,
	entry_event_src_string,
	entry_event_ts,
	ns_event_src_string,
	ns_event_ts,
	session_start_dt,
	parent_uid,
	lndg_page_src_string,
	lndg_page_ts,
	nvts_src_string,
	ncts_src_string,
	ndts_src_string
)
SELECT
	guid,
	session_skey,
	site_id,
	cobrand,
	cguid,
	valid_page_count,
	min_sc_seqnum,
	max_sc_seqnum,
	signedin_user_id,
	mapped_user_id,
	agent_id,
	social_agent_type,
	search_agent_type,
	device_type,
	agent_details,
	session_cntry_id,
	session_rev_rollup,
	ip,
	gr_cnt,
	gr_1_cnt,
	vi_cnt,
	homepage_cnt,
	myebay_cnt,
	signin_cnt,
	siid_cnt,
	nonjs_hp_cnt,
	primary_app_id,
	bot_session,
	bot_flags64,
	session_flags64,
	session_traffic_source_id,
	session_traffic_source_details,
	first_seqnum,
	on_ebay_sess,
	session_traffic_source_dtl2,
	session_details,
	ref_domain,
	referrer,
	roverentry_src_string,
	roverns_src_string,
	roveropen_src_string,
	rtm_src_string,
	notif_src_string,
	lndg_page_id,
	lndg_page_fmly4,
	lndg_page_url,
	lndg_sid,
	lndg_mppid,
	lndg_mnt,
	lndg_ort,
	ref_keyword,
	start_timestamp,
	end_timestamp,
	exit_page_id,
	roverentry_ts,
	roverns_ts,
	roveropen_ts,
	rtm_ts,
	notification_ts,
	notification_id,
	debug_flag,
	mcs_entry_src_string,
	mcs_entry_ts,
	CURRENT_TIMESTAMP AS updated_ts,
	dlk_entry_src_string,
	dlk_entry_ts,
	dlk_brguid,
	dlk_brsess,
	dlk_details,
	dlk_deeplink,
	dlk_referrer,
	dlk_mweb_link_type,
	entry_event_src_string,
	entry_event_ts,
	ns_event_src_string,
	ns_event_ts,
	session_start_dt,
	parent_uid,
	lndg_page_src_string,
	lndg_page_ts,
	nvts_src_string,
	ncts_src_string,
	ndts_src_string
FROM
	p_soj_cl_t.temp_csess3a_v9 t3a;
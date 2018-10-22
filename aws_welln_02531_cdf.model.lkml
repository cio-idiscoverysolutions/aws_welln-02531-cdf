connection: "aws_welln-02531-cdf"

# include all the views
include: "*.view"

datagroup: aws_welln_02531_cdf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_welln_02531_cdf_default_datagroup

explore: i_ds_vw_communications {}

# - explore: cdf_att_call_logs_master

# - explore: cdf_blacklight_report_master

# - explore: cdf_catalog

# - explore: cdf_chats_master

# - explore: cdf_convert

# - explore: cdf_mms_master

# - explore: cdf_sms_master

# - explore: cdf_stats

# - explore: data_dictionary

# - explore: log

# - explore: src_dlvry

# - explore: src_files

# - explore: src_master

view: i_ds_vw_communications {
  sql_table_name: dbo.iDS_vw_Communications ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Date ;;
  }

  dimension: deleted_message {
    type: string
    sql: ${TABLE}.DeletedMessage ;;
  }

  dimension: folder_direction {
    type: string
    sql: ${TABLE}.Folder_Direction ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}."From" ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_SourceFile ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.SourceType ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}."To" ;;
  }

  dimension: ids_ConversationID {
    type: string
    sql: ${TABLE}."IDS_ConversationID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

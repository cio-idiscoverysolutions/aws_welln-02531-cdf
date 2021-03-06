view: i_ds_vw_communications {
  sql_table_name: dbo.iDS_vw_Communications ;;

  dimension: conversationId {
    type: number
    sql: ${TABLE}.IDS_ConversationId ;;
  }

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

  dimension: iDS_ConversationType {
    type: string
    sql: ${TABLE}."iDS_ConversationType" ;;
  }

  dimension: Report_Name {
    type: string
    sql: concat(${TABLE}.IDS_SourceFile,' - ', ${TABLE}."IDS_DeviceName");;
  }


  dimension: IDS_DeviceName {
    type: string
    sql: ${TABLE}."IDS_DeviceName" ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}

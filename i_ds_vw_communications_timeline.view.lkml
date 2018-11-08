view: i_ds_vw_communications_timeline {
  sql_table_name: dbo.iDS_vw_Communications_Timeline ;;

  dimension_group: date1 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date1 ;;
  }

  dimension_group: date2 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date2 ;;
  }

  dimension: ids_device_name {
    type: string
    sql: ${TABLE}.IDS_DeviceName ;;
  }

  dimension: record_count {
    type: number
    sql: ${TABLE}.recordCount ;;
  }

  measure: count {
    type: count
    drill_fields: [ids_device_name]
  }
}

view: voidlist2 {
  sql_table_name: `pizzahutpoc.YPoc.voidlist2` ;;

  dimension: check_employee_first_name {
    type: string
    sql: ${TABLE}.CheckEmployeeFirstName ;;
  }
  dimension: check_employee_last_name {
    type: string
    sql: ${TABLE}.CheckEmployeeLastName ;;
  }
  dimension: check_employee_number {
    type: number
    sql: ${TABLE}.CheckEmployeeNumber ;;
  }
  dimension: difftime {
    type: number
    sql: ${TABLE}.difftime ;;
  }
  dimension_group: first_business {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstBusinessDate ;;
  }
  dimension: fixed_period {
    type: number
    sql: ${TABLE}.FixedPeriod ;;
  }
  dimension: guest_checknumber {
    type: number
    sql: ${TABLE}.GuestChecknumber ;;
  }
  dimension: major_group_master_name {
    type: string
    sql: ${TABLE}.MajorGroupMasterName ;;
  }
  dimension: major_group_master_number {
    type: number
    sql: ${TABLE}.MajorGroupMasterNumber ;;
  }
  dimension: menu_item_master_name1 {
    type: string
    sql: ${TABLE}.MenuItemMasterName1 ;;
  }
  dimension: menu_item_master_number {
    type: number
    sql: ${TABLE}.MenuItemMasterNumber ;;
  }
  dimension: order_type_master_name {
    type: string
    sql: ${TABLE}.OrderTypeMasterName ;;
  }
  dimension: order_type_master_number {
    type: number
    sql: ${TABLE}.OrderTypeMasterNumber ;;
  }
  dimension: ordertime {
    type: string
    sql: ${TABLE}.ordertime ;;
  }
  dimension: pos_transaction_reference {
    type: number
    sql: ${TABLE}.PosTransactionReference ;;
  }
  dimension: reason_code_master_name {
    type: string
    sql: ${TABLE}.ReasonCodeMasterName ;;
  }
  dimension: reason_code_master_number {
    type: number
    sql: ${TABLE}.ReasonCodeMasterNumber ;;
  }
  dimension: record_type {
    type: string
    sql: ${TABLE}.RecordType ;;
  }
  dimension: report_line_count {
    type: number
    sql: ${TABLE}.ReportLineCount ;;
  }
  dimension: report_line_total {
    type: number
    sql: ${TABLE}.ReportLineTotal ;;
  }
  dimension: store_name {
    type: string
    sql: ${TABLE}.StoreName ;;
  }
  dimension: store_number {
    type: string
    sql: ${TABLE}.StoreNumber ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }
  dimension: trans_log_time_stamp {
    type: number
    sql: ${TABLE}.TransLogTimeStamp ;;
  }
  dimension: transaction_date_time {
    type: string
    sql: ${TABLE}.TransactionDateTime ;;
  }
  dimension: transaction_employee_first_name {
    type: string
    sql: ${TABLE}.TransactionEmployeeFirstName ;;
  }
  dimension: transaction_employee_last_name {
    type: string
    sql: ${TABLE}.TransactionEmployeeLastName ;;
  }
  dimension: transaction_employee_number {
    type: number
    sql: ${TABLE}.TransactionEmployeeNumber ;;
  }
  dimension: user_workstation_name {
    type: string
    sql: ${TABLE}.UserWorkstationName ;;
  }
  dimension: user_workstation_number {
    type: number
    sql: ${TABLE}.UserWorkstationNumber ;;
  }
  dimension: voidtime {
    type: string
    sql: ${TABLE}.voidtime ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      transaction_employee_last_name,
      major_group_master_name,
      check_employee_first_name,
      store_name,
      transaction_employee_first_name,
      order_type_master_name,
      user_workstation_name,
      reason_code_master_name,
      check_employee_last_name
    ]
  }

  #######
  #Title#
  #######
  measure: title_date{
    type: string
    sql: CONCAT('Void Report',${title}) ;;
    html:
    <p style="font-size:30px; text-align:center; line-height:80%;"><i>Pizza Hut Singapore Pte Ltd</i></p>
    <p style="font-size:30px; text-align:center; line-height:80%;">-----------------------------------------------------------------------------------------------------------------------------</p>
    <p style="font-size:20px; text-align:center; line-height:80%;">{{ rendered_value }}</p>
    ;;
  }
}

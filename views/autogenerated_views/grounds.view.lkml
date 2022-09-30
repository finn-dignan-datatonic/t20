view: grounds {
  sql_table_name: `datatonic-analytics-sandbox.finn_dbt.grounds`
    ;;

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: string_field_1 {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: stg_grounds {
  sql_table_name: `datatonic-analytics-sandbox.finn_dbt.stg_grounds`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: venue {
    type: string
    sql: ${TABLE}.venue ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

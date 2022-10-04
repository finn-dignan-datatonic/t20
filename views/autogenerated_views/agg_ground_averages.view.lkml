view: agg_ground_averages {
  sql_table_name: `datatonic-analytics-sandbox.finn_dbt.agg_ground_averages`
    ;;

  dimension: average_first_innings_score {
    type: number
    sql: ${TABLE}.average_first_innings_score ;;
  }

  dimension: innings_number {
    type: string
    sql: ${TABLE}.innings_number ;;
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

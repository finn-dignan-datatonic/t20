view: stg_matches {
  sql_table_name: `datatonic-analytics-sandbox.finn_dbt.stg_matches`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension_group: dates_1 {
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
    sql: ${TABLE}.dates_1 ;;
  }

  dimension: match_id {
    type: string
    sql: ${TABLE}.match_id ;;
  }

  dimension: outcome_by_type {
    type: string
    sql: ${TABLE}.outcome_by_type ;;
  }

  dimension: outcome_by_value {
    type: number
    sql: ${TABLE}.outcome_by_value ;;
  }

  dimension: outcome_winner {
    type: string
    sql: ${TABLE}.outcome_winner ;;
  }

  dimension: teams_1 {
    type: string
    sql: ${TABLE}.teams_1 ;;
  }

  dimension: teams_2 {
    type: string
    sql: ${TABLE}.teams_2 ;;
  }

  dimension: toss_decision {
    type: string
    sql: ${TABLE}.toss_decision ;;
  }

  dimension: toss_winner {
    type: string
    sql: ${TABLE}.toss_winner ;;
  }

  dimension: venue {
    type: string
    sql: ${TABLE}.venue ;;
  }

  dimension: competition {
    type: string
    sql: ${TABLE}.competition_abbr ;;

  }

  measure: count {
    type: count
    drill_fields: []
  }
}

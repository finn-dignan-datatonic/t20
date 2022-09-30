view: teams {
  sql_table_name: `datatonic-analytics-sandbox.finn_dbt.teams`
    ;;

  dimension: sequence2 {
    type: number
    sql: ${TABLE}.sequence2 ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }

  dimension: team_abbr {
    type: string
    sql: ${TABLE}.team_abbr ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

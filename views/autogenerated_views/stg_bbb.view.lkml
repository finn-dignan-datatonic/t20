view: stg_bbb {
  sql_table_name: `datatonic-analytics-sandbox.finn_dbt.stg_bbb`
    ;;

  dimension: ball {
    type: number
    sql: ${TABLE}.ball ;;
  }

  dimension: batsman {
    type: string
    sql: ${TABLE}.batsman ;;
  }

  dimension: bowler {
    type: string
    sql: ${TABLE}.bowler ;;
  }

  dimension: dot_ball {
    type: number
    sql: ${TABLE}.dot_ball ;;
  }

  dimension: four {
    type: number
    sql: ${TABLE}.four ;;
  }

  dimension: innings {
    type: string
    sql: ${TABLE}.innings ;;
  }

  dimension: legal_ball {
    type: string
    sql: ${TABLE}.legal_ball ;;
  }

  dimension: match_id {
    type: string
    sql: ${TABLE}.match_id ;;
  }

  dimension: non_striker {
    type: string
    sql: ${TABLE}.non_striker ;;
  }

  dimension: over_number {
    type: number
    sql: ${TABLE}.over_number ;;
  }

  dimension: runs_batsman {
    type: number
    sql: ${TABLE}.runs_batsman ;;
  }

  dimension: runs_conceded {
    type: number
    sql: ${TABLE}.runs_conceded ;;
  }

  dimension: runs_extras {
    type: number
    sql: ${TABLE}.runs_extras ;;
  }

  dimension: runs_total {
    type: number
    sql: ${TABLE}.runs_total ;;
  }

  dimension: single {
    type: number
    sql: ${TABLE}.single ;;
  }

  dimension: six {
    type: number
    sql: ${TABLE}.six ;;
  }

  dimension: wicket_fielders {
    type: string
    sql: ${TABLE}.wicket_fielders ;;
  }

  dimension: wicket_kind {
    type: string
    sql: ${TABLE}.wicket_kind ;;
  }

  dimension: wicket_player_out {
    type: string
    sql: ${TABLE}.wicket_player_out ;;
  }

  dimension: wickets {
    type: number
    sql: ${TABLE}.wickets ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

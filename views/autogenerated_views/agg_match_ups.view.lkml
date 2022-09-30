view: agg_match_ups {
  sql_table_name: `datatonic-analytics-sandbox.finn_dbt.agg_match_ups`
    ;;

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }

  dimension: balls {
    type: number
    sql: ${TABLE}.balls ;;
  }

  dimension: bat_hand {
    type: string
    sql: ${TABLE}.bat_hand ;;
  }

  dimension: batter {
    type: string
    sql: ${TABLE}.batter ;;
  }

  dimension: bowl_hand {
    type: string
    sql: ${TABLE}.bowl_hand ;;
  }

  dimension: bowl_type2 {
    type: string
    sql: ${TABLE}.bowl_type2 ;;
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

  dimension: innings_number {
    type: string
    sql: ${TABLE}.innings_number ;;
  }

  dimension: number_of_innings {
    type: number
    sql: ${TABLE}.number_of_innings ;;
  }

  dimension: out {
    type: number
    sql: ${TABLE}.out ;;
  }

  dimension: outs {
    type: number
    sql: ${TABLE}.outs ;;
  }

  dimension: over_number {
    type: number
    sql: ${TABLE}.over_number ;;
  }

  dimension: runs {
    type: number
    sql: ${TABLE}.runs ;;
  }

  dimension: single {
    type: number
    sql: ${TABLE}.single ;;
  }

  dimension: six {
    type: number
    sql: ${TABLE}.six ;;
  }

  dimension: spin_direction {
    type: string
    sql: ${TABLE}.spin_direction ;;
  }

  dimension: spin_pace {
    type: string
    sql: ${TABLE}.spin_pace ;;
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

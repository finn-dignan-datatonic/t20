view: stg_players {
  sql_table_name: `datatonic-analytics-sandbox.finn_dbt.stg_players`
    ;;

  dimension: bat_hand {
    type: string
    sql: ${TABLE}.bat_hand ;;
  }

  dimension: bat_type {
    type: string
    sql: ${TABLE}.bat_type ;;
  }

  dimension: born {
    type: string
    sql: ${TABLE}.born ;;
  }

  dimension: bowl_hand {
    type: string
    sql: ${TABLE}.bowl_hand ;;
  }

  dimension: bowl_type {
    type: string
    sql: ${TABLE}.bowl_type ;;
  }

  dimension: bowl_type2 {
    type: string
    sql: ${TABLE}.bowl_type2 ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: matches {
    type: number
    sql: ${TABLE}.matches ;;
  }

  dimension: names {
    type: string
    sql: ${TABLE}.names ;;
  }

  dimension: player {
    type: string
    sql: ${TABLE}.player ;;
  }

  dimension: player_id {
    type: number
    sql: ${TABLE}.player_id ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}.row_number ;;
  }

  dimension: spin_pace {
    type: string
    sql: ${TABLE}.spin_pace ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

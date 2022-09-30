view: matches {
  sql_table_name: `datatonic-analytics-sandbox.finn_dbt.matches`
    ;;
  drill_fields: [match_id_old]

  dimension: match_id_old {
    primary_key: yes
    type: string
    sql: ${TABLE}.match_id_old ;;
  }

  dimension: away_team_bat_status {
    type: string
    sql: ${TABLE}.away_team_bat_status ;;
  }

  dimension: balls_per_over {
    type: number
    sql: ${TABLE}.balls_per_over ;;
  }

  dimension: bat_first {
    type: string
    sql: ${TABLE}.bat_first ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: comp_abbr {
    type: string
    sql: ${TABLE}.comp_abbr ;;
  }

  dimension: competition {
    type: string
    sql: ${TABLE}.competition ;;
  }

  dimension: competition_abbr {
    type: string
    sql: ${TABLE}.competition_abbr ;;
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

  dimension_group: dates_2 {
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
    sql: ${TABLE}.dates_2 ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: home_team_bat_status {
    type: string
    sql: ${TABLE}.home_team_bat_status ;;
  }

  dimension: match_id {
    type: string
    sql: ${TABLE}.match_id ;;
  }

  dimension: match_type {
    type: string
    sql: ${TABLE}.match_type ;;
  }

  dimension: match_winner {
    type: string
    sql: ${TABLE}.match_winner ;;
  }

  dimension: neutral_venue {
    type: number
    sql: ${TABLE}.neutral_venue ;;
  }

  dimension: outcome_by_type {
    type: string
    sql: ${TABLE}.outcome_by_type ;;
  }

  dimension: outcome_by_value {
    type: number
    sql: ${TABLE}.outcome_by_value ;;
  }

  dimension: outcome_method {
    type: string
    sql: ${TABLE}.outcome_method ;;
  }

  dimension: outcome_winner {
    type: string
    sql: ${TABLE}.outcome_winner ;;
  }

  dimension: overs {
    type: number
    sql: ${TABLE}.overs ;;
  }

  dimension: player_of_match_1 {
    type: string
    sql: ${TABLE}.player_of_match_1 ;;
  }

  dimension: player_of_match_2 {
    type: string
    sql: ${TABLE}.player_of_match_2 ;;
  }

  dimension: sequence2_x {
    type: number
    sql: ${TABLE}.sequence2_x ;;
  }

  dimension: sequence2_y {
    type: number
    sql: ${TABLE}.sequence2_y ;;
  }

  dimension: series {
    type: string
    sql: ${TABLE}.series ;;
  }

  dimension: team_abbr_x {
    type: string
    sql: ${TABLE}.team_abbr_x ;;
  }

  dimension: team_abbr_y {
    type: string
    sql: ${TABLE}.team_abbr_y ;;
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

  dimension: umpires_1 {
    type: string
    sql: ${TABLE}.umpires_1 ;;
  }

  dimension: umpires_2 {
    type: string
    sql: ${TABLE}.umpires_2 ;;
  }

  dimension: venue {
    type: string
    sql: ${TABLE}.venue ;;
  }

  measure: count {
    type: count
    drill_fields: [match_id_old]
  }
}

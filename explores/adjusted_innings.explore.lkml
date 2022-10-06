include: "/views/**/*"

include: "/derived_tables/*"

explore: stg_bbb {

  join: stg_matches {

    sql_on: ${match_id} = ${stg_matches.match_id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: agg_ground_averages {
    sql_on: ${agg_ground_averages.venue} = ${stg_matches.venue} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: adjusted_bbb_rr {
    sql_on: ${match_id} = ${adjusted_bbb_rr.match_id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: target_rpb_adjusted {
    sql_on: ${stg_bbb.match_id} = ${target_rpb_adjusted.match_id} AND
    ${stg_bbb.innings} = ${target_rpb_adjusted.innings} AND
    ${stg_bbb.over_number} = ${target_rpb_adjusted.over_number} AND
    ${stg_bbb.ball} = ${target_rpb_adjusted.ball};;
    relationship: one_to_one
    type: inner
  }



}

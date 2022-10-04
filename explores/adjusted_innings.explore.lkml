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

}

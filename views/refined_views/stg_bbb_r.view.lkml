include: "/views/autogenerated_views/*"

include: "/derived_tables/*"

view: +stg_bbb {

#### ADDED DIMENSIONS ####

dimension: primary_key {
  sql: concat(${match_id}, ${innings}, ${over_number}, ${ball};;
  primary_key: yes
}

dimension: match_impact_standard_simple {
  sql: case when ${innings} = "1st" then ${agg_ground_averages.average_first_innings_score}/120
  when ${innings} = "2nd" then ${adjusted_bbb_rr.target_runs}/120
  END;;
}


##### // DIMENSIONS ####



##### ADDED MEASURES #####

measure: total_runs {
  sql: sum(${runs_total}) ;;
  type: number
}

measure: simple_match_impact {
  sql: sum(${runs_batsman} - ${match_impact_standard_simple}) ;;
  type: number
  value_format_name: decimal_2
  label: "Simple Match Impact"
  description: "Sum of simple match impact - difference between expected RPB based on ground average and target"


}


##### // MEASURES #####


 }

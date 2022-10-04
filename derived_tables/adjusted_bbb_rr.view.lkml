view: adjusted_bbb_rr {
  derived_table: {
    explore_source: stg_bbb {
      column: total_runs {}
      column: match_id {}
      filters: {
        field: stg_bbb.innings
        value: "1st"
      }




    }


  }
  dimension: target_runs {
    sql: ${TABLE}.total_runs ;;
    type: number
  }
  dimension: match_id {}

}

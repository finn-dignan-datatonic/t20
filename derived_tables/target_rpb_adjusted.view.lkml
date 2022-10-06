view: target_rpb_adjusted {
  derived_table: {
    explore_source: stg_bbb {
      column: match_id {}
      column: innings {}
      column: over_number {}
      column: ball {}
      column: runs_total {}
      column: runs_batsman {}
      column: legal_ball {}


    derived_column: ball_number {
        sql: sum(case when legal_ball = "YES" then 1
          else 0
          END) OVER(PARTITION BY match_id, innings ORDER BY match_id, innings, over_number, ball asc) ;;
      }

      derived_column: running_runs_total {
        sql: sum(runs_total) OVER(PARTITION BY match_id, innings ORDER BY match_id, innings, over_number, ball asc) ;;
      }



    }



  }


  dimension: match_id {}
  dimension: innings {}
  dimension: legal_ball {}
  dimension: over_number {
    type: number
  }
  dimension: ball {
    type: number
  }
  dimension: runs_total {
    type: number
  }

  dimension: runs_batsman {
    type: number
  }
  dimension: ball_number {}
  dimension: running_runs_total {}
  measure: count {
    sql: count(*) ;;
  }

}

explore: target_rpb_adjusted {}

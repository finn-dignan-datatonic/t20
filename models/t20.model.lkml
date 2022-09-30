connection: "analytics_sandbox"

# include all the views
include: "/views/**/*.view"

datagroup: t20_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: t20_default_datagroup

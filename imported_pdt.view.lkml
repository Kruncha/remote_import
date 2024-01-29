view: imported_pdt {
  derived_table: {
    indexes: ["status"]
    increment_key: "created_date"
    datagroup_trigger: test_datagroup
    sql: SELECT * FROM demo_db.orders LIMIT 100000;;
  }
  dimension: status {}
  dimension_group: created {
    type: time
    sql: ${TABLE}.created_at ;;
  }
}

datagroup: test_datagroup {
  sql_trigger: SELECT CURRENT_TIMESTAMP() ;;
}

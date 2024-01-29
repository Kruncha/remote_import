view: imported_pdt {
  derived_table: {
    indexes: ["status"]
    datagroup_trigger: test_datagroup
    sql: SELECT * FROM demo_db.orders LIMIT 100000;;
  }
  dimension: status {}
}

datagroup: test_datagroup {
  sql_trigger: SELECT CURRENT_TIMESTAMP() ;;
}

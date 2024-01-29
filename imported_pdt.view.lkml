view: imported_pdt {
  derived_table: {
    indexes: ["status"]
    sql_trigger_value: SELECT CURRENT_TIMESTAMP() ;;
    sql: SELECT * FROM demo_db.orders LIMIT 100000;;
  }
  dimension: status {}
}

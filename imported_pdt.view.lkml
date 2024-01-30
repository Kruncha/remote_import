view: imported_pdt {
  derived_table: {
    indexes: ["status"]
    increment_key: "created_date"
    datagroup_trigger: test_datagroup
    sql: SELECT * FROM @{schema}.orders where {% incrementcondition %} created_at {% endincrementcondition %} LIMIT 100000;;
  }
  dimension: status {}
  dimension_group: created {
    type: time
    sql: ${TABLE}.created_at ;;
  }
}

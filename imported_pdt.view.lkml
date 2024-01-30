view: imported_pdt {
  derived_table: {
    indexes: ["status"]
    increment_key: "created_date"
    datagroup_trigger: test_datagroup
    sql: SELECT * FROM @{schema}.orders where {% incrementcondition %} created_at {% endincrementcondition %} ;;
  }
  dimension: status {}
  dimension_group: created {
    type: time
    sql: ${TABLE}.created_at ;;
  }
}

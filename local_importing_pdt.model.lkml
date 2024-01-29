connection: "thelook"

include: "*.view.lkml"                # include all views in the views/ folder in this project

datagroup: test_datagroup {
  sql_trigger: SELECT CURRENT_TIMESTAMP() ;;
}

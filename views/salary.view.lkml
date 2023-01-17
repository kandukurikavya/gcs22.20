view: salary {
  sql_table_name: demo_db.Salary ;;

  dimension: dept_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DeptID ;;
  }

  dimension: salary {
    type: number
    sql: round(${TABLE}.Salary );;
  }

  measure: count {
    type: count
    drill_fields: [dept.dept_id, dept.dept_name]
  }
  measure: sum {
    type: sum
    sql: ${salary} ;;
  }

  measure: sal {
    type: number
    sql: ${salary} ;;
  }
  measure: negative {
    type: number
    sql: ${salary}*-1000 ;;
  }
}

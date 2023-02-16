view: user_data {
  sql_table_name: demo_db.user_data ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: max_num_orders {
    type: number
    sql: ${TABLE}.max_num_orders ;;
  }

  dimension: total_num_orders {
    type: number
    sql: ${TABLE}.total_num_orders ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
measure: testing {
  type: number
  sql: ${total_num_orders}-${max_num_orders}*100.90 ;;
  value_format: "0.00"
#   html: {% if value < 0 %}
#                 <font style="color: #990000"> ▼ ( {{ rendered_value | times: -1 | round}} ) </font>
#               {% elsif value > 0 %}
#                 <font style="color: #009900"> ▲ {{ rendered_value | round}}  </font>
#               {% else %}
#                 <font style="color: #000000"> {{ rendered_value | round}} </font>
#               {% endif %}
# ;;
}
  measure: testing2 {
    type: number
    sql: ${total_num_orders}-${max_num_orders}*100.90 ;;
    }
  measure: count {
    type: count
    drill_fields: [id, users.id, users.first_name, users.last_name]
  }
}

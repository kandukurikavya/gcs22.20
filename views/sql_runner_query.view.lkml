view: sql_runner_query {
  derived_table: {
    sql: SELECT
          order_items.id  AS `order_items.id`
      FROM demo_db.order_items  AS order_items
      LIMIT 500
       ;;
    sql_trigger_value: SELECT count(*) from
    `kavya_test.demo_db.order_items .order_items`
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_items_id {
    type: number
    sql: ${TABLE}.`order_items.id` ;;
  }


}

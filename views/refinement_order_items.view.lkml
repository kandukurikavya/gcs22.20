include:"/views/order_items.view.lkml"
view: +order_items {
  sql_table_name: demo_db.order_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}.phones ;;
  }

  dimension_group: returned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }


dimension: test_id {
    type: number
    sql: ${id}/100 ;;
  }

  measure: navigation {
    type: sum
    sql: 0;;
    html:@{html_menu_right_click_icon};;
    link: {
      label: "status count"
      url: "/dashboards/9"
    }
 link: {
      label: "user count status"
      url: "/dashboards/10?@{url_ms_custom_back_of_pack}"
    }

    link: {
      label: "Brand count"
      url: "/dashboards/11"
    }
    link: {
      label: "HFSS"
      url: "/dashboards/11?@{url_ms_custom_back_of_pack}"
    }
    }
    }

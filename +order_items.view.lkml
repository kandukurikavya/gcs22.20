include:"/views/order_items.view.lkml"

 view: +order_items {

sql_table_name: `demo_db.order_items` ;;

  dimension: test_id {
    type: number
    sql: ${id}/100 ;;
  }

  measure: navigation {
    type: sum
    sql: 0;;
    html: @{html_menu_right_click_icon};;
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
      url: "/dashboards/XHRFGUXhMQ7E9amCsIIqHg?@{url_ms_custom_back_of_pack}"
    }

  }


 }

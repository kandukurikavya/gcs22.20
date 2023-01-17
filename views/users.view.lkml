view: users {
  sql_table_name: demo_db.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
    #html: <a href="https://gcps2220.cloud.looker.com/dashboards/51?City={{value}}">{{value}}</a>  ;;
    }



  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month_name,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
    drill_fields: [id,last_name,count]
    link: {
      label: "Show as collapsible tree"
           url: "
      {% assign vis_config = '{
          \"hidden_fields\":[],
          \"hidden_points_if_no\":[],
          \"series_labels\":{},
          \"show_view_names\":false,
          \"show_row_numbers\":true,
          \"transpose\":false,
          \"truncate_text\":true,
          \"hide_totals\":false,
          \"hide_row_totals\":false,
          \"size_to_fit\":true,
          \"table_theme\":\"white\",
          \"limit_displayed_rows\":false,
          \"enable_conditional_formatting\":false,
          \"header_text_alignment\":\"left\",
          \"header_font_size\":12,
          \"rows_font_size\":12,
          \"conditional_formatting_include_totals\":false,
          \"conditional_formatting_include_nulls\":false,
          \"type\":\"marketplace_viz_collapsible_tree::collapsible_tree-marketplace\",
          \"x_axis_gridlines\":false,
          \"y_axis_gridlines\":true,
          \"show_y_axis_labels\":true,
          \"show_y_axis_ticks\":true,
          \"y_axis_tick_density\":\"default\",
          \"y_axis_tick_density_custom\":5,
          \"show_x_axis_label\":true,
          \"show_x_axis_ticks\":true,
          \"y_axis_scale_mode\":\"linear\",
          \"x_axis_reversed\":false,
          \"y_axis_reversed\":false,
          \"plot_size_by_field\":false,
          \"trellis\":\"\",
          \"stacking\":\"\",
          \"legend_position\":\"center\",
          \"point_style\":\"none\",
          \"show_value_labels\":false,
          \"label_density\":25,
          \"x_axis_scale\":\"auto\",
          \"y_axis_combined\":true,
          \"ordering\":\"none\",
          \"show_null_labels\":false,
          \"show_totals_labels\":false,
          \"show_silhouette\":false,
          \"totals_color\":\"#808080\",
          \"defaults_version\":0,
          \"series_types\":{},
          \"show_null_points\":true}' %}
      {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"
    }
  }


  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;

  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      events.count,
      orders.count,
      saralooker.count,
      sindhu.count,
      user_data.count
    ]
  }
}

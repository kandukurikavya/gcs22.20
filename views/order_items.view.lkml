view: order_items {
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
      month_name,
      time,
      date,
      week,
      month,
      hour,
      time_of_day,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }
dimension: test_date {
  type: string
  sql: ${TABLE}.returned_at ;;
}

  parameter: timeframe_picker {
    label: "Time Series"
    type: unquoted
    allowed_value: { value: "Date"}
    allowed_value: { value: "Week"}
    allowed_value: { value: "Month"}
    default_value: "Month"
  }
  dimension: dynamic_timeframe {
    hidden: no
    sql: {% if timeframe_picker._parameter_value == 'Date' %}
      ${returned_date}
      {% elsif timeframe_picker._parameter_value == 'Week' %}
      ${returned_week}
      {% elsif timeframe_picker._parameter_value == 'Month' %}
      ${returned_month}
      {% else %}
      ${returned_year}
      {% endif %};;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  measure: total_sale {
    type: sum
    sql: ${sale_price} ;;
  }
  measure: average_sale {
    type: average
    sql: ${sale_price} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
    description: "SMT metric with custom vizualisation"
    group_label: "SMT Dashboard Metrics"
    html:
    {% assign sale_price = sale_price._value | round %}
    {% assign count = value | count | round %}
    <div class="vis-single-value-wrapper">
    <div class="vis-single-value-wrapper" style="font-size: 2.5vw;">
    <div class="centered">
    <div class="vis-single-value-value with-text custom-color" style="color: {% if count < 60 %} #E4301E {% elsif count >= 60 and count < 90 %} #FABF4D {% elsif count >= 90 %} #228B22; {% endif %};">
    {{value}}
    </div>
    <div class="vis-single-value-title">
    <div class="looker-vis-context-title">
    <div class="looker-vis-context-title-text" style="display: flex; justify-content: center; align-items: center;">
    <span style="opacity: 0.85; font-weight: 100;">Bookings</span>
    <span class="vis-single-value-comparison-value">{{count | round}}%<span>
    <span style="opacity: 0.85; font-weight: 100;">of</span>
    <span class="vis-single-value-comparison-value">{{sale_price | round}}</span>
    </div>
    </div>
    </div>
    </div>
    <div class="vis-single-value-progress" style=" background-color: {% if count < 60 %} rgba(228,48,30, 0.1) {% elsif count >= 60 and count < 90 %} rgba(250,191,77,0.1) {% elsif count >= 90 %} rgba(34,139,34,0.1) {% endif %};">
    <div class="vis-single-value-progress-bar" style="float: left; width:{{ count }}%; background-color: {% if count < 60 %} rgba(228, 48, 30, 0.1) {% elsif count >= 60 and count < 90 %} rgba(250, 191, 77, 0.1) {% elsif count >= 90 %} rgba(34, 139, 34, 0.1) {% endif %};">
    </div>
    </div>
    </div>
    ;;
  }
}

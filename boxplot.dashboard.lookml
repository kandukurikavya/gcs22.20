- dashboard: parameter_filter_dashboard
  title: parameter filter dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: v0V9WV0ZpvsFVAHLsNqQEm
  elements:
  - title: parameter filter dashboard
    name: parameter filter dashboard
    model: kavya_test
    explore: order_items
    type: looker_boxplot
    fields: [order_items.dynamic_timeframe, orders.count, products.count]
    filters: {}
    sorts: [orders.count desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      Time Series: order_items.timeframe_picker
    row: 0
    col: 0
    width: 8
    height: 6
  filters:
  - name: Time Series
    title: Time Series
    type: field_filter
    default_value: Month
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: kavya_test
    explore: order_items
    listens_to_filters: []
    field: order_items.timeframe_picker



- dashboard: box_plote
  title: box plote
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: SzcoTKoxAroedroY259oTa
  elements:
  - title: box plote
    name: box plote
    model: kavya_test
    explore: order_items
    type: looker_boxplot
    fields: [orders.status, orders.count, inventory_items.count, users.count]
    sorts: [orders.count desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
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
    series_types: {}
    defaults_version: 1
    listen:
      Status: orders.status
      Order ID: order_items.order_id
    row: 0
    col: 0
    width: 24
    height: 12
  - title: looka
    name: looka
    model: action_label_bug
    explore: order_items
    type: looker_grid
    fields: [order_items.id, order_items.count]
    sorts: [order_items.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Status: orders.status
      Order ID: order_items.order_id
    row: 12
    col: 0
    width: 8
    height: 6
  filters:
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: kavya_test
    explore: order_items
    listens_to_filters: [Order ID]
    field: orders.status
  - name: Order ID
    title: Order ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - '1'
      - '2'
      - '3'
    model: kavya_test
    explore: order_items
    listens_to_filters: []
    field: order_items.order_id

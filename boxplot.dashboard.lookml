- dashboard: box_plote
  title: box plote
  layout: newspaper
  preferred_viewer: dashboards-next
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
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12

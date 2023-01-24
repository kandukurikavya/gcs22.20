- dashboard: funneldash
  title: Funneldash
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100
  model: kavya_test
  explore: order_items
  type: looker_funnel
  fields: [order_items.count, order_items.sale_price]
  sorts: [order_items.count desc 0]
  limit: 50
  leftAxisLabelVisible: false
  leftAxisLabel: ''
  rightAxisLabelVisible: false
  rightAxisLabel: ''
  smoothedBars: false
  orientation: automatic
  labelPosition: left
  percentType: total
  percentPosition: inline
  valuePosition: right
  labelColorEnabled: false
  labelColor: "#FFF"
  series_types: {}
  defaults_version: 1

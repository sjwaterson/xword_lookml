- view: puzzle
  sql_table_name: xword_puzzle
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension: editor_id
    type: number
    sql: ${TABLE}.editor_id

  - dimension: grid_id
    type: number
    # hidden: true
    sql: ${TABLE}.grid_id

  - dimension: permission_list
    type: string
    sql: ${TABLE}.permission_list

  - dimension: publisher_id
    type: number
    sql: ${TABLE}.publisher_id

  - dimension: setter_id
    type: number
    sql: ${TABLE}.setter_id

  - dimension: title
    type: string
    sql: ${TABLE}.title

  - dimension: type_id
    type: number
    sql: ${TABLE}.type_id

  - measure: count
    type: count
    drill_fields: [id, grid.id, clue.count]


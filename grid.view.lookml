- view: grid
  sql_table_name: xword_grid
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: format
    type: string
    sql: ${TABLE}.format

  - dimension: type_id
    type: number
    sql: ${TABLE}.type_id

  - measure: count
    type: count
    drill_fields: [id, puzzle.count]


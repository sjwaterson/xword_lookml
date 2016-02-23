- view: clue
  sql_table_name: xword_clue
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: answer
    type: string
    sql: ${TABLE}.answer

  - dimension: column
    type: number
    sql: ${TABLE}.col

  - dimension: direction
    type: number
    sql: ${TABLE}.dir

  - dimension: number
    type: number
    sql: ${TABLE}.num

  - dimension: puzzle_id
    type: number
    sql: ${TABLE}.puzzle_id

  - dimension: rebus
    type: string
    sql: ${TABLE}.rebus

  - dimension: row
    type: number
    sql: ${TABLE}.row

  - dimension: setter_id
    type: number
    sql: ${TABLE}.setter_id

  - dimension: text
    type: string
    sql: ${TABLE}.text

  - dimension: type_id
    hidden: true
    type: number
    sql: ${TABLE}.type_id

  - measure: count
    type: count
    drill_fields: [id, puzzle.id]


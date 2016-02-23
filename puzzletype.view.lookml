- view: puzzletype
  label: 'Puzzle Type'
  sql_table_name: xword_puzzletype
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.id

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id]


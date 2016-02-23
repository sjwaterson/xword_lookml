- view: solvepuzzles
  sql_table_name: xword_solvepuzzles
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: author_title
    type: string
    sql: ${TABLE}.author_title

  - dimension: contents
    type: string
    sql: ${TABLE}.contents

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.modified

  - measure: count
    type: count
    drill_fields: [id]


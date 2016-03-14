- view: answer
  sql_table_name: xword_answer
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: answer
    type: string
    sql: ${TABLE}.answer

  - dimension: appearances
    type: number
    sql: ${TABLE}.count

  - dimension: length
    type: number
    sql: LENGTH(${TABLE}.answer)
    value_format_name: decimal_2 

  - measure: count
    type: count
    drill_fields: [id]

  - measure: total_appearances
    label: "Total Appearances"
    type: sum
    sql: ${TABLE}.count
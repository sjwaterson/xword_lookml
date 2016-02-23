- view: user
  sql_table_name: xword_user
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: first_name
    type: string
    sql: ${TABLE}.first_name

  - dimension_group: joined
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.joined

  - dimension: last_name
    type: string
    sql: ${TABLE}.last_name

  - dimension: password
    type: string
    sql: ${TABLE}.password

  - dimension: puzzle_pref_id
    type: number
    sql: ${TABLE}.puzzle_pref_id

  - dimension: user_type_id
    type: number
    sql: ${TABLE}.user_type_id

  - dimension: username
    type: string
    sql: ${TABLE}.username

  - measure: count
    type: count
    drill_fields: [id, first_name, last_name, username]


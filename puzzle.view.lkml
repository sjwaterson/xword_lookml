view: puzzle {
  sql_table_name: xword_puzzle ;;

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  dimension_group: date {
    type: time
    timeframes: [date, year, week, month]
    convert_tz: no
    sql: ${TABLE}.date ;;
  }

  dimension: editor_id {
    type: number
    hidden: yes
    sql: ${TABLE}.editor_id ;;
  }

  dimension: grid_id {
    type: number
    hidden: yes
    sql: ${TABLE}.grid_id ;;
  }

  dimension: permission_list {
    hidden: yes
    type: string
    sql: ${TABLE}.permission_list ;;
  }

  dimension: publisher_id {
    hidden: yes
    type: number
    sql: ${TABLE}.publisher_id ;;
  }

  dimension: setter_id {
    type: number
    hidden: yes
    sql: ${TABLE}.setter_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type_id {
    hidden: yes
    type: number
    sql: ${TABLE}.type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, grid.id, clue.count]
  }
}

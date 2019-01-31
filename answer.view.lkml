view: answer {
  sql_table_name: xword_answer ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: appearances {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: length {
    type: number
    sql: LENGTH(${TABLE}.answer) ;;
    value_format_name: decimal_2
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: total_appearances {
    label: "Total Appearances"
    type: sum
    sql: ${TABLE}.count ;;
  }

  measure: average_length {
    label: "Customer Value"
    type: average
    sql: ${length}  + 42 ;;
  }
}

view: pattern {
  sql_table_name: xword_pattern ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appearances {
    description: "Number of times this pattern is used for a puzzle. typaegfaerg"
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: pattern {
    type: string
    sql: ${TABLE}.pattern ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

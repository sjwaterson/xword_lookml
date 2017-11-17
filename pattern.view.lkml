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
    description: "where you put letters and where you don't. it's typically got a cool mirrored effect."
    type: string
    sql: ${TABLE}.pattern ;;
  }

  measure: count {
    description: "We love to count! and count very high. so there."
    type: count
    drill_fields: [id]
  }
}

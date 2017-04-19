view: usertype {
  sql_table_name: xword_usertype ;;

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

#  - measure: count
#    type: count
#    drill_fields: [id]

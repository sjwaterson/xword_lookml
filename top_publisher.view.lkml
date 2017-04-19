view: top_publisher {
  derived_table: {
    sql: SELECT publisher_id,
       RANK () OVER
       (
         ORDER BY COUNT(*) DESC
       ) rank
      FROM xword_puzzle AS puzzle
      WHERE {% condition puzzle.publisher_id %} puzzle.publisher_id {% endcondition %}
      GROUP BY 1
       ;;
  }

  # # Specify the table name if it's different from the view name:
  #   sql_table_name: my_schema_name.top_publisher
  #
  # # Or, you could make this view a derived table, like this:
  #   derived_table:
  #     sql: |
  #       SELECT
  #         users.id as user_id
  #         , COUNT(*) as lifetime_orders
  #         , MAX(orders.date) as most_recent_purchase_date
  #       FROM orders
  #       GROUP BY user.id


  dimension: publisher_id {
    primary_key: yes
    sql: ${TABLE}.publisher_id ;;
  }

  dimension: publisher_rank {
    sql: ${TABLE}.rank ;;
  }

  measure: min_rank {
    type: min
    sql: ${publisher_rank} ;;
    hidden: yes
  }

  dimension: top_10_publisher {
    type: yesno
    sql: ${TABLE}.rank < 10 ;;
  }

}

# #     Define your dimensions and measures here, like this:
#     - dimension: profit
#       type: number
#       sql: ${TABLE}.profit
#
#     - measure: total_profit
#       type: sum
#       sql: ${profit}

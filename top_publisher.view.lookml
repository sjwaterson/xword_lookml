- view: top_publisher
  derived_table:
    sql: |
      SELECT publisher_id,
       RANK () OVER
       (
         ORDER BY COUNT(*) DESC
       ) rank
      FROM xword_puzzle AS puzzle
      GROUP BY 1
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


  fields:
  - dimension: publisher_id
    primary_key: true
    sql: ${TABLE}.publisher_id
    
  - dimension: publisher_rank
    sql: ${TABLE}.rank
    
  - measure: min_rank
    type: min
    sql: ${publisher_rank}
    hidden: true
    
  - dimension: top_10_publisher
    type: yesno
    sql: ${TABLE}.rank < 10
    
  - dimension: top_10_publisher_id
    sql: CASE WHEN ${top_10_publisher} = 'Yes' then ${publisher_id} else 'Other' end
    order_by_field: min_rank
    
# #     Define your dimensions and measures here, like this:
#     - dimension: profit
#       type: number
#       sql: ${TABLE}.profit
#
#     - measure: total_profit
#       type: sum
#       sql: ${profit}

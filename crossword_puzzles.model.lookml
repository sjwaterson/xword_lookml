- connection: xword

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: answer

- explore: clue
  joins:
    - join: puzzle
      type: left_outer 
      sql_on: ${clue.puzzle_id} = ${puzzle.id}
      relationship: many_to_one

    - join: grid
      type: left_outer 
      sql_on: ${puzzle.grid_id} = ${grid.id}
      relationship: many_to_one


- explore: grid

- explore: pattern

- explore: puzzle
  joins:
    - join: grid
      type: left_outer 
      sql_on: ${puzzle.grid_id} = ${grid.id}
      relationship: many_to_one


- explore: puzzletype

- explore: rawpuzzles

- explore: solvepuzzles

- explore: user

- explore: usertype


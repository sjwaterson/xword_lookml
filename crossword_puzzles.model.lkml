connection: "xword"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: answer {}

explore: clue {
  join: puzzle {
    type: left_outer
    sql_on: ${clue.puzzle_id} = ${puzzle.id} ;;
    relationship: many_to_one
  }

  join: grid {
    type: left_outer
    sql_on: ${puzzle.grid_id} = ${grid.id} ;;
    relationship: many_to_one
  }

  join: puzzletype {
    type: left_outer
    sql_on: ${clue.type_id} = ${puzzletype.id} ;;
    relationship: many_to_one
  }

  join: top_publisher {
    sql_on: ${puzzle.publisher_id} = ${top_publisher.publisher_id} ;;
    relationship: many_to_one
  }
  description: "This is where you find the rhubarb."
}

explore: grid {
  join: puzzletype {
    type: left_outer
    sql_on: ${grid.type_id} = ${puzzletype.id} ;;
    relationship: many_to_one
  }

  description: "And here is a rutabega! w00t."
}

explore: pattern {}

explore: puzzle {
  join: grid {
    type: left_outer
    sql_on: ${puzzle.grid_id} = ${grid.id} ;;
    relationship: many_to_one
  }

  join: puzzletype {
    type: left_outer
    sql_on: ${puzzle.type_id} = ${puzzletype.id} ;;
    relationship: many_to_one
  }

  join: editor {
    from: user
    type: left_outer
    sql_on: ${puzzle.editor_id} = ${editor.id} ;;
    relationship: many_to_one
  }

  join: setter {
    from: user
    type: left_outer
    sql_on: ${puzzle.setter_id} = ${setter.id} ;;
    relationship: many_to_one
  }

  join: publisher {
    from: user
    type: left_outer
    sql_on: ${puzzle.publisher_id} = ${publisher.id} ;;
    relationship: many_to_one
  }
}

explore: puzzletype {}

explore: rawpuzzles {}

explore: solvepuzzles {}

explore: user {
  join: usertype {
    type: left_outer
    sql_on: ${user.user_type_id} = ${usertype.id} ;;
    relationship: many_to_one
  }
}

explore: usertype {}

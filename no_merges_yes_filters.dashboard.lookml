- dashboard: no_merges_but_filters
  title: no merges, but filters!
  layout: newspaper
  elements:
  - name: QA
    type: text
    title_text: QA
    subtitle_text: testing
    body_text: a text tile
    row: 0
    col: 16
    width: 8
    height: 6
  - name: more text
    type: text
    title_text: more text
    subtitle_text: tiles
    body_text: are great
    row: 24
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: crossword_puzzles
    explore: clue
    type: table
    fields:
    - clue.answer
    - clue.count
    - clue.text
    filters: {}
    sorts:
    - clue.count desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    listen:
      answer: clue.answer
    row: 8
    col: 1
    width: 22
    height: 16
  - title: answer appearances
    name: answer appearances
    model: crossword_puzzles
    explore: answer
    type: looker_bar
    fields:
    - answer.answer
    - answer.total_appearances
    filters: {}
    sorts:
    - answer.total_appearances desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    series_types: {}
    listen:
      answer: answer.answer
    row: 0
    col: 0
    width: 16
    height: 8
  filters:
  - name: answer
    title: answer
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: crossword_puzzles
    explore: answer
    listens_to_filters: []
    field: answer.answer

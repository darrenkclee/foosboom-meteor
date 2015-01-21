# client/views/game.coffee

Template.game.events
  "click .finish-game": (e, tpl) ->
    e.preventDefault()
    Games.update({_id: @_id}, {$set: {completed: true}})

  "click .delete-game": (e, tpl) ->
    Games.remove(@_id)

  "click .one-plus": (e, tpl) ->
    e.preventDefault()
    @teams[0].score += 1
    Games.update({_id: @_id}, {$set: {teams: @teams}})

  "click .two-plus": (e, tpl) ->
    e.preventDefault()
    @teams[1].score += 1
    Games.update({_id: @_id}, {$set: {teams: @teams}})

  "click .one-minus": (e, tpl) ->
    e.preventDefault()
    @teams[0].score -= 1
    Games.update({_id: @_id}, {$set: {teams: @teams}})

  "click .two-minus": (e, tpl) ->
    e.preventDefault()
    @teams[1].score -= 1
    Games.update({_id: @_id}, {$set: {teams: @teams}})

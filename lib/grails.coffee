GrailsView = require './grails-view'

module.exports =
  grailsView: null

  activate: (state) ->
    @grailsView = new GrailsView(state.grailsViewState)

  deactivate: ->
    @grailsView.destroy()

  serialize: ->
    grailsViewState: @grailsView.serialize()

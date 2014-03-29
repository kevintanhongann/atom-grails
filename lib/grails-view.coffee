{View} = require 'atom'

module.exports =
class GrailsView extends View
  @content: ->
    @div class: 'grails overlay from-top', =>
      @div "The Grails package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "grails:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "GrailsView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)

{CompositeDisposable} = require 'atom'

module.exports = Underline =
  subscriptions: null

  activate: (state) ->
    @subscriptions = new CompositeDisposable

    # Register commands
    @subscriptions.add atom.commands.add 'atom-workspace', 'underline:create':
      => @create_underline()

  deactivate: ->
    @subscriptions.dispose()

  create_underline: ->
    if editor = atom.workspace.getActiveTextEditor()
      curPoint = editor.getCursorBufferPosition()

      # check that we are not in the first column
      if curPoint.column <= 0 then return

      # check that a line above the current one exists
      if curPoint.row <= 0 then return

      # get the char left to the current position
      chr = editor.getTextInBufferRange([curPoint,
                      [curPoint.row,curPoint.column-1]])
      # console.log('Character code left to cursor: ' + chr.charCodeAt(0))

      # calculate how many chars are to be inserted above
      lineAbove = editor.lineTextForBufferRow(curPoint.row-1)
      lengthLineAbove = lineAbove.length
      charsToBeInserted = lengthLineAbove - curPoint.column
      if charsToBeInserted <= 0 then return

      # create str with chr repeated until end of the line above
      insStr = ''
      for i in [0...charsToBeInserted]
        insStr += chr

      editor.insertText(insStr)

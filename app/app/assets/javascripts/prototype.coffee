# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#mainTextArea')
    .keypress (event) ->
      console.log @
      =>
        if event.which is 10
          console.log @
          lines = $(@).val().split('\n')
          $(@).val('')
          for line of lines
            console.log line
            if line
              $('<div />')
                .text line
                .appendTo $('body')
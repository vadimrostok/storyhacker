Template["codeEditor"].onCreated ->
  42

Template["codeEditor"].onRendered ->
  42

Template["codeEditor"].helpers
  sceneId: ->
    "scene1"

  editorConfig: ->
    ( editor ) ->
      editor.setTheme "ace/theme/monokai"
      editor.getSession().setUseWrapMode yes
      editor.getSession().setMode "ace/mode/javascript"

Template["codeEditor"].events {}

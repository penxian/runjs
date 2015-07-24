/**
*
* richman
*
**/

require.config({
  baseUrl:'bower_components',
  packages: [{
    name: "codemirror",
    location: "./codemirror",
    main: "lib/codemirror"
  }]
});

require([
  "codemirror", "codemirror/mode/htmlmixed/htmlmixed","codemirror/mode/css/css"
], function(CodeMirror) {

 	var htmlcodeMirror = CodeMirror.fromTextArea(document.getElementById('htmlcode'),{
		mode:'htmlmixed',
		lineNumbers:true,
		lineWrapping:false,
		theme:"eclipse"
	});

	var javascript = CodeMirror.fromTextArea(document.getElementById('jscode'),{
		mode:'javascript',
		lineNumbers:true,
		lineWrapping:false,
		theme:"eclipse"
	});
	var css = CodeMirror.fromTextArea(document.getElementById("csscode"),{
		mode:'css',
		lineNumbers:true,
		lineWrapping:false,
		theme:"eclipse"
	})
});
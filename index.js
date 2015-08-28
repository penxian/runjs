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
		indentUnit: 4, // 缩进
		smartIndent: true, // 智能缩进
		styleActiveLine: true, // 当前行高亮
		autofocus: false, // 自动获得焦点
		lineWrapping:false,
		autoCloseBrackets: true,// 自动关闭括号
		autoCloseTags: true, // 自动关闭标签
		matchTags:{ bothTags: true },
		matchBrackets: true,
		theme:"eclipse"
		,foldGutter: true
		,gutters: ["CodeMirror-lint-markers", "CodeMirror-linenumbers", "CodeMirror-foldgutter"]
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
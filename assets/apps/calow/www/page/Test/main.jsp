<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
		<meta name="HandheldFriendly" content="true"/>
		<meta name="MobileOptimized" content="320"/>
		<title>main</title>
		<script type="text/javascript" src="./js/common.js"></script>
		<script type="text/javascript" src="./js/controller.js"></script>
		<script type="text/javascript" src="./js/mui.js"></script>
		<script type="text/javascript">
			//从Url中获取参数
			var toolName = GetQueryString("toolName");
			document.getElementById('toolName').innerHTML = toolName;
			//测试两数相加
			function Add() {
				var count1 = document.getElementById('count1').value;
				var count2 = document.getElementById('count2').value;
				var json = {
				    "toolName": toolName,
				    "action": "add",
				    "count1": count1,
				    "count2": count2
				};
				plus.controller.TestAct(JSON.stringify(json), function(result){
					alert("code = " + result.code + "--- 相加结果 ： " + result.content);
				},function(result){
					alert("code = " + result.code + "--- 错误信息 ： " + result.content);
				});
			}
			//测试两数相减
			function Sub(){
				var count1 = document.getElementById('count1').value;
				var count2 = document.getElementById('count2').value;
				var json = {
				    "toolName": toolName,
				    "action": "sub",
				    "count1": count1,
				    "count2": count2
				};
				plus.controller.TestAct(JSON.stringify(json), function(result){
					alert("code = " + result.code + "--- 相减结果 ： " + result.content);
				},function(result){
					alert("code = " + result.code + "--- 错误信息 ： " + result.content);
				});
			}
		</script>
		<link rel="stylesheet" href="./css/common.css" type="text/css" charset="utf-8"/>
		<link rel="stylesheet" href="./css/mui.css" type="text/css" charset="utf-8"/>
	</head>
	<body>
		<header>
			<div class="nvbt" onclick="back();"><div class="iback"></div></div>
			<div class="nvtt" id="toolNameId">toolName</div>
		</header>
		<div id="dcontent" class="dcontent">
			<br/>
			<input type="text" class="mui-input-clear" placeholder="数字1" name="count1" id="count1" value="8">
			<input type="text" class="mui-input-clear" placeholder="数字2" name="count2" id="count2" value="4">
            <div class="button" onclick="Add()">测试两数相加</div>
            <div class="button" onclick="Sub()">测试两数相减</div>
			<br/>
		</div>
	</body>
</html>
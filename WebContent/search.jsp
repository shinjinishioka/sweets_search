
<%@ page contentType="text/html; charset=Windows-31J"%>
<%@ page import="modelPack.*"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<META charset="Windows-31J">

<title>スウィーツ検索ページ</title>
<LINK REL="stylesheet" TYPE="text/css" HREF="style.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/start/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
<script src="sweets.js" type="text/javascript"></script>

<script>

<%-- 		<%if (request.getAttribute("nantoka") != null) {%>


			$(function(){
				$("#nyuuryoku").slideUp();
			});

		<%}%>; --%>


</script>

</head>
<body>
	<!-- 常に表示 -->
	<div class="always">
	<h2>スウィーツ検索ページ</h2>
	<div id="nyuuryoku">
	<form action="control" method="post">


		<p>検索したいスウィーツ ID を入力して下さい</p>
		<p>
			<input type="text" name="paramId" value=""> <input
				type="submit" value="検索">
					<input type="hidden" name="nantoka" value="a" />

		</p>
	</form>
	    <form action="control" method="post">
    	<p >検索したい金額を入力して下さい</p>
    	<p>
    	<input type="text" name="paramPrice1" value="" />円から

    	<input type="text" name="paramPrice2" value="" />円まで
    	<input type="hidden" name="nantoka" value="a" />
    	<input type="submit" value="検索" id="kingaku">
    	</p>
    	</form>
    	</div>
    	</div>

	<!-- リクエスト変数としてmessageという名前のオブジェクトが登録されていたら（→getできたら）、
	messageという名前がついたオブジェクトをこの位置に編集する -->

	<%
		if(request.getAttribute("message") != null){
	%>

	<div id="error">
	<p><%=(String)request.getAttribute("message")%></p>
	</div>
			<!-- セッション継続中保持する必要がない。リクエストの間だけあればOK -->
	<%
		}
	%>

	<!-- リクエスト変数としてsweetsという名前のオブジェクトが登録されていたら（→getできたら）、
	sweetsという名前がついたオブジェクトから必要な項目をゲッターで取得し、この位置に編集する -->

	<%
		if(request.getAttribute("sweets") != null){
	%>

	<%
		ProductEntity ent = (ProductEntity)request.getAttribute("sweets");
	%>

	<h2 class="kekka">検索結果</h2>
	<table class="kekka" border="1">

		<tr>
			<th>ID</th>
			<th>名前</th>
			<th>金額</th>
		</tr>
		<tr>
			<td><%=ent.getProduct_id()%></td>
			<td><%=ent.getProduct_name()%></td>
			<td><%=ent.getPrice()%></td>
		</tr>
	</table>
		<h2><span class="back">戻す</span></h2>
	<%
		}
	%>
			<%
				if(request.getAttribute("swd") != null){
			%>

	<%
		@SuppressWarnings("unchecked")
	 	  ArrayList<ProductEntity> swd = (ArrayList<ProductEntity>)request.getAttribute("swd");
	%>

	<h2 class="kekka">検索結果</h2>
	<table class="kekka" border="1">
		<tr>
			<th>ID</th>
			<th>名前</th>
			<th>金額</th>
		</tr>

			<%
				for (ProductEntity ent : swd) {
			%>
					<tr>
			<td><%=ent.getProduct_id()%></td>
			<td><%=ent.getProduct_name()%></td>
			<td><%=ent.getPrice()%></td>
			</tr>
	<%}

			%>

	</table>
	<h2><span class="back">戻す</span></h2>
	<%}%>

</body>
</html>
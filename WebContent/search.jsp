
<%@ page contentType="text/html; charset=Windows-31J"%>
<%@ page import="modelPack.*"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<META charset="Windows-31J">

<title>�X�E�B�[�c�����y�[�W</title>
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
	<!-- ��ɕ\�� -->
	<div class="always">
	<h2>�X�E�B�[�c�����y�[�W</h2>
	<div id="nyuuryoku">
	<form action="control" method="post">


		<p>�����������X�E�B�[�c ID ����͂��ĉ�����</p>
		<p>
			<input type="text" name="paramId" value=""> <input
				type="submit" value="����">
					<input type="hidden" name="nantoka" value="a" />

		</p>
	</form>
	    <form action="control" method="post">
    	<p >�������������z����͂��ĉ�����</p>
    	<p>
    	<input type="text" name="paramPrice1" value="" />�~����

    	<input type="text" name="paramPrice2" value="" />�~�܂�
    	<input type="hidden" name="nantoka" value="a" />
    	<input type="submit" value="����" id="kingaku">
    	</p>
    	</form>
    	</div>
    	</div>

	<!-- ���N�G�X�g�ϐ��Ƃ���message�Ƃ������O�̃I�u�W�F�N�g���o�^����Ă�����i��get�ł�����j�A
	message�Ƃ������O�������I�u�W�F�N�g�����̈ʒu�ɕҏW���� -->

	<%
		if(request.getAttribute("message") != null){
	%>

	<div id="error">
	<p><%=(String)request.getAttribute("message")%></p>
	</div>
			<!-- �Z�b�V�����p�����ێ�����K�v���Ȃ��B���N�G�X�g�̊Ԃ��������OK -->
	<%
		}
	%>

	<!-- ���N�G�X�g�ϐ��Ƃ���sweets�Ƃ������O�̃I�u�W�F�N�g���o�^����Ă�����i��get�ł�����j�A
	sweets�Ƃ������O�������I�u�W�F�N�g����K�v�ȍ��ڂ��Q�b�^�[�Ŏ擾���A���̈ʒu�ɕҏW���� -->

	<%
		if(request.getAttribute("sweets") != null){
	%>

	<%
		ProductEntity ent = (ProductEntity)request.getAttribute("sweets");
	%>

	<h2 class="kekka">��������</h2>
	<table class="kekka" border="1">

		<tr>
			<th>ID</th>
			<th>���O</th>
			<th>���z</th>
		</tr>
		<tr>
			<td><%=ent.getProduct_id()%></td>
			<td><%=ent.getProduct_name()%></td>
			<td><%=ent.getPrice()%></td>
		</tr>
	</table>
		<h2><span class="back">�߂�</span></h2>
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

	<h2 class="kekka">��������</h2>
	<table class="kekka" border="1">
		<tr>
			<th>ID</th>
			<th>���O</th>
			<th>���z</th>
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
	<h2><span class="back">�߂�</span></h2>
	<%}%>

</body>
</html>
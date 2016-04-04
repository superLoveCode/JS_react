<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<c:if test="${not empty message}">
	<div class="note note-success">
		<button type="button" class="close" data-dismiss="note">&times;</button>
		<h4 class="block">操作成功</h4>
		<p>${message}</p>
	</div>
</c:if>

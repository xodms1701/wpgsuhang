<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String filename = request.getParameter("FILE_NAME"); %>
<jsp:forward page="Reader.jsp">
	<jsp:param name="CONTENTPAGE" value="list/Reader.jsp?FILE_NAME=<%=filename%>"/>
</jsp:forward>
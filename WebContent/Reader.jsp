<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String filename = request.getParameter("FILE_NAME");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- One -->
	<p>content</p>
	<h2>글</h2>
	<%
		BufferedReader reader = null;
		try {
			String filePath = application.getRealPath("/WEB-INF/bbs/" + filename);
			reader = new BufferedReader(new FileReader(filePath));
			while (true) {
				String str = reader.readLine();
				if (str == null)
					break;
				out.println(str + "<br>");
			}
		} catch (FileNotFoundException fnfe) {
			out.println("파일이 존재하지 않습니다.");
		} catch (IOException ioe) {
			out.println("파일을 읽을 수 없습니다.");
		} finally {
			try {
				reader.close();
			} catch (Exception e) {

			}
		}
	%>
</body>
</html>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
	String chk_info = request.getParameter("chk_info");
	String dir = application.getRealPath("/WEB-INF/bbs/");	
	BufferedWriter bw = new BufferedWriter(new FileWriter(dir+"count.txt",true));

	  //FileWriter에서 true를 해주지 않으면 파일을 덮어쓰기 때문에 기존에 파일이 날라간다.
	  PrintWriter pw = new PrintWriter(bw,true);
	  //생선된 파일의 뒤에 이어서 쓴다.
		pw.write(chk_info+"\n");
	  pw.flush();
	  pw.close();
	  
	  response.sendRedirect("writeProc.jsp");
%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String dirPath = application.getRealPath("/WEB-INF/bbs/");
	File dir = new File(dirPath);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 페이지</title>
</head>
<%! int kpop=0,pop=0,jazz=0,ballad=0,dance=0; %>
<%
String sLine="";
try{
// 파일읽기
FileReader fr = new FileReader(dir+"count.txt");      // 읽기객체생성.
BufferedReader br = new BufferedReader(fr);   // 버퍼객체생성.
// 버퍼객체에 들어간 파일을 라인단위로 읽어내기
while ( (sLine = br.readLine()) != null ) {  
  switch(sLine){
  case "kpop":
	  kpop++;
	  break;
  case "pop":
	  pop++;
	  break;
  case "jazz":
	  jazz++;
	  break;
  case "ballad":
	  ballad++;
	  break;
  case "dance":
	  dance++;
	  break;
  }

}

}catch(Exception e){
e.printStackTrace();
}
	
%>
<body>
	<p>투표 현황</p>
	<%
		out.println("kpop = "+kpop+"\n");
		out.println("pop = "+ pop+"\n");
		out.println("jazz = "+jazz+"\n");
		out.println("ballad = "+ballad+"\n");
		out.println("dance = "+dance);
	%>
</body>
</html>
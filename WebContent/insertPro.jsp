<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String id=request.getParameter("id");
String pw=request.getParameter("pw");
String name=request.getParameter("name");
String addr=request.getParameter("addr");
String tel=request.getParameter("tel");
Date register = new Date(System.currentTimeMillis());

Connection conn = null;
PreparedStatement pstmt = null;
String driverName="oracle.jdbc.driver.OracleDriver";
String dbURL = "jdbc:oracle:thin:@192.168.0.3:1521:orcl";
String str="";
try{
	Class.forName(driverName);
	conn = DriverManager.getConnection(dbURL,"scott","tiger");
	
	String sql="insert into join values(join_seq.nextval,?,?,?,to_date(sysdate,'yyyyMMddhh'),?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	pstmt.setDate(4, register);
	pstmt.setString(5, addr);
	pstmt.setString(6, tel);

	pstmt.executeUpdate();
	
	out.println("join테이블에 새로운 레코드를 추가 했습니다.");

}catch(Exception e){
	e.printStackTrace();
	out.println("join 테이블에 새로운 레코드를 추가에 실패했습니다.");
}finally{
	if(pstmt != null){
		try{
			pstmt.close();
		}catch(SQLException sqle){}
		
		}
	}


%>
</body>
</html>
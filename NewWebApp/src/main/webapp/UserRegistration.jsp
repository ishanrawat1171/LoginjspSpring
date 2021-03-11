<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("username");   
    String password = request.getParameter("pass");

    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/freshdb",
            "root", "admin");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into Register(name1, email, password1) values ('" + userName + "','" +
    	     email + "','" +  password + "')");
    if (i > 0) {
        response.sendRedirect("Welcome.jsp");
        
    } else {
        response.sendRedirect("Login.jsp");
    }
%>
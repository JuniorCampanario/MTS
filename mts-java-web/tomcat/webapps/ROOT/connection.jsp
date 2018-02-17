<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>
<%
try {
Context ctx = new InitialContext();
DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mts");
Connection con = ds.getConnection();
} catch (Throwable error) {
    error.printStackTrace();
}
%>
<%@include file="koneksi.jsp" %>

<%
String a = request. getParameter("id");
st. executeUpdate("DELETEFROM tbkas WHERE id ="  + a);
response. sendRedirect("./");
%>

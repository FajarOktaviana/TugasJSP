<%@include file="koneksi.jsp" %>
<%
String submit = request. getParameter("button_submit");
if (submit == null) {
 response. sendRedirect("./");
}
String nim = request. getParameter("nim");
Name string = request. getParameter("nama");
Nominal string = request. getParameter("nominal");
String tanggal = request. getParameter("tanggal");
Query string =  "UPDATEuang_kas SET nama=?, nominal=?, tanggal=? WHERE nim="+ nim +"" ;
PreparedStatement ps = con. prepareStatement(query);
ps. setString(1,nim);
ps. setString(2,nama);
ps. setString(3,nominal);
ps. setString(4,tanggal);
ps. executeUpdate();
response. sendRedirect("./");
%>

<%@include file="koneksi.jsp"%>
<%
String submit = request.getParameter("button_submit");
if (submit == null) {
    response.sendRedirect("./");
}
String nim = request.getParameter("nim");
String nama = request.getParameter("nama");
String nominal = request.getParameter("nominal");
String tanggal_bayar = request.getParameter("tanggal");
String query = "INSERT INTO tbkas (nama, kelas, nominal, tanggal) VALUES(?,?,?,?)";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, nim );
ps.setString(2, nama);
ps.setString(3, nominal);
ps.setString(4, tanggal);
ps.executeUpdate();
response.sendRedirect("./");
%>

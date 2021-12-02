<%@include file="koneksi.jsp" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pembayaran Kas</title>
</head>
<body>
    <center>
        <h1>Pembayaran Kas</h1>
        <table border="1">
            <thead>
                <tr>
                    <!-- <th>No</th> -->
                    <th>NIM</th>
                    <th>Nama</th>
                    <th>Nominal</th>
                    <th>Tanggal</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <%
                String data = "SELECT * FROM tbkas";
                rs = st.executeQuery(data);
                while(rs.next()){
                %>
                <tr>
                    <td><%=rs.getString("nim")%></td>
                    <td><%=rs.getString("nama")%></td>
                    <td><%=rs.getString("nominal")%></td>
                    <td><%=rs.getString("tanggal")%></td>
                    <td><a href="hapus.jsp?id=<%= rs.getString("nim")%>">Hapus</a>|
                        <a href="form_ubah.jsp?id=<%= rs.getString("nim")%>">Ubah</a></td>
                </tr>
                <%= rs.getString("nama")%>
                <% } %>
            </tbody>
        </table>
        <a href="form_tambah_data.jsp">Tambah data</a>
    </center>

</body>

</html>

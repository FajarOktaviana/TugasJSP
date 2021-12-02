<%@include file="koneksi.jsp"%>
<!DOCTYPE html>
<html lang="en" >

<head>
    <meta charset="UTF-8" >
    <meta http-equiv="X-UA-Compatible"  content="IE=edge" >
    <meta name="viewport"  content="width = device-width, initial-scale = 1.0" >
    <title>Tamba Data</title>
</head>

<body>
    <center>
        <h1>UBAH DATA</h1>
        <form action="ubah.jsp"  method="post" >
            <%
 String id = request. getParameter("id"); 
 Rs = st. executeQuery("SELECT* FROM tbkas WHERE nim ="+ nim +" " );
 while(rs. next()))
            %>
            <input type="hidden"  name="nim"  value="< %= rs . getString%> >
            <table border="1" >
                <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td><input type="text"  name="nama"  value="< %= rs . getString("nama") %>"  autofocus required></td>
                </tr>
                <tr>
                    <td>Nominal</td>
                    <td>:</td>
                    <td><input type="number"  min="1"  name="nominal"  value="< %= rs . getString("nominal") %>"  required></td>
                </tr>
                <tr>
                    <td>Tanggal</td>
                    <td>:</td>
                    <td><input type="date"  value="<%= rs . getString("tanggal"%>"  name="tanggal_bayar"  required>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp; </td>
                    <td>&nbsp; </td>
                    <td><input type="submit"  name="button_submit"  value="Change">< /td>
                </tr>
            </table>
            <% }%>
        </form>
        <a href="./">Kembali</a>
    </center>

</body>

</html>

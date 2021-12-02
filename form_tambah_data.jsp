<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Data</title>
</head>

<body>
    <center>
        <h1>INPUT DATA</h1>
        <form action="tambah_data.jsp" method="post">
            <table border="1">
            	<tr>
                    <td>NIM</td>
                    <td>:</td>
                    <td><input type="number" name="nim" required></td>
                </tr>
                <tr>
                    <td>NAMA</td>
                    <td>:</td>
                    <td><input type="text" name="nama" autofocus required></td>
                </tr>
                <tr>
                    <td>NOMINAL</td>
                    <td>:</td>
                    <td><input type="number" min="1000" name="nominal" required></td>
                </tr>
                <tr>
                    <td>TANGGAL BAYAR</td>
                    <td>:</td>
                    <td><input type="date" name="tanggal" required></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button_submit" value="Simpan"></td>
                </tr>
            </table>
        </form>
        <a href="./">Kembali</a>
    </center>

</body>

</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <title>Document</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            background-color: transparent;
        }

        .container{
            margin-top: 2em;
            display: flex;
            flex-wrap: wrap;
            gap: 2em;
        }

        .container .card {
            border: 4px solid rgba(255,255,255,0.5);
        }


    </style>
</head>
<body>
<div class="container">
<?php
$idlugar = $_GET['cidade'];
$conexao = mysqli_connect('db','root','123','db_turismo');
   
$sql = "SELECT * FROM tb_hotel WHERE tb_lugar_idtb_lugar = '$idlugar'";
$result = $conexao->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $id = $row['idtb_hotel'];
        echo "<div class='card' style='width: 18rem;'>";
        echo "<img class='card-img-top' src='imagens/hotel/hotel.jpeg' alt='Card image cap'>";
        echo "<div class='card-body'>";
        echo "<h5 class='card-title'>".$row["nome_hotel"]."</h5>";
        echo "<p class='card-text'></p>";
        echo "<a href='infolocal.php?idhotel=$id' class='btn btn-primary'>Visitar</a>";
        echo "</div>";
        echo "</div>";
    }
} else {
    echo "0 results";
} 
?>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>
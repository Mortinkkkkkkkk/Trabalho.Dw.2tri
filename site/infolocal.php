<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/infolocal.css">
    <title>Document</title>
</head>
<body>
    <?php

        $id_lugar = $_GET['idlugar'];
        $conexao = mysqli_connect('db','root','123','db_turismo');
   
        $sql = "SELECT * FROM tb_lugar WHERE idtb_lugar = $id_lugar";
        $result = $conexao->query($sql);
        if ($result->num_rows > 0) 
            while($row = $result->fetch_assoc()) {
                $imagem = $row['imagem'];
                $id = $row['idtb_lugar'];
                $descricao = $row['descricao'];
                $preco = $row['preco'];
                echo "<div class=info>";
                echo "<div class='img'>";
                echo "<img src='imagens/locais/$imagem' alt='Card image cap'>";
                echo "<div class='body-text'>";
                echo "<h2 class='title'>".$row["nome_lugar"]."</h2>";
                echo "<p class='text'>$descricao</p>";
                echo "<a href='#' class='btn'>R$$preco|Comprar</a>";
                echo "</div>";
                echo "</div>";
                echo "</div>";
            }
    ?>    
</body>
</html>
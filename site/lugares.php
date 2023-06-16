<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cadastro.css">
    <title>Document</title>
</head>
<body>
    <?php
        $nome_lugar = $_GET['nome_lugar'];
        $temperatura = $_GET['temperatura'];
        $urbano = $_GET['urbano'];
        $chique = $_GET['chique'];
        $praia = $_GET['praia'];
        $agitacao = $_GET['agitacao'];
        $imagem = $_GET['imagem'];
        $preco = $_GET['preco'];

        $conexao = mysqli_connect('db','root','123','db_turismo');
        $sql = "INSERT INTO tb_lugar(nome_lugar,temperatura,urbano,chique,praia,agitacao,imagem,preco) VALUES ('$nome_lugar','$temperatura','$urbano','$chique','$praia','$agitacao','$imagem','$preco')";
       
        if (mysqli_query($conexao,$sql)){
          echo "funcionou";  
        }
    ?>
    <a href="lugares.html">Voltar</a>
</body>
</html>
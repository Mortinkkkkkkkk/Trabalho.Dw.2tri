<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/viagens.css">
    <title>Document</title>
</head>
<body>
    <?php
        require_once 'conexao.php';
        $idcliente = $_GET['idcliente'];
        echo $idcliente;     
    ?>
    <div class="card">
        <div class="imag">
            <img src="imagens/logo.png" alt="teste">
        </div>
        <div class="card-title"><h2>Teste</h2></div>
        <div class="data">
            <p>ida - volta</p>
        </div>
    </div>
</body>
</html>
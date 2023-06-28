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
        $venda = "SELECT * FROM tb_venda";
        $result = $conexao->query($venda);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $dataida = $row['data_ida_lugar'];
                $datavolta = $row['data_volta_lugar'];
                $idlugar = $row['tb_lugar_idtb_lugar'];
                $lugar = "SELECT `imagem`, `idtb_lugar`,`nome_lugar` FROM `tb_lugar` WHERE `idtb_lugar` = '$idlugar'";
                $resultado = $conexao->query($lugar);
                $linha = $resultado->fetch_assoc();
                $imagem = $linha['imagem'];
                $titulo = $linha['nome_lugar'];
                echo "<h1>Viagens pendentes</h1>";
                echo "   <div class='card'>
                <div class='imag'>
                    <img src='imagens/locais/$imagem'>
                </div>
                <div class='card-title'>$titulo</div>
                <div class='data'>
                    $dataida - $datavolta
                </div>
            </div>";
            }
        }
    ?>

</body>
</html>
<?php
    require_once 'conexao.php';

    $idlugar = $_GET['select'];
    $perfil = $_GET['perfil'];
    $emailperfil = $_GET['email-perfil'];
    $dataida = $_GET['dataida'];
    $datavolta = $_GET['datavolta'];
    $pix = $_GET['pix'];
    
    $sql = "INSERT INTO `tb_venda` (`tb_lugar_idtb_lugar`, `perfil`, `email_perfil`, `data_ida_lugar`, `data_volta_lugar`, `chave_pix`) VALUES ('$idlugar', '$perfil', '$emailperfil', '$dataida', '$datavolta', '$pix')";

    if (mysqli_query($conexao,$sql)) {
        header('location:todos.php');
        exit();
    } else{
        header('locaton:pagamento.php');
        exit();
    };
?>
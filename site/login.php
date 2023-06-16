<?php
$nome = $_GET['nome'];
$senha = $_GET['senha'];
$conexao = mysqli_connect('db','root','123','db_turismo');
$sql = "SELECT * FROM tb_cliente";
$result = $conexao->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    if ($nome == $row['nome_cliente'] and $senha == $row['senha_cliente']){
        header('location: poslogin.html');
        exit();
    }
}
else{
    header('location: login.html');
    exit();
}
?>
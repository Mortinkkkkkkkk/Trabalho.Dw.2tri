<?php
$nome_cliente = $_GET['nome'];
$email_cliente = $_GET['email'];
$senha_cliente = $_GET['senha'];
$conexao = mysqli_connect('db','root','123','db_turismo');
$sql = "INSERT INTO `tb_cliente` (`nome_cliente`, `email_cliente`, `senha_cliente`) VALUES ('$nome_cliente', '$email_cliente', '$senha_cliente')";
if (mysqli_query($conexao,$sql)) {
    header('location: login.html');
    exit();
}
else {
    header('location: cadastro.html');
    exit();
}

?>

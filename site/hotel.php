<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            background-color: white;
        }

        .box {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .box .form{
            display: flex;
            flex-direction: column;
        }

        .form .inputs{
            margin-top: 15px;
        }
        
        .form .submit{
            margin-top: 15px;
            font-weight: 600;
            width: 40%;
            height: 40px;
            border: 2px solid #08a816;
            border-radius: 5px;
            background-color: #08a816;
            transition: .25s;
        }
        .form .submit:hover{
            transition: .25s;
            background-color: #034208;
            border-color: #034208;
            border-radius: 15px;
        }
    </style>
</head>
<body>
<div class="box">
    <h1>Hoteis</h1>
    <form action="poshotel.php" class="form">
        <label for="cidade">Cidade do Hotel:</label>
        <select name="cidade" id="1">
            <?php
                require_once 'conexao.php' ;

                $sql = "SELECT * FROM tb_lugar";
                $resultado = mysqli_query($conexao,$sql);
                if (mysqli_num_rows($resultado) > 0){
                    while ($row = mysqli_fetch_array($resultado)){
                        $cidade = $row['nome_lugar'];
                        $id = $row['idtb_lugar'];
                        echo "<option value='$id'>$cidade</option>";
                    }
                }
            ?>
        </select>
        <div class="inputs">
            <label for="dataida">Dara de Ida:</label>
            <input type="date" name="dataida">
        </div>
        <div class="inputs">
            <label for="datavolta">Data de Volta:</label>
            <input type="date" name="datavolta">
        </div>
        <input type="submit" value="Procurar" class="submit">
    </form>
</div>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            background-color: whitesmoke;
        }
        .form{
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .form .pessoal{
            display: flex;
            flex-direction: column;
            align-items: center;
            resize: none;
        }
        .form .datas{
            display: flex;
            flex-direction: column;
            align-items: center;
            resize: none;
        }
        .form .pagamento{
            display: flex;
            flex-direction: column;
            align-items: center;
            resize: none;
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
            transition: 0.25s;
            background-color: #034208;
            border-color: #034208;
            border-radius: 15px;
        }
    </style>
</head>
<body>
    <?php
        $id = $_GET['idlugar'];
        echo "<form action='venda.php?idlugar='$id'' class='form'>";
    ?>
        <div class="pessoal">
            <h1>Dados pessoais</h1>
            <label for="nome">Nome:</label>
            <input type="text" name="nome">
            <label for="sobrenome">Sobrenome:</label>
            <input type="text" name="sobrenome">
            <label for="cpf">CPF:</label>
            <input type="text" name="cpf">
            <label for="sexo">Sexo</label>
            <select name="sexo">
                <option value="1">Masculino</option>
                <option value="2">Feminino</option>
                <option value="3">Nao definir</option>
            </select>
        </div>
        <div class="datas">
            <h1>Datas</h1>
            <label for="dataida">Data de Ida:</label>
            <input type="date" name="dataida" required>
            <label for="datavolta">Data de Volta:</label>
            <input type="date" name="datavolta" required>
        </div>
        <div class="pagamento">
            <h1>Pagamento</h1>
            <label for="pix">Chave pix</label>
            <input type="text" name="pix" required>
        </div>
        <input type="submit" class="submit">
    </form>
</body>
</html>
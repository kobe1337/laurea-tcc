<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contato</title>
    </head>
    <body>
        <h1>Formulário de Contato</h1>
        <form method="POST" action="">
            <div class="form-group">
                <label for="nome">Nome: *</label>
                <input type="text" class="form-control" id="nome" placeholder="Ex: João da Silva">
            </div>
            <div class="form-group">
                <label for="email">E-mail: *</label>
                <input type="email" class="form-control" id="email" placeholder="Ex: nome@gmail.com">
            </div>
            <div class="form-group">
                <label for="assunto">Assunto: </label>
                <input type="text" class="form-control" id="assunto" placeholder="Ex: Planos">
            </div>
            <div class="form-group">
                <label for="mensagem">Mensagem: *</label>
                <textarea type="text" class="form-control" id="mensagem"></textarea>
            </div>
            <div class="form-group">
                <input type="submit" value="ENVIAR" class="btn btn_enviar">
            </div>
        </form>
    </body>
</html>

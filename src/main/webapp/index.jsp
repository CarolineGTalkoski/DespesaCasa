<%-- 
    Document   : index
    Created on : 26 de jul. de 2024, 14:27:40
    Author     : Aluno
--%>

<%@page import="com.mycompany.despesascasa.Despesas"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Despesas da casa!</h1>
        
        <form action="salvaDespesa.jsp" method="post">
            
            <label for="data">Data: </label>
                <input type="date" id="data" name="data" value="" required="">
            </label><br><br>
            
            <label for="categoria" class="form-label">
            Categoria:</label>
        <select id="categoria" name="categoria" required>
            <option value="limpeza">Limpeza</option>
            <option value="decoracao">Decoração</option>
            <option value="manutencao">Manutenção</option>
            <option value="conforto">Conforto</option>
            <option value="lazer">Lazer</option>
            <option value="comida">Comida</option>
            <option value="outro">Outro</option>
        </select> <br><br>
            
            <label for="descricao">Descrição: </label>
                <input type="text" id="descricao" name="descricao" value="" required="" >
            </label><br><br>
            
            <label for="local" class="form-label">
            Local:</label>
        <select id="local" name="local" required>
            <option value="quarto">Quarto</option>
            <option value="cozinha">Cozinha</option>
            <option value="saladeestar">Sala de estar</option>
            <option value="saladejantar">Sala de jantar</option>
            <option value="banheiro">Banheiro</option>
            <option value="lavanderia">Lavanderia</option>
            <option value="outro">Outro</option>
        </select> <br><br>
            
            <label for="valor">Valor: </label>
                <input type="number" id="valor" name="valor" value="" required="">
            </label><br><br>
            
            <label for="parcelas">Parcelas: </label>
                <input type="number" id="parcelas" name="parcelas" value="" required="" >
            </label><br><br>
            
            <input type="submit" value="Enviar">
            
        </form>
            
    </body>
</html>

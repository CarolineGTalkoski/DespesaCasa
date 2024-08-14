<%-- 
    Document   : salvaDespesa
    Created on : 26 de jul. de 2024, 14:28:14
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
        
        <%
      
                ArrayList<Despesas> despesas = (ArrayList<Despesas>) session.getAttribute("despesas");
                    if (despesas == null) {
                    despesas = new ArrayList<>();
                    session.setAttribute("despesas", despesas);
                }
            
                String data=request.getParameter("data");         
                String categoria = request.getParameter("categoria");
                String descricao = request.getParameter("descricao");
                String local = request.getParameter("local");         
                String valoR = request.getParameter("valor");         
               

         if (valoR != null && !valoR.isEmpty()) {
                double valor = Double.parseDouble(valoR);
                int parcelas = Integer.parseInt(request.getParameter("parcelas"));

                despesas.add(new Despesas(data, categoria, descricao, local, valor, parcelas));
            }
                    
                    
                
        %>
        
            
           
        
        <%
                out.print("<h6>Dados das Despesas:</h6>");
                for (Despesas d : despesas) {
        %>
        
        
            <div>
                <p><strong>Data:</strong> <%= d.getData() %></p>
                <p><strong>Categoria:</strong> <%= d.getCategoria() %></p>
                <p><strong>Descrição:</strong> <%= d.getDescricao() %></p>
                <p><strong>Local:</strong> <%= d.getLocal() %></p>
                <p><strong>Valor:</strong> <%= d.getValor() %></p>
                <p><strong>Parcelas:</strong> <%= d.getParcelas() %></p>
                <p><strong>Valor das parcela:</strong> <%= d.getValorparcela() %></p>
            </div>
                
        
        <%
            }
        %>
    </body>
</html>

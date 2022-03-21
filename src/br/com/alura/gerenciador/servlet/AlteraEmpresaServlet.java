package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelos.Banco;
import br.com.alura.gerenciador.modelos.Empresa;

@WebServlet("/alteraEmpresa")
public class AlteraEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Editando uma nova empresa");
		String novaEmpresa = request.getParameter("nome");
		String novaDataDaEmpresa = request.getParameter("data");
		String novoId = request.getParameter("id");
		Integer id = Integer.valueOf(novoId);
		
		
		
		Date dataAbertura = null;	
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			dataAbertura = sdf.parse(novaDataDaEmpresa);
		} catch (ParseException e) {			
			throw new ServletException(e);
		}
		
		Banco banco = new Banco();
		Empresa empresa = banco.buscaEmpresaPeloId(id);
		empresa.setNome(novaEmpresa);
		empresa.setDataAbertura(dataAbertura);
		empresa.setId(id);
		
		response.sendRedirect("listaEmpresas");
		
		
	}

}

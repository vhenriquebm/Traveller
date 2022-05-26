package Controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAO;
import model.Usuario;

@WebServlet(urlPatterns = { "/Controller", "/insert", "/login" })

public class Controller extends HttpServlet {

	private static final long serialVersionUID = 1L;

	DAO dao = new DAO();

	Usuario usuario = new Usuario();

	String pagina = "";

	public Controller() {
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		try {
			dao.testeConexao();
		} catch (Exception e) {

			System.out.println("Não foi possível conectar");
		}

		String action = request.getServletPath();

		if (action.equals("/insert")) {
			novoUsuario(request, response);

		}

	}

	protected void novoUsuario(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		usuario.setNome(request.getParameter("nome"));
		usuario.setEmail(request.getParameter("email"));
		usuario.setSenha(request.getParameter("senha"));
		usuario.setEndereco(request.getParameter("endereco"));
		usuario.setCidade(request.getParameter("cidade"));
		usuario.setUF(request.getParameter("UF"));
		usuario.setCEP(request.getParameter("CEP"));
		usuario.setNumero(request.getParameter("numero"));
		usuario.setComplemento(request.getParameter("complemento"));
		usuario.setBairro(request.getParameter("bairro"));

		System.out.println(request.getParameter("nome"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("senha"));
		System.out.println(request.getParameter("endereco"));
		System.out.println(request.getParameter("cidade"));
		System.out.println(request.getParameter("UF"));
		System.out.println(request.getParameter("CEP"));
		System.out.println(request.getParameter("numero"));
		System.out.println(request.getParameter("complemento"));
		System.out.println(request.getParameter("bairro"));

		dao.inserirUsuario(usuario);

		// response.sendRedirect(getServletInfo("index.html"));

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		try {

			Usuario usuarioBD = dao.lerUsuario(usuario);

			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));

			System.out.println(request.getParameter("email"));
			System.out.println(request.getParameter("senha"));

			if (usuarioBD == null) {

				request.setAttribute("ERROMSG", "Erro usuário não encontrado");

				pagina = "/erro.jsp";

				System.out.println("Usuario não encontrado");

			} else {

				request.getSession().setAttribute("Usuario", usuarioBD);

				pagina = "/dados_usuario.jsp";

				System.out.println("Usuario encontrado");

			}

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
			dispatcher.forward(request, response);

		} catch (Exception e) {

			System.out.println("Erro ao Logar:" + e);
		}

	}

}

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAO {

	private String DRIVE = "com.mysql.cj.jdbc.Driver";

	private String USERNAME = "root";

	private String PASSWORD = "Snow2712@@";

	private String DATABASE_URL = "jdbc:mysql://localhost:3306/usuarios";

	private Connection conectar() {

		Connection con = null;

		try {

			Class.forName(DRIVE);

			con = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
			return con;
		}

		catch (Exception e) {

			System.out.println(e);

			return null;
		}

	}

	public void testeConexao() {

		try {

			Connection con = conectar();

			System.out.println(con);
			System.out.println("Sucesso ao conectar ao banco de dados");
			con.close();

		} catch (Exception e) {

			System.out.println("Erro ao conectar ao banco de dados");
			System.out.println(e);

		}
	}

	public void inserirUsuario(Usuario usuario) {

		String create = "INSERT INTO usuario (nome,email,senha,endereco,cidade,UF,CEP,numero,complemento,bairro) VALUES (?,?,?,?,?,?,?,?,?,?)";

		try {

			Connection con = conectar();

			PreparedStatement pst = con.prepareStatement(create);

			pst.setString(1, usuario.getNome());
			pst.setString(2, usuario.getEmail());
			pst.setString(3, usuario.getSenha());
			pst.setString(4, usuario.getEndereco());
			pst.setString(5, usuario.getCidade());
			pst.setString(6, usuario.getUF());
			pst.setString(7, usuario.getCEP());
			pst.setString(8, usuario.getNumero());
			pst.setString(9, usuario.getComplemento());
			pst.setString(10, usuario.getBairro());

			pst.executeUpdate();

			con.close();

			System.out.println("Deu certo");

		} catch (Exception e) {

			System.out.println("Aconteceu um erro ");
			System.out.println(e);

		}

	}

	public Usuario lerUsuario(Usuario usuario) {

		String read = "SELECT * FROM usuario " + "WHERE email =? AND senha =? ";

		try {

			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read);

			pst.setString(1, usuario.getEmail());
			pst.setString(2, usuario.getSenha());

			ResultSet rs = pst.executeQuery();

			if (rs.next()) {

				pst.setString(1, usuario.getNome());
				pst.setString(2, usuario.getEmail());
				pst.setString(3, usuario.getSenha());
				pst.setString(4, usuario.getEndereco());
				pst.setString(5, usuario.getCidade());
				pst.setString(6, usuario.getUF());
				pst.setString(7, usuario.getCEP());
				pst.setString(8, usuario.getNumero());
				pst.setString(9, usuario.getComplemento());
				pst.setString(10, usuario.getBairro());

				con.close();

//				usuario.setNome(rs.getString(1));
//				usuario.setEmail(rs.getString(2));
//				usuario.setSenha(rs.getString(3));
//				usuario.setEndereco(rs.getString(4));
//				usuario.setCidade(rs.getString(5));
//				usuario.setUF(rs.getString(6));
//				usuario.setCEP(rs.getString(7));
//				usuario.setNumero(rs.getString(8));
//				usuario.setComplemento(rs.getString(9));
//				usuario.setBairro(rs.getString(10));

				// return resultado;

			} else {

				System.out.println("Deu ruim");

				return null;
			}

		}

		catch (Exception e) {
			System.out.println("Erro ao solicitar os dados" + e);

		}
		return usuario;
	}

}

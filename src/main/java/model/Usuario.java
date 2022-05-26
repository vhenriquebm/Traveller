package model;

public class Usuario {

	private int idicon;
	private String nome;
	private String email;
	private String senha;
	private String endereco;
	private String cidade;
	private String UF;
	private String CEP;
	private String numero;
	private String complemento;
	private String bairro;

	public Usuario(int idicon, String nome, String email, String senha, String endereco, String cidade, String UF,
			String CEP, String numero, String complemento, String bairro) {

		super();
		this.idicon = idicon;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.endereco = endereco;
		this.cidade = cidade;
		this.UF = UF;
		this.CEP = CEP;
		this.numero = numero;
		this.complemento = complemento;
		this.bairro = bairro;
	}

	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getIdicon() {
		return idicon;
	}

	public void setIdicon(int idicon) {
		this.idicon = idicon;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUF() {
		return UF;
	}

	public void setUF(String UF) {
		this.UF = UF;
	}

	public String getCEP() {
		return CEP;
	}

	public void setCEP(String CEP) {
		this.CEP = CEP;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

}
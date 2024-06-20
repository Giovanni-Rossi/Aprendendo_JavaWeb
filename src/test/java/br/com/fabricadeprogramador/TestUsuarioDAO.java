package br.com.fabricadeprogramador;

import br.com.fabricadeprogramador.persistencia.entidade.Usuario;
import br.com.fabricadeprogramador.persistencia.jdbc.UsuarioDAO;

public class TestUsuarioDAO {
	
	public static void main(String[] args) {
		testExcluir();
	}
	public static void testAlterar() {
		Usuario usu = new Usuario();
		usu.setId(4);
		usu.setNome("Jãozão da Silva");
		usu.setLogin("jzaoss");
		usu.setSenha("1235678");
				
		//Cadastrando usuário no banco de dados
		UsuarioDAO usuDAO = new UsuarioDAO();
		usuDAO.alterar(usu);
		System.out.println("Alterado com sucesso!");
		
	}
	
	public static void testCadastrar() {
		//Criando o usuario
		Usuario usu = new Usuario();
		usu.setNome("Jãozão");
		usu.setLogin("jzão");
		usu.setSenha("123");
				
		//Cadastrando usuário no banco de dados
		UsuarioDAO usuDAO = new UsuarioDAO();
		usuDAO.cadastrar(usu);
				
		System.out.println("Cadastrado com sucesso!!!");			
	}
	
	public static void testExcluir() {
		Usuario usu = new Usuario();
		usu.setId(4);
		
		UsuarioDAO usuDAO = new UsuarioDAO();
		usuDAO.excluir(usu);
		
		System.out.println("Excluido com sucesso com sucesso");
	}
}

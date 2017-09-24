package aplicacao_banco;

import java.sql.*;
import java.util.Scanner;

public class BancoHospital {

	public static Connection conexao = null;
	
	public BancoHospital() {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}
	}

	public Connection setConnection() throws SQLException {
		String host = "localhost";
		String db = "postgres";
		String url = "jdbc:postgresql://" + host + "/" + db;
		String user = "postgres";
		String senha = "12345678";
		conexao = DriverManager.getConnection(url, user, senha);
		return conexao;
	}

	public static void main(String[] args) throws SQLException {		
		
		Scanner entrada = new Scanner(System.in);
		
		System.out.println("â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€” SISTEMA +HOSPITAL â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”");
		System.out.println("| - Digite o nÃºmero da consulta desejada e em seguida pressione enter         |");
		System.out.println("|	                                                                          |");
		System.out.println("| (1) - Exibir o nome e id_registro de todos os mÃ©dicos que estÃ£o no hospital |");
		System.out.println("|       e que possuem a especialidade de ClÃ­nico Geral.                       |");
		System.out.println("| (2) - Listar o nÃºmero de prontuÃ¡rio e nome de todos os pacientes que possuem|");
		System.out.println("|       um acompanhante associado.                                            |");
		System.out.println("| (3) - Listar os nomes, id_registro e especialidades dos mÃ©dicos que possuem |");
		System.out.println("|       registro CRM (Conselho Regional de Medicina) ativo.                   |");
		System.out.println("| (4) - Exibir o nome de todos os pacientes cadastrados que possuem letra     |");
		System.out.println("|       inicial do primeiro nome a vogal 'A'.                                 |");
		System.out.println("| (5) - Apresentar o valor mÃ¡ximo e o mÃ­nimo dos salÃ¡rios dos mÃ©dicos que pos-|");
		System.out.println("|       suem CRM ativo, onde os mÃ©dicos estÃ£o agrupados por especialidade.    |");
		System.out.println("| (6) - Listar o nome de todos os pacientes que tÃªm consultas marcadas com o  |");
		System.out.println("|       ClÃ­nico Geral.                                                        |");
		System.out.println("| (7) - Exibir todos os medicamentos prescritos pelos mÃ©dicos que realizaram  |");
		System.out.println("|       exames com o diagnÃ³stico positivo.                                    |");
		System.out.println("| (8) - Apresentar a quantidade de mÃ©dicos por especialidade, exceto os que   |");
		System.out.println("|       possuem especialidade gastrointestinal.                               |");
		System.out.println("| (9) - Exibir os nÃºmeros de prontuÃ¡rios dos pacientes que nÃ£o foram cadastra-|");
		System.out.println("|       dos no ano de 2015.                                                   |");
		System.out.println("| (10) - Listar o nome, sobrenome e especialidade de todos os mÃ©dicos que     |");
		System.out.println("|        possuem salÃ¡rio superior ou igual a mÃ©dia salario dos mÃ©dicos no     |");
		System.out.println("|        hospital, onde os mesmos estÃ£o agrupados por especialidade e         |");
		System.out.println("|        ordenados por ordem crescente de salÃ¡rio.                            |");
		System.out.println("|                                                                             |");
		System.out.println("|          -  Para fechar o programa digite 0 e pressione enter -             |");
		System.out.print (" Número da consulta: ");
		int opcao= entrada.nextInt();
		System.out.println(" â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”");
		
		
		BancoHospital teste = new BancoHospital();
		teste.setConnection();
		
		switch( opcao )
		{
		    case 1:
		    		teste.consulta1(conexao);
		            break;
		    
		    case 2:
		    		teste.consulta2(conexao);
		            break;
		    
		    case 3:
		    		teste.consulta3(conexao); 
		            break;
		    
		    case 4:
		    		//teste.consulta4(conexao);
		            break;

		    case 5:
		    		//teste.consulta5(conexao);
		            break;

		    case 6:
		    		teste.consulta6(conexao);
		            break;
	    
		    case 7:
		    		teste.consulta7(conexao);
		            break;
		    
		    case 8:
		    		//teste.consulta8(conexao); 
		            break;
		    
		    case 9:
		    		//teste.consulta9(conexao);
		            break;
	
		    case 10:
		    		//teste.consulta10(conexao);
		            break;
		    
		    default:
		            System.out.println("Erro! Consulta InvÃ¡lida");
		}
		
	}

public void consulta1(Connection conexao) throws SQLException {
		String sql = "SELECT id_registro, primeiro_nome, sobrenome "
				   + "FROM hospital.medico WHERE especialidade = 'Clínico Geral'";
		Statement comando = conexao.createStatement();
		System.out.println("Consulta 1: ");
		
		ResultSet resultado = comando.executeQuery(sql);
		ResultSetMetaData rsm = resultado.getMetaData();
		for (int i = 1; i <= rsm.getColumnCount(); i++) {
			System.out.print(rsm.getColumnName(i) + "\t\t");
			// rsm.getColumnTypeName(i)
		}
		
		System.out.println();
		
		while (resultado.next()) {
			for (int i = 1; i <= rsm.getColumnCount(); i++) {
				String campo = resultado.getString(i);
				System.out.print(campo + "\t\t\t");
			}
			System.out.println();
		}
		comando.close();
	}

public void consulta2(Connection conexao) throws SQLException {
	String sql =  "SELECT p.num_pront, p.primeiro_nome, p.sobrenome\r\n" + 
			"FROM hospital.paciente as p INNER JOIN hospital.acompanhante as a \r\n" + 
			"	ON(p.id_acomp=a.id_acomp)";
	Statement comando = conexao.createStatement();
	System.out.println("Consulta 2: ");
	
	ResultSet resultado = comando.executeQuery(sql);
	ResultSetMetaData rsm = resultado.getMetaData();
	for (int i = 1; i <= rsm.getColumnCount(); i++) {
		System.out.print(rsm.getColumnName(i) + "\t\t");
		// rsm.getColumnTypeName(i)
	}
	
	System.out.println();
	
	while (resultado.next()) {
		for (int i = 1; i <= rsm.getColumnCount(); i++) {
			String campo = resultado.getString(i);
			System.out.print(campo + "\t\t\t");
		}
		System.out.println();
	}
	comando.close();
}

public void consulta3(Connection conexao) throws SQLException {
	String sql = "SELECT m.id_registro, m.primeiro_nome, m.sobrenome, m.especialidade"
				+ "FROM hospital.crm_validacao as crm_va  NATURAL JOIN hospital.medico AS m"
				+ "WHERE crm_va.crmativo = true";
	Statement comando = conexao.createStatement();
	System.out.println("Consulta 3: ");
	
	ResultSet resultado = comando.executeQuery(sql);
	ResultSetMetaData rsm = resultado.getMetaData();
	for (int i = 1; i <= rsm.getColumnCount(); i++) {
		System.out.print(rsm.getColumnName(i) + "\t\t");
	}
	
	System.out.println();
	
	while (resultado.next()) {
		for (int i = 1; i <= rsm.getColumnCount(); i++) {
			String campo = resultado.getString(i);
			System.out.print(campo + "\t\t\t");
		}
		System.out.println();
	}
	comando.close();
}

public void consulta6(Connection conexao) throws SQLException {
	String sql = "SELECT COALESCE(P.primeiro_nome, 'SEM NOME')\r\n" + 
			"FROM (SELECT C.paciente FROM hospital.consulta AS C INNER JOIN hospital.medico AS M\r\n" + 
			"			ON C.medico = M.id_registro AND M.especialidade = 'Clínico Geral'\r\n" + 
			"     ) AS dados LEFT JOIN hospital.paciente P ON dados.paciente = P.num_pront;";
	Statement comando = conexao.createStatement();
	System.out.println("Consulta 6: ");
	
	ResultSet resultado = comando.executeQuery(sql);
	ResultSetMetaData rsm = resultado.getMetaData();
	for (int i = 1; i <= rsm.getColumnCount(); i++) {
		System.out.print(rsm.getColumnName(i) + "\t\t");
		// rsm.getColumnTypeName(i)
	}
	
	System.out.println();
	
	while (resultado.next()) {
		for (int i = 1; i <= rsm.getColumnCount(); i++) {
			String campo = resultado.getString(i);
			System.out.print(campo + "\t\t\t");
		}
		System.out.println();
	}
	comando.close();
}

public void consulta7(Connection conexao) throws SQLException {
	String sql = "SELECT med.nome, d.descricao\r\n" + 
			"FROM (SELECT *\r\n" + 
			"	FROM hospital.medicamento AS m NATURAL JOIN hospital.prescreve AS p) AS med\r\n" + 
			"	JOIN hospital.medico AS me USING(id_registro)\r\n" + 
			"	JOIN hospital.diagnostico AS d ON(d.medico=med.id_registro)\r\n" + 
			"	JOIN hospital.exame AS ex ON(ex.medico=med.id_registro)\r\n" + 
			"WHERE d.descricao <> 'Nada a constar'";
	Statement comando = conexao.createStatement();
	System.out.println("Consulta 6: ");
	
	ResultSet resultado = comando.executeQuery(sql);
	ResultSetMetaData rsm = resultado.getMetaData();
	for (int i = 1; i <= rsm.getColumnCount(); i++) {
		System.out.print(rsm.getColumnName(i) + "\t\t");
		// rsm.getColumnTypeName(i)
	}
	
	System.out.println();
	
	while (resultado.next()) {
		for (int i = 1; i <= rsm.getColumnCount(); i++) {
			String campo = resultado.getString(i);
			System.out.print(campo + "\t\t\t");
		}
		System.out.println();
	}
	comando.close();
}














}
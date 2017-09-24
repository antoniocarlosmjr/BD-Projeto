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
		
		System.out.println("——————————————————————————— SISTEMA +HOSPITAL——————————————————————————————————");
		System.out.println("| - Digite o númmero da consulta desejada e em seguida pressione enter        |");
		System.out.println("|	                                                                          |");
		System.out.println("| (1) - Exibir o nome e id_registro de todos os médicos que estão no hospital |");
		System.out.println("|       e que possuem a especialidade de Clínico Geral.                       |");
		System.out.println("| (2) - Listar o número de prontuário e nome de todos os pacientes que possuem|");
		System.out.println("|       um acompanhante associado.                                            |");
		System.out.println("| (3) - Listar os nomes, id_registro e especialidades dos médicos que possuem |");
		System.out.println("|       registro CRM (Conselho Regional de Medicina) ativo.                   |");
		System.out.println("| (4) - Exibir o nome de todos os pacientes cadastrados que possuem letra     |");
		System.out.println("|       inicial do primeiro nome a vogal 'A'.                                 |");
		System.out.println("| (5) - Apresentar o valor máximo e o mínimo dos salários dos médicos que pos-|");
		System.out.println("|       suem CRM ativo, onde os médicos estÃ£o agrupados por especialidade.   |");
		System.out.println("| (6) - Listar o nome de todos os pacientes que têm consultas marcadas com o  |");
		System.out.println("|       Clínico Geral.                                                        |");
		System.out.println("| (7) - Exibir todos os medicamentos prescritos pelos médicos que realizaram  |");
		System.out.println("|       exames com o diagnóstico positivo.                                    |");
		System.out.println("| (8) - Apresentar a quantidade de médicos por especialidade, exceto os que   |");
		System.out.println("|       possuem especialidade gastrointestinal.                               |");
		System.out.println("| (9) - Exibir os números de prontuários dos pacientes que não foram cadastra-|");
		System.out.println("|       dos no ano de 2015.                                                   |");
		System.out.println("| (10) - Listar o nome, sobrenome e especialidade de todos os médicos que     |");
		System.out.println("|        possuem salário superior ou igual a média salário dos médicos no     |");
		System.out.println("|        hospital, onde os mesmos estão agrupados por especialidade e         |");
		System.out.println("|        ordenados por ordem crescente de salário.                            |");
		System.out.println("|                                                                             |");
		System.out.println("|          -  Para fechar o programa digite 0 e pressione enter -             |");
		System.out.print (" Número da consulta: ");
		int opcao= entrada.nextInt();
		System.out.println("———————————————————————————————————————————————————————————————————————————————");
		
		
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
		    		teste.consulta4(conexao);
		            break;

		    case 5:
		    		teste.consulta5(conexao);
		            break;

		    case 6:
		    		teste.consulta6(conexao);
		            break;
	    
		    case 7:
		    		teste.consulta7(conexao);
		            break;
		    
		    case 8:
		    		teste.consulta8(conexao); 
		            break;
		    
		    case 9:
		    		teste.consulta9(conexao);
		            break;
	
		    case 10:
		    		teste.consulta10(conexao);
		            break;
		    
		    default:
		            System.out.println("Erro! Consulta Inválida");
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
		String sql = "SELECT m.id_registro, m.primeiro_nome, m.sobrenome, m.especialidade\r\n" + 
				"FROM hospital.crm_validacao as crm_va  NATURAL JOIN hospital.medico AS m\r\n" + 
				"WHERE crm_va.crmativo = true";
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
	
	public void consulta4(Connection conexao) throws SQLException {
		String sql = "SELECT primeiro_nome FROM hospital.paciente WHERE primeiro_nome LIKE 'A%';";
		Statement comando = conexao.createStatement();
		System.out.println("Consulta 4: ");
		
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
	
	public void consulta5(Connection conexao) throws SQLException {
		String sql = "SELECT m.especialidade, max(salario) AS SalarioMaximo, min(salario) AS SalarioMinimo\r\n" + 
				"FROM hospital.medico as m NATURAL JOIN hospital.CRM_Validacao as crm\r\n" + 
				"WHERE crm.crmativo = true\r\n" + 
				"GROUP BY m.especialidade";
		Statement comando = conexao.createStatement();
		System.out.println("Consulta 5: ");
		
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
	System.out.println("Consulta 7: ");
	
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

public void consulta8(Connection conexao) throws SQLException {
	String sql = "SELECT especialidade, count(especialidade) FROM hospital.medico GROUP BY especialidade "
			+ "HAVING especialidade <> 'Gastro'";
	Statement comando = conexao.createStatement();
	System.out.println("Consulta 8: ");
	
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

public void consulta9(Connection conexao) throws SQLException {
	String sql = "SELECT DISTINCT p.num_pront \r\n" + 
			"	FROM hospital.paciente as p\r\n" + 
			"	WHERE p.id_login NOT IN(SELECT DISTINCT c.id_login \r\n" + 
			"	FROM hospital.cadastro as c\r\n" + 
			"	WHERE c.data_cad BETWEEN '01-01-2015' AND '31-12-2015')";
	Statement comando = conexao.createStatement();
	System.out.println("Consulta 9: ");
	
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
public void consulta10(Connection conexao) throws SQLException {
	String sql = "SELECT m1.primeiro_nome, m1.sobrenome, m1.especialidade\r\n" + 
			"FROM (SELECT especialidade AS esp, avg(salario) AS MEDIA\r\n" + 
			"      FROM hospital.medico AS m\r\n" + 
			"      GROUP BY especialidade) AS dados JOIN hospital.medico as m1 ON (dados.esp=m1.especialidade)\r\n" + 
			"WHERE m1.salario >= dados.MEDIA\r\n" + 
			"ORDER BY m1.salario ASC";
	Statement comando = conexao.createStatement();
	System.out.println("Consulta 10: ");
	
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
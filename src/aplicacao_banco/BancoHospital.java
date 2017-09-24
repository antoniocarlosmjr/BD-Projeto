
import java.sql.*;
import java.util.Scanner;

public class BancoHospital {

	public static Connection conexao = null;
	
	public BancoHospital() {
		try {
			// Carregar driver JDBC do postgress
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
		String senha = "1234";
		conexao = DriverManager.getConnection(url, user, senha);
		return conexao;
	}

	public static void main(String[] args) throws SQLException {		
		
		Scanner entrada = new Scanner(System.in);
		
		System.out.println("———————————————————————————— SISTEMA +HOSPITAL ————————————————————————————————");
		System.out.println("| - Digite o número da consulta desejada e em seguida pressione enter         |");
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
		System.out.println("|       suem CRM ativo, onde os médicos estão agrupados por especialidade.    |");
		System.out.println("| (6) - Listar o nome de todos os pacientes que têm consultas marcadas com o  |");
		System.out.println("|       Clínico Geral.                                                        |");
		System.out.println("| (7) - Exibir todos os medicamentos prescritos pelos médicos que realizaram  |");
		System.out.println("|       exames com o diagnóstico positivo.                                    |");
		System.out.println("| (8) - Apresentar a quantidade de médicos por especialidade, exceto os que   |");
		System.out.println("|       possuem especialidade gastrointestinal.                               |");
		System.out.println("| (9) - Exibir os números de prontuários dos pacientes que não foram cadastra-|");
		System.out.println("|       dos no ano de 2015.                                                   |");
		System.out.println("| (10) - Listar o nome, sobrenome e especialidade de todos os médicos que     |");
		System.out.println("|        possuem salário superior ou igual a média salario dos médicos no     |");
		System.out.println("|        hospital, onde os mesmos estão agrupados por especialidade e         |");
		System.out.println("|        ordenados por ordem crescente de salário.                            |");
		System.out.println("|                                                                             |");
		System.out.println("|          -  Para fechar o programa digite 0 e pressione enter -             |");
		System.out.print (" Número da consulta: ");
		int opcao= entrada.nextInt();
		System.out.println(" —————————————————————————————————————————————————————————————————————————————");
		
		
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
				+ "FROM crm_validacao as crm_va  NATURAL JOIN medico AS m"
				+ "WHERE crm_va.crmativo = true";
	Statement comando = conexao.createStatement();
	System.out.println("Consulta 3: ");
	
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
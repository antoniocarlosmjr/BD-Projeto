package aplicacao_banco;

import java.sql.*;
import java.util.Scanner;

public class BancoHospital {

	public static Connection conexao = null;
	
	public BancoHospital() {
		try {
			// Carregar driver JDBC do postgress
			Class.forName("org.postgresql.Driver");
			System.out.println("Carregou");
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
	
	public void exemploConsultaStatment(Connection conexao) throws SQLException{
		String sql = "Select cpf, salario from universidade.professor where departamento = 'DCOMP'";
		Statement comando = conexao.createStatement();
		System.out.println("Executar consulta: " + sql);
		ResultSet resultado = comando.executeQuery(sql);
		while(resultado.next()){
			String cpf = resultado.getString("cpf");
			String cpf2 = resultado.getString(1);
			//String nome3 = resultado.getString(2);
			double salario = resultado.getDouble(2);
			System.out.println(cpf + "\t" + salario);
		}
		comando.close();
		}
}
package aplicacao_banco;

import java.sql.SQLException;
import java.util.Scanner;

public class Main {
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
		System.out.println(" Número da consulta: ");
		int opcao= entrada.nextInt();
		System.out.println(" —————————————————————————————————————————————————————————————————————————————");
	
	}

}

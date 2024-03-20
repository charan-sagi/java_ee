package mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class ListEmployees {

	public static void main(String[] args) throws Exception {
		Connection con = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/feb26", "root", "root");
		
		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter department id : ");
		int id = s.nextInt();
		
		PreparedStatement ps = con.prepareStatement("SELECT employee_id, first_name, last_name FROM employees WHERE department_id = ?");
		ps.setInt(1, id);
		
		ResultSet rs = ps.executeQuery();
		
		if (!rs.next()) {
			System.out.println("Department Id not found!");
		}
		
		else {
			do {
                System.out.printf("%3d  %-20s  %-20s\n", 
                			rs.getInt("employee_id"), rs.getString("first_name"), rs.getString("last_name"));
            } while (rs.next());
		}
		
		rs.close();
		con.close();
	}

}

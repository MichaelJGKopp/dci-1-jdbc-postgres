package dev.lpa;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Main {
  public static void main(String[] args) {

    // Database credentials
    String url = "jdbc:postgresql://localhost:5432/oms_db";
    String user = "postgres";
    String password = "password";

    try {

      // Establish the connection
      Connection connection = DriverManager.getConnection(url, user, password);
      System.out.println("Connected to database!");

      // Create a statement
      Statement statement = connection.createStatement();

      // Execute a query
      String query = "SELECT * FROM customers";
      ResultSet resultSet = statement.executeQuery(query);

      // Process the result set
      System.out.printf("%n%-4s %-25s %-25s %s %n", "ID", "Name", "Email", "Address");
      System.out.println("-".repeat(90));

      while (resultSet.next()) {
        System.out.printf("%-4d %-25s %-25s %s %n",
            resultSet.getInt("customer_id"),
            resultSet.getString("name"),
            resultSet.getString("email"),
            resultSet.getString("address")
        );
      }
      System.out.println();

      // Close resources
      resultSet.close();
      statement.close();
      connection.close();
      System.out.println("Connection closed!");

    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
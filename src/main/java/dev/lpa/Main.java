package dev.lpa;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Main {
  public static void main(String[] args) {

    // Database credentials
    String url = "jdbc:postgresql://localhost:5432/testdb";
    String user = "postgres";
    String password = "password";

    try {

      // Establish the connection
      Connection connection = DriverManager.getConnection(url, user, password);
      System.out.println("Connected to database!");

      // Create a statement
      Statement statement = connection.createStatement();

      // Execute a query
      String query = "SELECT * FROM users";
      ResultSet resultSet = statement.executeQuery(query);

      // Process the result set
      System.out.println("ID  | Name        | Email");
      System.out.println("--------------------------");

      while (resultSet.next()) {
        System.out.printf("%d   |  %-8s   |  %s%n",
            resultSet.getInt("id"),
            resultSet.getString("name"),
            resultSet.getString("email")
        );
      }

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
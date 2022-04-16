/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package goms.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hp
 */
public class DBConnection implements java.io.Serializable {
    
    private static Connection connection;
    
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String myUrl = "jdbc:mysql://localhost:3306/goms";
            connection = DriverManager.getConnection(myUrl,"root", "admin");
        } catch (ClassNotFoundException | SQLException e) {
            e.getMessage();
        }
        return connection;
    }
    
    public void closeConnection() {
        try {
           if (connection != null)
            connection.close();
        }
        catch (SQLException e) {
            e.getMessage();
        }
    }
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package goms.com;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

/**
 *
 * @author Hp
 */
public class adminDAO {
    
    private final Connection connection;
    private int result;
    
    public adminDAO () {
        connection = DBConnection.getConnection();
    }
    
    
    
    public List<Admin> retrieveAllAdmin() {
        List<Admin> adminAll = new ArrayList<Admin>();
        Admin admin;
        
        try {
            Statement myST = connection.createStatement();
            String myQuery = "select * from admin ";
            ResultSet myRS = myST.executeQuery(myQuery);
            while (myRS.next()) {
                admin = new Admin();
                admin.setId(myRS.getInt(1));
                admin.setAdminID(myRS.getString(2));
                admin.setAdminName(myRS.getString(3));
                admin.setEmail(myRS.getString(4));
                admin.setPassword(myRS.getString(5));
                admin.setPhone(myRS.getString(6));
                adminAll.add(admin); 
            } 
        } catch (Exception e) {
            System.out.println("Exception is :" +e);
        }
        return adminAll;
    }
    
    public Admin retrieveOneAdmin (int adminId) {
        Admin admin = new Admin();
        try {
            Statement myST = connection.createStatement();
            String myQuery = "select * from admin where ID=" +adminId;
            ResultSet myRS = myST.executeQuery(myQuery);
            while (myRS.next()) {
                admin.setId(myRS.getInt(1));
                admin.setAdminID(myRS.getString(2));
                admin.setAdminName(myRS.getString(3));
                admin.setEmail(myRS.getString(4));
                admin.setPassword(myRS.getString(5));
                admin.setPhone(myRS.getString(6));
            }
        }catch (Exception e) {
            System.out.println("Exception is ;" +e);
        }
        return admin;
    }
    
    public Admin getRecordByIdAdmin(int Id) {
        Admin admin = null;
        
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from admin where ID=?");
            ps.setInt(1, Id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                admin = new Admin();
                admin.setId(rs.getInt("id"));
                admin.setAdminName(rs.getString("adminName"));
                admin.setAdminID(rs.getString("adminID"));
                admin.setEmail(rs.getString("email"));
                admin.setPassword(rs.getString("password"));
                admin.setPhone(rs.getString("phone"));
            }
        }   catch (Exception e) {
            System.out.println(e);
        }
        return admin;
    }
    
    public Admin getAdminById( int ID) {
        Admin admin = new Admin();
        try {
            String sql = "select * from admin where ID=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, ID);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                admin.setId(rs.getInt("ID"));
                admin.setAdminID(rs.getString("adminID"));
                admin.setAdminName(rs.getString("adminName"));
                admin.setEmail(rs.getString("email"));
                admin.setPassword(rs.getString("password"));
                admin.setPhone(rs.getString("phone"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } return admin;
    }
}

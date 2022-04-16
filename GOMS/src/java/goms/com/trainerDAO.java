/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package goms.com;

/**
 *
 * @author Hp
 */

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import goms.com.Trainer;


public class trainerDAO {
    
    private final Connection connection;
    private int result;
    
    public trainerDAO () {
        connection = DBConnection.getConnection();
    }
    
    public int addTrainer (Trainer trainer) {
        try {
            String mySqlQuery = "insert into trainer(trainerID, trainerName, email, password, phone) values(?, ?, ?, ?, ?)";
            PreparedStatement myPS = connection.prepareStatement(mySqlQuery);
            myPS.setString(1, trainer.getTrainerID());
            myPS.setString(2, trainer.getTrainerName());
            myPS.setString(3, trainer.getEmail());
            myPS.setString(4, trainer.getPassword());
            myPS.setString(5, trainer.getPhone());
            result = myPS.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is: "+e);
        }
        return result;
    }
    
    public List<Trainer> retrieveAllTrainer() {
        List<Trainer> trainerAll = new ArrayList<Trainer>();
        Trainer trainer;
        
        try {
            Statement myST = connection.createStatement();
            String myQuery = "select * from trainer ";
            ResultSet myRS = myST.executeQuery(myQuery);
            while (myRS.next()) {
                trainer = new Trainer();
                trainer.setID(myRS.getInt(1));
                trainer.setTrainerID(myRS.getString(2));
                trainer.setTrainerName(myRS.getString(3));
                trainer.setEmail(myRS.getString(4));
                trainer.setPassword(myRS.getString(5));
                trainer.setPhone(myRS.getString(6));
                trainerAll.add(trainer); 
            } 
        } catch (Exception e) {
            System.out.println("Exception is :" +e);
        }
        return trainerAll;
    }
    
    public Trainer retrieveOneTrainer (int trainerId) {
        Trainer trainer = new Trainer();
        
        try {
            Statement myST = connection.createStatement();
            String myQuery = "select * from trainer " 
                    + "where ID=" +trainerId;
            ResultSet myRS = myST.executeQuery(myQuery);
            while (myRS.next()) {
                trainer.setID((myRS.getInt(1)));
                trainer.setTrainerID(myRS.getString(2));
                trainer.setTrainerName(myRS.getString(3));
                trainer.setEmail(myRS.getString(4));
                trainer.setPassword(myRS.getString(5));
                trainer.setPhone(myRS.getString(6));
            }
        } catch (Exception e) { 
            System.out.println("Exception is ;" + e); 
        } 
        return trainer;
    }
    
    public static Trainer getRecordById(int trainerId) {
        Trainer trainer = null;
        
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("select *from trainer where ID=?");
            ps.setInt(1, trainerId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                trainer = new Trainer();
                trainer.setID(rs.getInt("ID"));
                trainer.setTrainerID(rs.getString("trainerID"));
                trainer.setTrainerName(rs.getString("trainerName"));
                trainer.setEmail(rs.getString("email"));
                trainer.setPassword(rs.getString("password"));
                trainer.setPhone(rs.getString("phone"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return trainer;
    }
    
    public static int updateTrainer ( Trainer trainer) {
        int result = 0;
        try {
            Connection con = DBConnection.getConnection();
            String mySqlQuery = "update trainer set trainerID=?,trainerName=?,email=?,password=?,phone=? where ID= "+trainer.getID();
            PreparedStatement myPS = con.prepareStatement(mySqlQuery);
            myPS.setString(1, trainer.getTrainerID());
            myPS.setString(2, trainer.getTrainerName());
            myPS.setString(3, trainer.getEmail());
            myPS.setString(4, trainer.getPassword());
            myPS.setString(5, trainer.getPhone());
            myPS.setInt(6, trainer.getID());
            result = myPS.executeUpdate();
        }catch (Exception e) { 
            System.out.println("Exception is ; " + e); 
        } 
        return result; 
    }
    
    public int updateTrain (Trainer trainer) {
        try {
            String mySqlQuery = "update trainer "
                    + "set trainerID=?, trainerName=?, email=?, password=?, phone=? "
                    + "where ID=?";
            PreparedStatement myPS = connection.prepareStatement(mySqlQuery);
            myPS.setString(1, trainer.getTrainerID());
            myPS.setString(2, trainer.getTrainerName());
            myPS.setString(3, trainer.getEmail());
            myPS.setString(4, trainer.getPassword());
            myPS.setString(5, trainer.getPhone());
            myPS.setInt(6, trainer.getID());
            result = myPS.executeUpdate();
           
        } catch (Exception e) {
            System.out.println("Exception is ; " + e); 
        } return result;
    }
   
    public static int deleteTrainer (Trainer trainer) {
        int result = 0;
        try {
            Connection con = DBConnection.getConnection();
            String mySqlQuery = "delete from trainer where ID= "+trainer.getID();
            PreparedStatement myPS = con.prepareStatement(mySqlQuery);
            myPS.setInt(1, trainer.getID());
            result = myPS.executeUpdate();
        }
        catch (Exception e) { 
            System.out.println("Exception is ;" + e); 
        } 
        return result; 
    }
    
    public int deleteTrainer1(int trainerId) {
        try {
            String mySqlQuery = "delete from trainer where ID=?";
            PreparedStatement ps = connection.prepareStatement(mySqlQuery);
            ps.setInt(1, trainerId);
            result = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is ;"+e);
        } return result;
    }
    
     public static Trainer signintrainer(String trainerID, String password) {
       Trainer trainer = null;
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from trainer where trainerID=? and password=?");

            ps.setString(1, trainerID);
            ps.setString(2, password);

            ResultSet result = ps.executeQuery();

            if (result.next()) {

             
                trainer = new Trainer();
                trainer.setTrainerID(result.getString("trainerID"));
                trainer.setTrainerName(result.getString("trainerName"));
                trainer.setEmail(result.getString("email"));
                trainer.setPassword(result.getString("password"));
                trainer.setPhone(result.getString("phone"));
                
                
            }
            con.close();

        } catch (SQLException ex) {
        }
        return trainer;
    }
    
}

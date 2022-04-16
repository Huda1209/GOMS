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
import goms.com.Equipment;

public class EquipmentDAO {
    
    private final Connection connection;
    private int result;
    
    public EquipmentDAO () {
        connection = DBConnection.getConnection();
    }
    public int addEquipment (Equipment equipment) {
        try {
            String mySqlQuery = "insert into equipment(equipID, equipName, category, noOfEquip) values(?, ?, ?, ?)";
            PreparedStatement myPS = connection.prepareStatement(mySqlQuery);
            myPS.setString(1, equipment.getEquipID());
            myPS.setString(2, equipment.getEquipName());
            myPS.setString(3, equipment.getCategory());
            myPS.setString(4, equipment.getNoOfEquip());
            result = myPS.executeUpdate();
            } catch (Exception e) {
            System.out.println("Exception is: "+e);
        }
        return result;
    }
    
    public List<Equipment> retrieveAllEquipment() {
        List<Equipment> equipmentAll = new ArrayList<Equipment>();
        Equipment equipment;
        
        try{
            Statement myST = connection.createStatement();
            String myQuery = "select * from equipment ";
            ResultSet myRS = myST.executeQuery(myQuery);
            while (myRS.next()) {
                equipment = new Equipment();
                equipment.setId(myRS.getInt(1));
                equipment.setEquipID(myRS.getString(2));
                equipment.setEquipName(myRS.getString(3));
                equipment.setCategory(myRS.getString(4));
                equipment.setNoOfEquip(myRS.getString(5));
                equipmentAll.add(equipment);
            }
        } catch (Exception e) {
            System.out.println("Exception is :" +e);
        }
        return equipmentAll;
    }
    
    public Equipment retrieveOneEquipment (int equipmentId){
        Equipment equipment = new Equipment();
        
        try {
            Statement myST = connection.createStatement();
            String myQuery = "select * from equipment " 
                    + "where ID=" +equipmentId;
            ResultSet myRS = myST.executeQuery(myQuery);
            while (myRS.next()) {
                equipment.setId(myRS.getInt(1));
                equipment.setEquipID(myRS.getString(2));
                equipment.setEquipName(myRS.getString(3));
                equipment.setCategory(myRS.getString(4));
                equipment.setNoOfEquip(myRS.getString(5));
            }
        } catch (Exception e) { 
            System.out.println("Exception is ;" + e); 
        } 
        return equipment;
    }
    
    public int updateEquipment (Equipment equipment) {
        try {
            String mySqlQuery = "update equipment " 
                    + "set equipID=?, equipName=?, category=?, noOfEquip=? " 
                    + "where ID=?";
            PreparedStatement myPS = connection.prepareStatement(mySqlQuery);
            myPS.setString(1, equipment.getEquipID());
            myPS.setString(2, equipment.getEquipName());
            myPS.setString(3, equipment.getCategory());
            myPS.setString(4, equipment.getNoOfEquip());
            myPS.setInt(5, equipment.getId());
            result = myPS.executeUpdate();
        } catch (Exception e) { 
            System.out.println("Exception is ; " + e); 
        } 
        return result; 
    }
    
    public int deleteEquipment (int equipmentId) {
        try {
            String mySqlQuery = "delete from equipment where ID=?";
            PreparedStatement myPS = connection.prepareStatement(mySqlQuery);
            myPS.setInt(1, equipmentId);
            result = myPS.executeUpdate();
        }catch (Exception e) { 
            System.out.println("Exception is ;" + e); 
        } 
        return result; 
    }
    
}

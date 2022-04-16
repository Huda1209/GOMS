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
import goms.com.Customer;

public class customerDAO {
    private final Connection connection;
    private int result;
    
    public customerDAO () {
        connection = DBConnection.getConnection();
    }
    
    public List<Customer> retrieveAllCustomer() {
        List<Customer> customerAll = new ArrayList<Customer>();
        Customer customer;
        
        try {
            Statement myST = connection.createStatement();
            String myQuery = "select * from customer ";
            ResultSet myRS = myST.executeQuery(myQuery);
            while (myRS.next()) {
                customer = new Customer();
                customer.setId(myRS.getInt(1));
                customer.setCustID(myRS.getString(2));
                customer.setMemberID(myRS.getString(3));
                customer.setCustName(myRS.getString(4));
                customer.setEmail(myRS.getString(5));
                customer.setPassword(myRS.getString(6));
                customer.setPhone(myRS.getString(7));
                customer.setProgram(myRS.getString(8));
                customer.setStartDate(myRS.getString(9));
                customer.setEndDate(myRS.getString(10));
                customer.setMemberStatus(myRS.getString(11));
                customerAll.add(customer); 
            } 
        } catch (Exception e) {
            System.out.println("Exception is :" +e);
        }
        return customerAll;
    }
    public static int registerCust(Customer customer){  
        int status=0;  
        try{  
        Connection connection=DBConnection.getConnection();  
        PreparedStatement ps=connection.prepareStatement("insert into customer values(?,?,?,?,?,?)");  
        ps.setString(1,customer.getCustName());
        ps.setString(2,customer.getEmail());
        ps.setString(3,customer.getPassword());
        ps.setString(4, customer.getPhone());
        ps.setString(5, customer.getMemberID());
        ps.setString(6, customer.getProgram());
        ps.setTimestamp(7, new java.sql.Timestamp(new java.util.Date().getTime()));
              
        status=ps.executeUpdate();  
        }catch(Exception e){}  
      
            return status;  
}  
  
}

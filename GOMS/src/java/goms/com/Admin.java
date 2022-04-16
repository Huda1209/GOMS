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
public class Admin implements java.io.Serializable{
    
    private int id; 
    private String adminID; 
    private String adminName; 
    private String email; 
    private String password; 
    private String phone;

    public Admin(int id, String adminID, String adminName, String email, String password, String phone) {
        this.id = id;
        this.adminID = adminID;
        this.adminName = adminName;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }
    public Admin(){
        
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public int getId() {
        return id;
    }

    

   
    public String getAdminID() {
        return adminID;
    }

    public void setAdminID(String adminID) {
        this.adminID = adminID;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }
    
    public String getAdminName() {
        return adminName;
    }

    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    
}

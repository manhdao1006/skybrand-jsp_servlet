/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Admin;

/**
 *
 * @author LENOVO
 */
public class AdminDAO extends DBContext{
     public Admin getAdmin(String username, String password){
        String sql = "select * from Admin where username = ? and password = ?";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setString(1, username);
            sttm.setString(2, password);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()){
                Admin ad = new Admin(rs.getInt("id"),
                                        rs.getString("username"),
                                        rs.getString("password"));
                return ad;
            }
        } catch (Exception e) {
        }
        return null;
    }
}

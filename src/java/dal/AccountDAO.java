/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author LENOVO
 */
public class AccountDAO extends DBContext{
    
    public Account CheckAccountExits(String username) {
        String sql = "select * from Accounts where username = ?\n";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setString(1, username);
            ResultSet rs = sttm.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public int insert(Account ac){
        String sql = "insert into Accounts(username, [password]) values(?, ?)";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setString(1, ac.getUsername());
            sttm.setString(2, ac.getPassword());
            sttm.executeUpdate();
            return 1;
        } catch (Exception e) {
        }
        return -1;
    }
}

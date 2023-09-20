/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Category;
import model.Radio;

/**
 *
 * @author LENOVO
 */
public class RadioDAO extends DBContext{
    public ArrayList<Radio> getAllRadioByCid(int cid){
        ArrayList<Radio> listRadio = new ArrayList<>();
        String sql = "select * from SkyRadio where 1 = 1";
        if (cid != 0) {
            sql += " and cid=" + cid + " order by id desc";
        }
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            while(rs.next()){
                Radio radio = new Radio();
                radio.setId(rs.getString("id"));
                radio.setRadioName(rs.getString("radioName"));
                radio.setRadioLink(rs.getString("radioLink"));
                radio.setRadioImage(rs.getString("radioImage"));                
                DAO dao = new DAO();
                Category c = dao.getCategoryById(rs.getInt("cid"));                
                radio.setCategory(c);
                listRadio.add(radio);
            }
        } catch (Exception e) {
        }
        return listRadio;
    }
    
    public ArrayList<Radio> getTop4RadioByCid(int cid) {
        ArrayList<Radio> listTop4RadioByCid = new ArrayList<>();
        String sql = "select top 4 with ties * from SkyRadio where cid = ? order by id desc";
        try {
            PreparedStatement sttm = connection.prepareStatement(sql);
            sttm.setInt(1, cid);
            ResultSet rs = sttm.executeQuery();
            while (rs.next()) {
                Radio radio = new Radio();
                radio.setId(rs.getString("id"));
                radio.setRadioName(rs.getString("radioName"));
                radio.setRadioLink(rs.getString("radioLink"));
                radio.setRadioImage(rs.getString("radioImage"));                
                DAO dao = new DAO();
                Category c = dao.getCategoryById(rs.getInt("cid"));                
                radio.setCategory(c);
                listTop4RadioByCid.add(radio);
            }
        } catch (Exception e) {
        }
        return listTop4RadioByCid;
    }
}

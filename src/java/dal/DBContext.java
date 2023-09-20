
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class DBContext {
    protected Connection connection;
    public DBContext()
    {
        try {
            // Edit URL , username, password to authenticate with your MS SQL Server
            String url = "jdbc:sqlserver://THINKBOOK14\\\\SQLEXPRESS:1433;databaseName=SkyBrands";
            String username = "DAODUCMANH";
            String password = "manh10062003";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }
    public int ExecuteSQL(String SQL, Object[] param) {
        try {
            int k = 0;
            PreparedStatement ps = this.connection.prepareStatement(SQL);
            int i = 1;
            for (Object value : param) {
                ps.setObject(i, value);
                i++;
            }
            k = ps.executeUpdate();
            ps.close();
            return k;
        } catch (SQLException e) {
        }
        return 0;
    }
}

package connectors;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DatabaseConnector {

    Statement st;

    public void dataBaseConnection(String url, String userName, String password) throws SQLException {
        Connection con = DriverManager.getConnection(url, userName, password);
        st = con.createStatement();
    }

    public List<HashMap<Object, Object>> exec(String sqlQuery) throws SQLException {
        List<HashMap<Object, Object>> dbResult = new ArrayList<HashMap<Object, Object>>();
        ResultSet rs = st.executeQuery(sqlQuery);
        while (rs.next()) {
            HashMap<Object, Object> hashMap = new HashMap<>();
            for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
                hashMap.put(rs.getMetaData().getColumnLabel(i), rs.getObject(i));
            }
            dbResult.add(hashMap);
        }
        return dbResult;
    }


}

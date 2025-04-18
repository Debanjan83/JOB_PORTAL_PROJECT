package master.dao;
import java.sql.*;
import master.dto.JobDto;
import master.utilities.ConnectionFactory;
public class JobDao {
    private Connection cn = null;
    private Statement st = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private String insert_sql = "INSERT INTO JOB VALUES (?,?,?,?,?,?,?)";
    private String select_sql = "SELECT * FROM JOB";
    private String delete_sql = "DELETE FROM JOB WHERE JID = ?";
    private String search_sql = "SELECT * FROM JOB WHERE JDOMAIN = ?";
    public void insertData(JobDto jdto)
    {
        try
        {
            ConnectionFactory con = new ConnectionFactory();
            cn = con.getConn();
            ps = cn.prepareStatement(insert_sql);
            ps.setString(1, jdto.getJid());
            ps.setString(2, jdto.getJnm());
            ps.setString(3, jdto.getJtype());
            ps.setString(4, jdto.getJdomain());
            ps.setString(5, jdto.getJdate());
            ps.setString(6, jdto.getJyrsexp());
            ps.setString(7, jdto.getCid());
            ps.executeUpdate();
        }
        catch (SQLException se)
        {
            se.printStackTrace();
        }
    }
    public void deleteData(JobDto jdto)
    {
        try
        {
            ConnectionFactory con = new ConnectionFactory();
            cn = con.getConn();
            ps = cn.prepareStatement(delete_sql);
            ps.setString(1, jdto.getJid());
            ps.executeUpdate();
        }
        catch (SQLException se)
        {
            se.printStackTrace();
        }
    }
    public ResultSet getData()
    {
        try
        {
            ConnectionFactory con = new ConnectionFactory();
            cn = con.getConn();
            st = cn.createStatement();
            rs = st.executeQuery(select_sql);
        }
        catch (SQLException se)
        {
            se.printStackTrace();
        }
        return rs;
    }
    public ResultSet getSearchData(String jdomain)
    {
        try
        {
            ConnectionFactory con = new ConnectionFactory();
            cn = con.getConn();
            ps = cn.prepareStatement(search_sql);
            ps.setString(1, jdomain);
            rs = ps.executeQuery();
        }
        catch (SQLException se)
        {
            se.printStackTrace();
        }
        return rs;
    }
}

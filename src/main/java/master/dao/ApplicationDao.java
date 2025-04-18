package master.dao;
import java.sql.*;
import master.dto.ApplicationDto;
import master.utilities.ConnectionFactory;
public class ApplicationDao
{
	private Connection cn=null;
	private Statement st = null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String insert_sql="insert into application values (?,?,?)";
	private String search_sql="SELECT A.JID, A.DATE FROM APPLICATION A JOIN REGISTER R ON R.UNAME = A.UNAME WHERE R.UNAME = ?";
	private String select_sql="SELECT * FROM APPLICATION";
	public void insertData(ApplicationDto adto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps = cn.prepareStatement(insert_sql);
			ps.setString(3, adto.getUname());
			ps.setString(1, adto.getJid());
			ps.setString(2, adto.getDate());
			ps.executeUpdate();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public ResultSet getData(String uname)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps = cn.prepareStatement(search_sql);
			ps.setString(1, uname);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public ResultSet getAllData()
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
}

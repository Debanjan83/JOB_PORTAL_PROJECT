package master.dao;
import java.sql.*;
import master.dto.CompanyDto;
import master.utilities.ConnectionFactory;
public class CompanyDao
{
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String select_sql="select * from company";
	private String insert_sql="insert into company values(?,?,?,?,?)";
	private String delete_sql="delete from company where cid=?";
	private String update_sql="update company set cemail=?,cadd=?,cphno=? where cid=?";
	public void insertData(CompanyDto cdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps = cn.prepareStatement(insert_sql);
			ps.setString(1, cdto.getCid());
			ps.setString(2, cdto.getCname());
			ps.setString(3, cdto.getCphno());
			ps.setString(5, cdto.getCadd());
			ps.setString(4, cdto.getCemail());
			ps.executeUpdate();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void deleteData(CompanyDto cdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps = cn.prepareStatement(delete_sql);
			ps.setString(1, cdto.getCid());
			ps.executeUpdate();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void updateData(CompanyDto cdto)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","Debanjan_83");
			ps = cn.prepareStatement(update_sql);
			ps.setString(4, cdto.getCid());
			ps.setString(3, cdto.getCphno());
			ps.setString(2, cdto.getCadd());
			ps.setString(1, cdto.getCemail());
			ps.executeUpdate();
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public ResultSet getData()
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql);
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
}
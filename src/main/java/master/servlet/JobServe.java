package master.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import master.dao.JobDao;
import master.dto.JobDto;
@WebServlet("/JobServe")
public class JobServe extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		String jid=request.getParameter("jid");
		String jnm=request.getParameter("jnm");
		String jtype=request.getParameter("jtype");
		String jdomain=request.getParameter("jdomain");
		String jdate=request.getParameter("jdate");
		String jyrsexp=request.getParameter("jyrsexp");
		String cid=request.getParameter("cid");
		JobDto jdto=new JobDto();
		jdto.setJid(jid);
		jdto.setJnm(jnm);
		jdto.setJtype(jtype);
		jdto.setJdomain(jdomain);
		jdto.setJdate(jdate);
		jdto.setJyrsexp(jyrsexp);
		jdto.setCid(cid);
		JobDao jdao=new JobDao();
		jdao.insertData(jdto);
		response.sendRedirect("ListedJobs.jsp");
	}
}
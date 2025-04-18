package master.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import master.dao.JobDao;
import master.dto.JobDto;
@WebServlet("/JobDelServe")
public class JobDelServe extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		String jid=request.getParameter("jid");
		JobDto jdto=new JobDto();
		jdto.setJid(jid);
		JobDao jdao=new JobDao();
		jdao.deleteData(jdto);
		response.sendRedirect("ListedJobs.jsp");
	}
}
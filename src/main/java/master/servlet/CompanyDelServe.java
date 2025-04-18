package master.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import master.dao.CompanyDao;
import master.dto.CompanyDto;
@WebServlet("/CompanyDelServe")
public class CompanyDelServe extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		String cid=request.getParameter("cid");
		CompanyDto cdto=new CompanyDto();
		cdto.setCid(cid);
		CompanyDao cdao=new CompanyDao();
		cdao.deleteData(cdto);
		response.sendRedirect("CompanyDel.jsp");
	}
}
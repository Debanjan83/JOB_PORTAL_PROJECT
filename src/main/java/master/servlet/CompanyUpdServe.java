package master.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import master.dao.CompanyDao;
import master.dto.CompanyDto;
@WebServlet("/CompanyUpdServe")
public class CompanyUpdServe extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		String cid=request.getParameter("cid");
		String cphno=request.getParameter("cphno");
		String cadd=request.getParameter("cadd");
		String cemail=request.getParameter("cemail");
		CompanyDto cdto=new CompanyDto();
		cdto.setCid(cid);
		cdto.setCphno(cphno);
		cdto.setCadd(cadd);
		cdto.setCemail(cemail);
		CompanyDao cdao=new CompanyDao();
		cdao.updateData(cdto);
		response.sendRedirect("CompanyUpd.jsp");
	}
}
package master.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import master.dao.ApplicationDao;
import master.dto.ApplicationDto;
@WebServlet("/ApplicationSearchServe")
public class ApplicationSearchServe extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        String sessionUname = (String) session.getAttribute("loginUname");
        if (sessionUname != null && !sessionUname.isEmpty()) {
            String aid = request.getParameter("jid");
            String adate = request.getParameter("date");
            String uname = request.getParameter("uname");
            if (sessionUname.equals(uname))
            {
                ApplicationDto adto = new ApplicationDto();
                adto.setJid(aid);
                adto.setDate(adate);
                adto.setUname(uname);
                ApplicationDao adao = new ApplicationDao();
                adao.insertData(adto);
                response.sendRedirect("MyApplication.jsp");
            }
            else
            {
                response.sendRedirect("Error1.jsp");
            }
        }
        else
        {
            response.sendRedirect("Error1.jsp");
        }
    }
}

package master.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import master.dao.RegisterDao;
@WebServlet("/LoginServe")
public class LoginServe extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        String uname=request.getParameter("uname");
        String pass=request.getParameter("pass");
        HttpSession sn = request.getSession();
        sn.setAttribute("loginUname", uname);
        RegisterDao rdao=new RegisterDao();
        boolean flag=rdao.checkLogin(uname, pass);
        if(pass.equals("admin") && uname.equals("admin"))
        {
            response.sendRedirect("Nav.jsp");
        }
        else
        {
            if(flag)
            {
                response.sendRedirect("ClientNav.jsp");
            }
            else
            {
                response.sendRedirect("Error.jsp");
            }
        }
    }
}

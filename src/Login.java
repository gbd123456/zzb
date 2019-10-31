import club.finallymj.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@javax.servlet.annotation.WebServlet("/login")
public class Login extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {


    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String name = request.getParameter("username");
        String psw = request.getParameter("psw");
        User user = DBMS.queryForObject("select * from u where name=? and psw=?", new BeanPropertyRowMapper<>(User.class), name, psw);


        if (user != null && user.getId() > 0) {
            HttpSession session = request.getSession();
            session.setAttribute("login_status", user);
            response.sendRedirect("main");

        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}

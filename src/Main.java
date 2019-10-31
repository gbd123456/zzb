import club.finallymj.User;
import club.finallymj.ban;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/main")
public class Main extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Object login_status = session.getAttribute("login_status");

        if (login_status == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        List<ban> list = DBMS.query("select * from class", new BeanPropertyRowMapper<>(ban.class));

        request.setAttribute("ban_data", list);
        request.getRequestDispatcher("user_manager.jsp").forward(request, response);
    }
}

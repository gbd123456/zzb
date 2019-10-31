import club.finallymj.Book;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/book")
public class BookManager extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Object status = request.getSession().getAttribute("login_status");
        if (status == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        } else {
            List<Book> list = DBMS.query("select * from book", new BeanPropertyRowMapper<>(Book.class));
            request.setAttribute("book_data", list);
            request.getRequestDispatcher("book_manager.jsp").forward(request, response);

        }
    }
}

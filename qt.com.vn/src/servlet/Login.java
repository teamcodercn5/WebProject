package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.IODatabase;

/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/Views/Login/Check-login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		if (user.equals("admin") && pass.equals("admin")) {
			session.setAttribute("cssuser", "../CSS/Frame/Css-user.css");
			session.setAttribute("user", user);
		} else {
			String sqlCommand = "select password from account where user='"
					+ user + "'";
			IODatabase io = new IODatabase();
			ResultSet rs = io.getResultSet(sqlCommand);
			try {
				if (rs.next() && pass.equals(rs.getString(1))) {
					session.setAttribute("cssuser", "../CSS/Frame/Css-user.css");
					session.setAttribute("user", user);
					io.closeConnection();
				} else {
					sqlCommand = "select password from nhanvien where user='"
							+ user + "'";
					rs = io.getResultSet(sqlCommand);
					if (rs.next() && pass.equals(rs.getString(1))) {
						session.setAttribute("cssuser",
								"../CSS/Frame/Css-user.css");
						session.setAttribute("user", user);
						session.setAttribute("checkNV", "true");
						io.closeConnection();
					} else {
						session.setAttribute("thongbao", "Đăng nhập thất bại.");
						io.closeConnection();
						response.sendRedirect("Login.jsp");
						return;
					}
				}
			} catch (SQLException e) {
			}
		}
		response.sendRedirect("../Reload-page.jsp");
	}

}

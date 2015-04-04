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
 * Servlet implementation class SavePasswrod
 */
@WebServlet("/Views/User/Save-passwrod")
public class SavePasswrod extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SavePasswrod() {
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
		String currentPass = request.getParameter("currentPass");
		String user = (String) session.getAttribute("user");
		String sqlCommand = "select password from account where User='" + user
				+ "'";
		IODatabase io = new IODatabase();
		ResultSet rs = io.getResultSet(sqlCommand);
		try {
			if (rs.next() && rs.getString(1).equals(currentPass)) {
				sqlCommand = "update account set password=? where user=?";
				String values[] = { request.getParameter("newPass1"), user };
				int[] indexes = { 1, 2 };
				io.executeUpdate(sqlCommand, values, indexes);
				session.setAttribute("thongbao",
						"Thay đổi mật khẩu thành công.");
				io.closeConnection();
				response.sendRedirect("User-manager.jsp");
				return;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("thongbao", "Mật khẩu cũ không đúng.");
		response.sendRedirect("Change-password.jsp");
	}
}

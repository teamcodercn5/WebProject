package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.IODatabase;

/**
 * Servlet implementation class UpdateAccount
 */
@WebServlet("/Views/User/Update-account")
public class UpdateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateAccount() {
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
		String hoten = request.getParameter("hoten");
		String email = request.getParameter("email");
		String diachi = request.getParameter("diachi");
		String ngaysinh = request.getParameter("ngaysinh");
		String sodt = request.getParameter("sodt");
		String user = (String) session.getAttribute("user");
		String sqlCommand = "update account set hoten=?,email=?,diachi=?,ngaysinh=?,sodt=? where user=?";
		String values[] = { hoten, email, diachi, ngaysinh, sodt, user };
		int[] indexes = { 1, 2, 3, 4, 5, 6 };
		IODatabase io = new IODatabase();
		io.executeUpdate(sqlCommand, values, indexes);
		io.closeConnection();
		session.setAttribute("thongbao", "Cập nhật thông tin thành công.");
		response.sendRedirect("User-manager.jsp");
	}
}

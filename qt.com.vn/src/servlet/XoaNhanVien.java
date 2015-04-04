package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.NhanVienDAO;
import dao.NhanVienDAOImpl;

/**
 * Servlet implementation class XoaNhanVien
 */
@WebServlet("/Views/Admin/Xoa-nhan-vien")
public class XoaNhanVien extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XoaNhanVien() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		NhanVienDAO nvDAO = new NhanVienDAOImpl();
		String user = request.getParameter("user");
		nvDAO.deleteNhanVien(user);
		HttpSession session = request.getSession();
		session.setAttribute("thongbao", "Xóa thành công");
		nvDAO.closeConnection();
		response.sendRedirect("List-nhan-vien.jsp");
	}
}

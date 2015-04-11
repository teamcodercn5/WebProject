package servlet.admin;

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
 * Servlet implementation class XoaSelect
 */
@WebServlet("/Views/Admin/Xoa-select-sp")
public class XoaSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XoaSelect() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String user[] = request.getParameterValues("select");
		if (user != null) {
			NhanVienDAO nvDAO = new NhanVienDAOImpl();
			for (int i = 0; i < user.length; i++) {
				if (user[i] != null) {
					nvDAO.deleteNhanVien(user[i]);
				}
			}
			HttpSession session = request.getSession();
			session.setAttribute("thongbao", "Xóa thành công");
		}
		response.sendRedirect("List-nhan-vien.jsp");
	}
}

package servlet.nhanvien;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GioiThieuDAO;
import dao.GioiThieuDAOImpl;

/**
 * Servlet implementation class XoaGioiThieu
 */
@WebServlet("/Views/NhanVien/Xoa-gioi-thieu")
public class XoaGioiThieu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XoaGioiThieu() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String masp = request.getParameter("masp");
		GioiThieuDAO gtDAO = new GioiThieuDAOImpl();
		gtDAO.deleteGioiThieu(masp);
		gtDAO.closeConnection();
		HttpSession session = request.getSession();
		session.setAttribute("thongbao", "Xóa thành công");
		response.sendRedirect("List-gioi-thieu.jsp");
	}
}

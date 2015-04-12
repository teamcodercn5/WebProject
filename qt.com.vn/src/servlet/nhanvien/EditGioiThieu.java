package servlet.nhanvien;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GioiThieu;
import dao.GioiThieuDAO;
import dao.GioiThieuDAOImpl;

/**
 * Servlet implementation class EditGioiThieu
 */
@WebServlet("/Views/NhanVien/Edit-gioi-thieu")
public class EditGioiThieu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditGioiThieu() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		GioiThieuDAO gtDAO = new GioiThieuDAOImpl();
		String masp = request.getParameter("masp");
		GioiThieu gt = new GioiThieu(masp, request.getParameter("chitiet"));
		gtDAO.updateGioiThieu(gt, masp);
		gtDAO.closeConnection();
		HttpSession session = request.getSession();
		session.setAttribute("thongbao", "Cập nhật thành công");
		response.sendRedirect("List-gioi-thieu.jsp");
	}
}

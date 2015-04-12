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
 * Servlet implementation class SaveGioiThieu
 */
@WebServlet("/Views/NhanVien/Save-gioi-thieu")
public class SaveGioiThieu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SaveGioiThieu() {
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
		String values[] = request.getParameterValues("gt");
		GioiThieuDAO gtDAO = new GioiThieuDAOImpl();
		if (gtDAO.getGioiThieu(values[0]) != null) {
			session.setAttribute("thongbao", "Mã sản phẩm bị trùng");
			gtDAO.closeConnection();
			response.sendRedirect("List-gioi-thieu.jsp");
			return;
		}
		GioiThieu gt = new GioiThieu(values[0], values[1]);
		gtDAO.insertGioiThieu(gt);
		gtDAO.closeConnection();
		session.setAttribute("thongbao", "Thêm thành công");
		response.sendRedirect("List-gioi-thieu.jsp");
	}
}

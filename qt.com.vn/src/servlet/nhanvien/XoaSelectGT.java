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
 * Servlet implementation class XoaSelectGT
 */
@WebServlet("/Views/NhanVien/Xoa-select-gt")
public class XoaSelectGT extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XoaSelectGT() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String masp[] = request.getParameterValues("selectGT");
		if (masp != null) {
			GioiThieuDAO gtDAO = new GioiThieuDAOImpl();
			for (int i = 0; i < masp.length; i++) {
				if (masp[i] != null) {
					gtDAO.deleteGioiThieu(masp[i]);
				}
			}
			HttpSession session = request.getSession();
			session.setAttribute("thongbao", "Xóa thành công");
		}
		response.sendRedirect("List-gioi-thieu.jsp");
	}
}
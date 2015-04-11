package servlet.nhanvien;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.SanPham;
import dao.SanPhamDAO;
import dao.SanPhamDAOImpl;

/**
 * Servlet implementation class EditSanPham
 */
@WebServlet("/Views/NhanVien/Edit-san-pham")
public class EditSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditSanPham() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		String masp = request.getParameter("masp");
		String values[] = request.getParameterValues("sp");
		SanPham sp = new SanPham(masp, values[0], values[1], values[2],
				values[3], values[4]);
		spDAO.updateSanPham(sp, masp);
		spDAO.closeConnection();
		HttpSession session = request.getSession();
		session.setAttribute("thongbao", "Cập nhật thành công");
		response.sendRedirect("List-san-pham.jsp");
	}
}

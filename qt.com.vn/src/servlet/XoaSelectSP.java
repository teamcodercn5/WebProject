package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SanPhamDAO;
import dao.SanPhamDAOImpl;

/**
 * Servlet implementation class XoaSelectSP
 */
@WebServlet("/Views/NhanVien/Xoa-select-sp")
public class XoaSelectSP extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XoaSelectSP() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String masp[] = request.getParameterValues("selectSP");
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		for (int i = 0; i < masp.length; i++) {
			if (masp[i] != null) {
				spDAO.deleteSanPham(masp[i]);
			}
		}
		HttpSession session = request.getSession();
		session.setAttribute("thongbao", "Xóa thành công");
		response.sendRedirect("Nhan-vien.jsp");
	}
}

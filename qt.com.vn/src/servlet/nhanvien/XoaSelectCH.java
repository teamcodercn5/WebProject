package servlet.nhanvien;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CauHinhDAO;
import dao.CauHinhDAOImpl;

/**
 * Servlet implementation class XoaSelectCH
 */
@WebServlet("/Views/NhanVien/Xoa-select-ch")
public class XoaSelectCH extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XoaSelectCH() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String masp[] = request.getParameterValues("selectCH");
		if (masp != null) {
			CauHinhDAO chDAO = new CauHinhDAOImpl();
			for (int i = 0; i < masp.length; i++) {
				if (masp[i] != null) {
					chDAO.deleteCauHinh(masp[i]);
				}
			}
			HttpSession session = request.getSession();
			session.setAttribute("thongbao", "Xóa thành công");
		}
		response.sendRedirect("List-cau-hinh.jsp");
	}
}

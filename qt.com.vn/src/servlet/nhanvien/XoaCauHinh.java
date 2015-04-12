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
 * Servlet implementation class XoaCauHinh
 */
@WebServlet("/Views/NhanVien/Xoa-cau-hinh")
public class XoaCauHinh extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XoaCauHinh() {
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
		CauHinhDAO chDAO = new CauHinhDAOImpl();
		chDAO.deleteCauHinh(masp);
		chDAO.closeConnection();
		HttpSession session = request.getSession();
		session.setAttribute("thongbao", "Xóa thành công");
		response.sendRedirect("List-cau-hinh.jsp");
	}
}

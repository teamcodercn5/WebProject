package servlet.nhanvien;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CauHinh;
import dao.CauHinhDAO;
import dao.CauHinhDAOImpl;

/**
 * Servlet implementation class EditCauHinh
 */
@WebServlet("/Views/NhanVien/Edit-cau-hinh")
public class EditCauHinh extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditCauHinh() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		CauHinhDAO chDAO = new CauHinhDAOImpl();
		String masp = request.getParameter("masp");
		String values[] = request.getParameterValues("ch");
		CauHinh ch = new CauHinh(masp, values[0], values[1], values[2],
				values[3], values[4], values[5], values[6], values[7],
				values[8]);
		chDAO.updateCauHinh(ch, masp);
		chDAO.closeConnection();
		HttpSession session = request.getSession();
		session.setAttribute("thongbao", "Cập nhật thành công");
		response.sendRedirect("List-cau-hinh.jsp");
	}
}

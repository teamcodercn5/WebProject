package servlet;

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
 * Servlet implementation class SaveCauHinh
 */
@WebServlet("/Save-cau-hinh")
public class SaveCauHinh extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SaveCauHinh() {
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
		String values[] = request.getParameterValues("ch");
		CauHinhDAO chDAO = new CauHinhDAOImpl();
		if (chDAO.getCauHinh(values[0]) != null) {
			session.setAttribute("thongbao", "Mã sản phẩm bị trùng");
			chDAO.closeConnection();
			response.sendRedirect("Nhan-vien.jsp");
			return;
		}
		CauHinh ch = new CauHinh(values[0], values[1], values[2], values[3],
				values[4], values[5], values[6], values[7], values[8],
				values[9]);
		chDAO.insertCauHinh(ch);
		chDAO.closeConnection();
		session.setAttribute("thongbao", "Thêm thành công");
		response.sendRedirect("Nhan-vien.jsp");
	}
}

package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.NhanVien;
import dao.AccountDAO;
import dao.AccountDAOImpl;
import dao.NhanVienDAO;
import dao.NhanVienDAOImpl;

/**
 * Servlet implementation class NewNhanVien
 */
@WebServlet("/Views/Admin/New-nhan-vien")
public class NewNhanVien extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NewNhanVien() {
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
		AccountDAO accDAO = new AccountDAOImpl();
		NhanVienDAO nvDAO = new NhanVienDAOImpl();
		String user = request.getParameter("user");
		if (accDAO.checkAccount(user) || nvDAO.getNhanVien(user) != null) {
			session.setAttribute("thongbao", "Tài khoản này đã được sử dụng");
			accDAO.closeConnection();
			response.sendRedirect((String) session.getAttribute("currentUrl"));
			return;
		}
		String pass = request.getParameter("pass");
		String hoten = request.getParameter("hoten");
		String nghiepvu = request.getParameter("nghiepvu");
		String cmnd = request.getParameter("cmnd");
		String mucluong = request.getParameter("mucluong");
		String email = request.getParameter("email");
		String sodt = request.getParameter("sodt");
		NhanVien nv = new NhanVien(user, pass, hoten, nghiepvu, cmnd, mucluong,
				email, sodt);
		nvDAO.insertNhanVien(nv);
		nvDAO.closeConnection();
		session.setAttribute("thongbao", "Thêm thành công");
		response.sendRedirect("List-nhan-vien.jsp");
	}
}

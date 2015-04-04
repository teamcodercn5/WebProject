package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.NhanVienDAO;
import dao.NhanVienDAOImpl;
import model.NhanVien;

/**
 * Servlet implementation class EditNhanVien
 */
@WebServlet("/Views/Admin/Edit-nhan-vien")
public class EditNhanVien extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditNhanVien() {
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
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String hoten = request.getParameter("hoten");
		System.out.println(hoten);
		String nghiepvu = request.getParameter("nghiepvu");
		String cmnd = request.getParameter("cmnd");
		String mucluong = request.getParameter("mucluong");
		String email = request.getParameter("email");
		String sodt = request.getParameter("sodt");
		NhanVien nv = new NhanVien(user, pass, hoten, nghiepvu, cmnd, mucluong,
				email, sodt);
		NhanVienDAO nvDAO = new NhanVienDAOImpl();
		nvDAO.updateNhanVien(nv, user);
		nvDAO.closeConnection();
		session.setAttribute("thongbao", "Sửa thành công");
		response.sendRedirect("List-nhan-vien.jsp");
	}
}

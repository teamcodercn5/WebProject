package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import dao.AccountDAO;
import dao.AccountDAOImpl;
import dao.NhanVienDAO;
import dao.NhanVienDAOImpl;

/**
 * Servlet implementation class NewAccount
 */
@WebServlet("/Views/New-account")
public class NewAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NewAccount() {
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
		String email = request.getParameter("email");
		String[] temp = request.getParameterValues("gioitinh");
		String gioitinh = "";
		for (int i = 0; i < temp.length; i++) {
			if (!temp[i].equals("")) {
				gioitinh = temp[i];
			}
		}
		String diachi = request.getParameter("diachi");
		String ngaysinh = request.getParameter("ngaysinh");
		String sodt = request.getParameter("sodt");
		temp = request.getParameterValues("the");
		String loaithe = "";
		for (int i = 0; i < temp.length; i++) {
			if (!temp[i].equals("")) {
				loaithe = temp[i];
			}
		}
		String mathe = request.getParameter("mathe");
		String values[] = { user, pass, hoten, email, gioitinh, diachi,
				ngaysinh, sodt, loaithe, mathe };
		Account acc = new Account();
		acc.setAccount(values);
		accDAO.insertAccount(acc);
		accDAO.closeConnection();
		response.sendRedirect("Homepage.jsp");
	}
}

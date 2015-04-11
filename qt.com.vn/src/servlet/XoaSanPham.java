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
 * Servlet implementation class XoaSanPham
 */
@WebServlet("/Views/NhanVien/Xoa-san-pham")
public class XoaSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaSanPham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("thongbao", "Xóa thành công");
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		spDAO.deleteSanPham(request.getParameter("masp"));
		response.sendRedirect("Nhan-vien.jsp");
	}
}

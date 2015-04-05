package servlet;

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
 * Servlet implementation class NhapLieuSanPham
 */
@WebServlet("/Views/NhanVien/Save-san-pham")
public class NhapLieuSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NhapLieuSanPham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String values[] = request.getParameterValues("sp");
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		if(spDAO.getSanPham(values[0])!=null){
			session.setAttribute("thongbao", "Mã sản phẩm bị trùng");
			spDAO.closeConnection();
			response.sendRedirect("Nhap-lieu-san-pham.jsp");
			return;
		}
		SanPham sp = new SanPham(values[0],values[1],values[2],values[3],values[4],values[5]);
		spDAO.insertSanPham(sp);
		spDAO.closeConnection();
		session.setAttribute("thongbao", "Thêm thành công");
		response.sendRedirect("List-san-pham.jsp");
	}
}

package org.galapagos.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CarSaveServlet
 */
@WebServlet("/cartsave")
public class CartSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8"); // 응답의 문자셋 설정. filter와 무관

		PrintWriter out = response.getWriter();

		// 입력 파라미터 얻기
		String product = request.getParameter("product");
		System.out.println(product);

		// 세션 객체 얻기
		HttpSession session = request.getSession();
		ArrayList<String> list = (ArrayList<String>) session.getAttribute("product");

		if (list == null) { // null이라고 하면 처음 꺼내보는 것을 의미
			list = new ArrayList<String>();
			list.add(product);
			session.setAttribute("product", list); // Session Scope, 처음으로 list 설정
		} else { // else라면 예전에 속성 추가했었다는 것을 의미
			list.add(product);
		}
		out.print("<html><body>");
		out.print("Product 추가<br>");
		out.print("<a href='cartbasket'>장바구니 보기</a>");
		out.print("</body></html>");
	}
}

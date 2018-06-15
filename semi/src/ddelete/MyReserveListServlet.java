package ddelete;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.concert.model.vo.ConcertReserve;
import semi.dobo.model.vo.DoboReserve;
import semi.hotel.model.vo.HotelReserve;

@WebServlet(name = "MyReserveList", urlPatterns = { "/myReserveList" })
public class MyReserveListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyReserveListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		//int userNo = ((MemberVO)session.getAttribute("user")).getUserNo();
		int userNo = 1;
		
		ArrayList<ConcertReserve> concertList = new LoginService().loadConcertReserve(userNo);
		ArrayList<DoboReserve> doboList = new LoginService().loadDoboReserve(userNo);
		ArrayList<HotelReserve> hotelList = new LoginService().loadHotelReserve(userNo);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/ddelete/myReserveList.jsp");
		request.setAttribute("concert", concertList);
		request.setAttribute("dobo", doboList);
		request.setAttribute("hotel", hotelList);
		view.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

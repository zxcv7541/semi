package semi.enjoy.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.enjoy.model.service.EnjoyService;
import semi.enjoy.model.vo.EnjoyFestival;

/**
 * Servlet implementation class EnjoyCalendarServlet
 */
@WebServlet(name = "EnjoyCalendar", urlPatterns = { "/enjoyCalendar" })
public class EnjoyCalendarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnjoyCalendarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("utf-8");
		
		ArrayList<EnjoyFestival> list = new EnjoyService().AllFestivalData();

		if(list.isEmpty()) {
		}
		else {
			ArrayList<EnjoyFestival> list2 = new ArrayList<EnjoyFestival>();
			ArrayList<EnjoyFestival> list3 = new ArrayList<EnjoyFestival>();
			
			for(EnjoyFestival EF : list)
			{
				StringTokenizer ST = new StringTokenizer(EF.getFestival_period(), " ~ ");
		        String startDate=""; String endDate="";
				startDate = ST.nextToken(); endDate = ST.nextToken();
				SimpleDateFormat sidf = new SimpleDateFormat("yyyy-MM-dd");
				Date day1;Date day2;
				try {
					day1 = sidf.parse(startDate);
					day2 = sidf.parse(endDate);
					int day3 = (int)((day2.getTime() - day1.getTime())/(60*60*24*1000));
//					System.out.println(day3+EF.getFestival_title());
					if(0<day3&&day3<=9) {
						list2.add(EF);
					}
					else if(day3>=30)
					{
						list3.add(EF);
					}
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			
			/*for(EnjoyFestival EF : list2)
			{
				System.out.println(EF.getFestival_period());
			}*/
			RequestDispatcher view =  request.getRequestDispatcher("/views/enjoy/enjoyCalendar.jsp");
			request.setAttribute("list", list);
			request.setAttribute("list2", list2);
			request.setAttribute("list3", list3);
//			request.setAttribute("comment", list);
			view.forward(request, response);
			
			
		}
			
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

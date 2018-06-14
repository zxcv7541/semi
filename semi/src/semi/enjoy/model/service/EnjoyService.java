package semi.enjoy.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import semi.enjoy.model.dao.Enjoydao;
import semi.enjoy.model.vo.CommentData;
import semi.enjoy.model.vo.EnjoyComment;
import semi.enjoy.model.vo.EnjoyDetailData1;
import semi.enjoy.model.vo.EnjoyListData;

import semi.enjoy.model.vo.PageData;

public class EnjoyService {
	
	public EnjoyDetailData1 getOneDetailData(int IndexNo){
		Connection conn = JDBCTemplate.getConnection();
		
		EnjoyDetailData1 edd1 = new Enjoydao().getOneDetailData(IndexNo,conn);
		
		JDBCTemplate.close(conn);
		
		return edd1;
		
	}
	

	public ArrayList<EnjoyListData> getAllData() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<EnjoyListData> list = new Enjoydao().getAllData(conn);
		
		JDBCTemplate.close(conn);
		
		
		
		return list;
	}
	public EnjoyListData getOneData(int IndexNo) {
		

		
		Connection conn = JDBCTemplate.getConnection();
		
		EnjoyListData ELD = new Enjoydao().getOneData(IndexNo,conn);
		
		
		
		return ELD;
	}
	
	

	public PageData getListData(int currentPage, String search, String type) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		
		int recordCountPerPage  = 10;  // 한페이지에 보일 개시물의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
//		ArrayList<EnjoyListData> list = new Enjoydao().getAllData(conn);
		ArrayList<EnjoyListData> list = new Enjoydao().getListData(conn,recordCountPerPage,currentPage,search,type);
		
		String PageNavi = new Enjoydao().getPageNavi(conn,naviCountPerPage,recordCountPerPage,currentPage,search,type);
		
		
		
		PageData pd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			pd = new PageData();
			pd.setEnjoyList(list);
			pd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return pd;
	}


	public int insertReview(String reviewTitle, String reviewContents, int indexNo) {
		// 
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new Enjoydao().insertReview(conn,reviewTitle,reviewContents,indexNo);
		
		
		JDBCTemplate.close(conn);
		
		
		return result;
	}


	public ArrayList<EnjoyComment> noticeComment(int sEQ_Index_TitleNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<EnjoyComment> list = new Enjoydao().noticeComment(sEQ_Index_TitleNo,conn);
		
		JDBCTemplate.close(conn);
		
		
		return list;
	}


	public CommentData getListCommentData(int currentPage, String search, int indexNo) {
		Connection conn = JDBCTemplate.getConnection();		
		int recordCountPerPage  = 5;  // 한페이지에 보일 댓글의 갯수
		int naviCountPerPage = 5; // 네비게이터의 범위 (1~5) (6~10)
		
		
		ArrayList<EnjoyComment> list = new Enjoydao().getListCommentData(conn,recordCountPerPage,currentPage,search,indexNo);
		
		String PageNavi = new Enjoydao().getPageNaviComment(conn,naviCountPerPage,recordCountPerPage,currentPage,search,indexNo);
		
		
		
		CommentData cd =null;
		if(!list.isEmpty() &&!PageNavi.isEmpty()) {
			cd = new CommentData();
			cd.setCommentList(list);
			cd.setPageNavi(PageNavi);
		}
		
		
		JDBCTemplate.close(conn);
		
		
		
		return cd;
	}
}
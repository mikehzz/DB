package com.pcwk.ehr.board.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.WorkDiv;
public class BoardDao implements WorkDiv<BoardDTO> {
	/*
	1.DriverManager 데이터베이스와 연결을 생성하는 클래스
	2.Connection    데이터베이스와 연결을 나타내는 인터페이스
	3.Statement     SQL문을 실행하는 인터페이스
	4.ResultSest    SQL문의 결과를 저장하고 조회하는 인터페이스
	5.연결 종료	
	 */
	final static String DB_URL      = "jdbc:oracle:thin:@192.168.0.123:1521:xe"; //jdbc:oracle:thin:@IP:PORT:전역DB명칭(SID)
	final static String DB_USER     = "scott";
	final static String DB_PASSWORD = "pcwk";
	final static String DB_DRIVER   = "oracle.jdbc.driver.OracleDriver"; //Class.forName("oracle.jdbc.driver.OracleDriver")
	
	//DB연결정보 return
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(DB_DRIVER);
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		} catch (ClassNotFoundException e) {
			LOG.debug("--------------------");
			LOG.debug("ClassNotFoundException " + e.getMessage());
			LOG.debug("--------------------");
		} catch (SQLException e) {
			LOG.debug("--------------------");
			LOG.debug("SQLException " + e.getMessage());
			LOG.debug("--------------------");
		}
		return conn;
	}
	
	@Override
	public ArrayList<BoardDTO> doRetrieve(DTO search) {
		
		ArrayList<BoardDTO> list = new ArrayList<>();
		BoardDTO param = (BoardDTO) search; //param
		
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuilder sbWhere = new StringBuilder(200); //검색
		
		//제목
		if(5 == param.getSearchDiv()) {
			sbWhere.append("            WHERE title LIKE ?||'%'                  \n");
			sbWhere.append("            or contents LIKE ?||'%'                  \n");
		}else if(10 == param.getSearchDiv()) {
			sbWhere.append("            WHERE title LIKE ?||'%'                  \n");
		}//내용
		else if(20==param.getSearchDiv()) {
			sbWhere.append("WHERE contents like ?||'%' \n");
		}
		//글쓴이
		else if(30==param.getSearchDiv()) {
			sbWhere.append("WHERE reg_id like ?||'%' \n");
		}
		
		
		StringBuilder sb = new StringBuilder(1000);
		sb.append(" SELECT     TT1.rnum AS no,   --SELECT 문에 함수 사용.           \n");
		sb.append("            TT1.seq,                                      \n");
		sb.append("            TT1.title,                                      \n");
		sb.append("            TT1.mod_id,                                     \n");
		sb.append("            TT1.read_cnt,                                    \n");
		sb.append("            TO_CHAR(TT1.mod_dt,'YYYYMMDD HH:MM:SS' ) mod_dt \n");
		sb.append("     FROM (                                                 \n");
		sb.append("         SELECT ROWNUM rnum,T1.*                            \n");
		sb.append("         FROM (                                             \n");
		sb.append("             SELECT *                                       \n");
		sb.append("             FROM board                                  \n");
		
		sb.append(sbWhere.toString());
		
		sb.append("     --        WHERE contents like '내용1'||'%'               \n");
		
		sb.append("             ORDER BY mod_dt desc                           \n");
		sb.append("         )T1                                                \n");
//		sb.append("         WHERE ROWNUM <=:page_size*(:page_no-1)+:page_size  \n");
		sb.append("         WHERE ROWNUM <= ? *( ?-1)+ ?   \n");
		sb.append(" )TT1                                                       \n");
//		sb.append(" WHERE rnum >=:page_size*(:page_no-1)+1                     \n");
		sb.append(" WHERE rnum >= ? *( ? -1)+1                     \n");
		
		
		try {
			LOG.debug("1. sql:\n" + sb.toString());
			LOG.debug("2. conn: " + conn);
			LOG.debug("3. param: " + param);
			
			pstmt = conn.prepareStatement(sb.toString());
			LOG.debug("4.pstmt:"+pstmt);
			//param set : page_size, page_no, page_size, page_size, page_no
			
			//param page_size:default는 10
			if(param.getPageSize()==0) {
				param.setPageSize(10);
			}
			
			//param page_no:default는 1
			if(param.getPageno()==0) {
				param.setPageno(1);
			}
			
			if(10 == param.getSearchDiv() || 20 == param.getSearchDiv() || 30 == param.getSearchDiv()) {
				pstmt.setString(1, param.getSearchWord());
				pstmt.setInt(2, param.getPageSize());
				pstmt.setInt(3, param.getPageno());
				pstmt.setInt(4, param.getPageSize());
				pstmt.setInt(5, param.getPageSize());
				pstmt.setInt(6, param.getPageno());
			//제목 + 내용
			}else if(5 == param.getSearchDiv()){
				pstmt.setString(1, param.getSearchWord());
				pstmt.setString(2, param.getSearchWord());
				pstmt.setInt(3, param.getPageSize());
				pstmt.setInt(4, param.getPageno());
				pstmt.setInt(5, param.getPageSize());
				pstmt.setInt(6, param.getPageSize());
				pstmt.setInt(7, param.getPageno());
			} else{
				pstmt.setInt(1, param.getPageSize());
				pstmt.setInt(2, param.getPageno());
				pstmt.setInt(3, param.getPageSize());
				pstmt.setInt(4, param.getPageSize());
				pstmt.setInt(5, param.getPageno());
			}
			
//			pstmt.setInt(1, param.getPageSize());
//			pstmt.setInt(2, param.getPageno());
//			pstmt.setInt(3, param.getPageSize());
//			pstmt.setInt(4, param.getPageSize());
//			pstmt.setInt(5, param.getPageno());
			
			rs = pstmt.executeQuery(); //조회 결과 ResultSet
			while (rs.next()){
				BoardDTO outVO = new BoardDTO();
				
				outVO.setNo(rs.getInt("no"));
				outVO.setSeq(rs.getString("seq"));
				outVO.setTitle(rs.getString("title"));
				outVO.setModId(rs.getString("mod_id"));
				outVO.setReadCnt(rs.getInt("read_cnt"));
				outVO.setModDt(rs.getString("mod_dt"));
				
				LOG.debug(outVO);
				list.add(outVO);
				
			}
			LOG.debug("-----------------------------------------------------------------");
			
		}catch(SQLException e) {
			LOG.debug("--------------------");
			LOG.debug("-SQLException-"+e.getMessage());
			LOG.debug("--------------------");
		}finally {
			if(null != rs) {
				try {
					rs.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(null != pstmt) {
				try {
					pstmt.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(null != conn) {
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}	
		
		
		
		
		return list;
		}
	}
		
	
	public int doTotalCount(BoardDTO param) {
		int totalCount = 0;
		
		Connection conn = getConnection();
		PreparedStatement pstmt = null; //SQL + DATA
		ResultSet rs = null;
		
		StringBuilder sbWhere = new StringBuilder(200); //검색

		//제목
		if(5 == param.getSearchDiv()) {
			sbWhere.append("            WHERE title LIKE ?||'%'                  \n");
			sbWhere.append("            or contents LIKE ?||'%'                  \n");
		}else if(10 == param.getSearchDiv()) {
			sbWhere.append("            WHERE title LIKE ?||'%'                  \n");
		}//내용
		else if(20==param.getSearchDiv()) {
			sbWhere.append("WHERE contents like ?||'%' \n");
		}
		//글쓴이
		else if(30==param.getSearchDiv()) {
			sbWhere.append("WHERE reg_id like ?||'%' \n");
		}
		
		StringBuilder sb = new StringBuilder(500);
		sb.append("SELECT COUNT(*) total_cnt \n");
		sb.append("FROM board                \n");
		sb.append(sbWhere.toString());
		
		try {
			LOG.debug("1. sql:\n" + sb.toString());
			LOG.debug("2. conn: " + conn);
			LOG.debug("3. param: " + param);
			
			pstmt = conn.prepareStatement(sb.toString());
			
			//param
			if(10 == param.getSearchDiv() || 20==param.getSearchDiv()) {
				pstmt.setString(1, param.getSearchWord());

			}else if (5 == param.getSearchDiv()) {
				pstmt.setString(1, param.getSearchWord());
				pstmt.setString(2, param.getSearchWord());

			}
			
			rs = pstmt.executeQuery();//조회 결과 ResultSet
			
			if(rs.next()) {
				
				totalCount = rs.getInt(1);
				
			}
			
		}catch(SQLException e) {
			LOG.debug("--------------------");
			LOG.debug("-SQLException-"+e.getMessage());
			LOG.debug("--------------------");
		}finally {
			
			if(null != rs) {
				try {
					rs.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(null != pstmt) {
				try {
					pstmt.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(null != conn) {
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}	
		}
		
		
		return totalCount;
	}
	
	public int doReadCnt(BoardDTO param) {
		int flag = 0;
		Connection conn = getConnection();
		PreparedStatement pstmt = null; //SQL + DATA
		StringBuilder sb = new StringBuilder(500);
		
		sb.append ( " UPDATE board              				\n" );
		sb.append ( " SET read_cnt = NVL(read_cnt,0) + 1        \n" );
		sb.append ( " WHERE seq = ?                          \n" );
		

		try {
			
			LOG.debug("1. sql:\n" + sb.toString());
			LOG.debug("2. conn: " + conn);
			LOG.debug("3. param: " + param);
			
			pstmt = conn.prepareStatement(sb.toString());
			LOG.debug("4. pstmt: " + pstmt);
			pstmt.setString(1, param.getSeq());
			

			flag = pstmt.executeUpdate();
			LOG.debug("5. flag: " + flag);
			
		}catch(SQLException e) {
			LOG.debug("-------------");
			LOG.debug("SQLException " + e.getMessage());
			LOG.debug("-------------");
		}finally {
			if(null != pstmt) {  //PreparedStatement
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(null != conn) {  //Connection
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		
		return flag;
		
	}
	
	
	@Override
	public int doSave(BoardDTO param) {
		int flag = 0; //저장 건수 check
		Connection conn = getConnection();
		PreparedStatement pstmt = null; //SQL + DATA
		
		StringBuilder sb = new StringBuilder(200);
		sb.append ( " INSERT INTO board ( \n" );
		sb.append ( "     seq,            \n" );
		sb.append ( "     title,          \n" );
		sb.append ( "     contents,       \n" );
		sb.append ( "     read_cnt,       \n" );
		sb.append ( "     reg_id,         \n" );
		sb.append ( "     mod_id          \n" );
		sb.append ( " ) VALUES (          \n" );
		sb.append ( "     ?,              \n" );
		sb.append ( "     ?,              \n" );
		sb.append ( "     ?,              \n" );
		sb.append ( "     ?,              \n" );
		sb.append ( "     ?,              \n" );
		sb.append ( "     ?               \n" );
		sb.append ( " )                   \n" );
		
		LOG.debug("1. sql:\n" + sb.toString());
		LOG.debug("2. conn: " + conn);
		LOG.debug("3. param: " + param);
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			LOG.debug("4. pstmt: " + pstmt);
			
			//?에 값 설정
			pstmt.setString(1, param.getSeq());
			pstmt.setString(2, param.getTitle());
			pstmt.setString(3, param.getContents());
			pstmt.setInt(4, param.getReadCnt());
			pstmt.setString(5, param.getRegId());
			pstmt.setString(6, param.getModId());
			
			//DML 실행
			flag = pstmt.executeUpdate();
			LOG.debug("5. flag: " + flag);
			
		}catch(SQLException e) {
			LOG.debug("-------------");
			LOG.debug("SQLException " + e.getMessage());
			LOG.debug("-------------");
		}finally {
			if(null != pstmt) {  //PreparedStatement
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(null != conn) {  //Connection
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return flag;
	}
	@Override
	public int doUpdate(BoardDTO param) {
		
		int flag = 0; //저장 건수 check
		Connection conn = getConnection();
		PreparedStatement pstmt = null; //SQL + DATA
		StringBuilder sb = new StringBuilder(200);
		
		
		sb.append ( " UPDATE board              \n" );
		sb.append ( " SET title = ?,            \n" );
		sb.append ( "     contents=?,           \n" );
		sb.append ( "     mod_dt = SYSDATE,     \n" );
		sb.append ( "     mod_id =?             \n" );		
		sb.append ( " WHERE seq = ?             \n" );
		
		try {
			
			LOG.debug("1. sql:\n" + sb.toString());
			LOG.debug("2. conn: " + conn);
			LOG.debug("3. param: " + param);
			
			pstmt = conn.prepareStatement(sb.toString());
			LOG.debug("4. pstmt: " + pstmt);
			
			pstmt.setString(1, param.getTitle());
			pstmt.setString(2, param.getContents());
			pstmt.setString(3, param.getModId());
			pstmt.setString(4, param.getSeq());
//			pstmt.setString(1,"4");
//			pstmt.setString(2, "4");
//			pstmt.setString(3, "4");
//			pstmt.setInt(4, param.getSeq());

			
			
			
			//DML 실행
			flag = pstmt.executeUpdate();
			LOG.debug("5.flag :"+flag);
			
			
			
		}catch(SQLException e) {
			LOG.debug("-------------");
			LOG.debug("SQLException " + e.getMessage());
			LOG.debug("-------------");
		}finally {
			if(null != pstmt) {  //PreparedStatement
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(null != conn) {  //Connection
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		
		return flag;
	}
	@Override
	public int doDelete(BoardDTO param) {
		int flag = 0;//삭제 건수
		Connection conn = getConnection();
		PreparedStatement pstmt = null; //SQL + DATA
		StringBuilder sb = new StringBuilder(200);
		sb.append(" DELETE FROM board \n");
		sb.append(" WHERE seq = ?     \n");	
		
		try {
			LOG.debug("1. sql:\n"+sb.toString());
			LOG.debug("2. conn:"+conn);
			LOG.debug("3. param:"+param);
			
			pstmt = conn.prepareStatement(sb.toString());
			LOG.debug("4. pstmt:"+pstmt);
			
			//param setting
			pstmt.setString(1, param.getSeq());
			
			//DML 실행
			flag = pstmt.executeUpdate();
			LOG.debug("5. flag:"+flag);
			
			
		}catch(SQLException e) {
			LOG.debug("--------------------");
			LOG.debug("-SQLException-"+e.getMessage());
			LOG.debug("--------------------");
		}finally {
			if(null != pstmt) {
				try{
					pstmt.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(null != conn) {
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		
		}
		
		
		
		return flag;
	}
	@Override
	public BoardDTO doSelectOne(BoardDTO param) {
		
		BoardDTO outVO = null;
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuilder sb = new StringBuilder(300);
		
		sb.append("  SELECT        \n");
		sb.append("    seq,        \n");
		sb.append("    title,      \n");
		sb.append("    contents,   \n");
		sb.append("    read_cnt,   \n");
		sb.append("    TO_CHAR(reg_dt,'YYYY-MM-DD HH24:MI:SS') reg_dt,     \n");
		sb.append("    reg_id,      \n");
		sb.append("   TO_CHAR(mod_dt,'YYYY-MM-DD HH24:MI:SS') mod_dt,     \n");
		sb.append("    mod_id      \n");
		sb.append("	FROM board     \n");
		sb.append("	WHERE seq = ?  \n");
		
		LOG.debug("1. sql:\n"+sb.toString());
		LOG.debug("2. conn:"+conn);
		LOG.debug("3. param:"+param);
		
		try {
			
			pstmt = conn.prepareStatement(sb.toString());
			LOG.debug("4.pstmt:"+pstmt);
			pstmt.setString(1, param.getSeq());
			
			//SELECT 실행
			rs = pstmt.executeQuery();
			LOG.debug("5.rs:"+rs);
			
			
			if(rs.next()) {
				outVO = new BoardDTO();
				
				outVO.setSeq(rs.getString("seq"));
				outVO.setTitle(rs.getString("title"));
				outVO.setContents(rs.getString("contents"));
				outVO.setReadCnt(rs.getInt("read_cnt"));
				
				outVO.setRegDt(rs.getString("reg_dt"));
				outVO.setRegId(rs.getString("reg_id"));

				outVO.setModDt(rs.getString("mod_dt"));
				outVO.setModId(rs.getString("mod_id"));
				
				LOG.debug("6.outVO:"+outVO);
				
			}
			
			

			
		}catch(SQLException e) {
			LOG.debug("--------------------");
			LOG.debug("-SQLException-"+e.getMessage());
			LOG.debug("--------------------");
		}finally {
			if(null != rs) {
				try {
					rs.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(null != pstmt) {
				try {
					pstmt.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(null != conn) {
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}	
				
				
			
		}
		
		
		
		
		return outVO;
	}
}
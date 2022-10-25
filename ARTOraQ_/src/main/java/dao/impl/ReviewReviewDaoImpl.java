package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.ReviewReviewDao;
import dto.Review;

public class ReviewReviewDaoImpl implements ReviewReviewDao {

	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	@Override
	public int write(Connection conn, Review review ,String memid) {
		
		String sql = "INSERT INTO review ( reid, boardno , memid , recontent , rating , good)";
			   sql += " VALUES ( review_seq.nextval , ? , ? , ? , ? , 0 )";
			   
			   int res = 0;
			   
			   try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, review.getBoardno());
				ps.setString(2, memid);
				ps.setString(3, review.getRecontent());
				ps.setInt(4, review.getRating());
				
				res = ps.executeUpdate();
				
				if(res == 1) {
					JDBCTemplate.commit(conn);
				}else {
					JDBCTemplate.rollback(conn);
				}
				
			   } catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JDBCTemplate.close(rs);
				JDBCTemplate.close(ps);
			}
		
			   
		return 1;
	}

	@Override
	public List<Review> selectByBoardno(Connection conn, int boardno) {
		
		String sql = "Select * from review where boardno = ? order by reid desc";
		
		List<Review> list = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1,boardno );
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Review review = new Review();
				
				review.setReid(rs.getInt("reid"));
				review.setBoardno(rs.getString("boardno"));
				review.setMemid(rs.getString("memid"));
				review.setRecontent(rs.getString("recontent"));
				review.setRating(rs.getInt("rating"));
				review.setGood(rs.getInt("good"));
				
				list.add(review);
								
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return list;
	}

	@Override
	public int deleteByReid(Connection conn, int reid) {
		
		String sql = "DELETE FROM review where reid = ?";
		
		int res = 0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, reid);
			
			res = ps.executeUpdate();
			
			
			if(res == 1) {
				JDBCTemplate.commit(conn);
				
			
				
			} else {
				JDBCTemplate.rollback(conn);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}


	@Override
	   public int updateGood(Connection conn, int reid) {

	      String sql = "";
	      sql += "UPDATE review";
	      sql += "   SET good = good + 1";
	      sql += " WHERE reid = ?";
	      
	      int res = 0;
	      
	      try {
	         ps = conn.prepareStatement(sql);
	         ps.setInt(1, reid);
	         
	         res = ps.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(ps);
	      }
	      
	      return res;
	      
	   }
	
	

}

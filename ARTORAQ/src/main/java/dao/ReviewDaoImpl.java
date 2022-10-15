package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dto.Review;

public class ReviewDaoImpl implements ReviewDao {

	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	@Override
	public int write(Connection conn, Review review) {
		
		String sql = "INSERT INTO review ( reid, boardno , memid , recontent , rating , good)";
			   sql += " VALUES ( review_seq.nextval , 123 , 'apple' , ? , ? , 0 )";
			   
			   int res = 0;
			   
			   try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, review.getRecontent());
				ps.setInt(2, review.getRating());
				
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
				review.setBoardno(rs.getInt("boardno"));
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

	
	

}

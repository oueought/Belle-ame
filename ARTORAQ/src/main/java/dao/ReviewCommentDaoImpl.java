package dao;

import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dto.Comment;

public class ReviewCommentDaoImpl implements ReviewCommentDao {

	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	@Override
	public int insert(Connection conn, Comment comment) {

		String sql = "";
		sql += "INSERT INTO review_comment ( cm_id , info_id , customer_id, cm_contents, review_rating, good)";
		sql += " VALUES ( comment_seq.nextval, '12' , 'aab' ,  ? , ? , '0' )";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, comment.getCmContents());
			ps.setInt(2,comment.getReviewRating());
			
			res = ps.executeUpdate();
		
			if(res > 0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		return res;
	}

	// - 주의 - 게시글 번호 알게 될 경우 게시글 번호로 조회 해야함
	@Override 
	public List<Comment> commentAllByInfoId(Connection conn) {
		String sql = "";
		sql += "select cm_id, info_id, customer_id, cm_contents, cm_date, review_rating, good from review_comment";
		sql += " where info_id = 12 ORDER BY cm_id desc";
		
		List<Comment> list = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Comment comment = new Comment();
				
				Clob clob = rs.getClob("cm_contents");
				String clobStr="";
				if(clob != null) {
				 clobStr = clob.getSubString(1, (int)clob.length());
				}
				
				System.out.println(clobStr);
				
				
				
				 comment.setCmId(rs.getInt("cm_id")); 
				 comment.setInfoId(rs.getInt("info_id"));
				 comment.setCustomerId(rs.getString("customer_id"));
				 comment.setCmContents(clobStr); 
				 comment.setCmDate(rs.getDate("cm_date"));
				 comment.setReviewRating(rs.getInt("review_rating"));
				 comment.setGood(rs.getInt("good"));
				
			
				
				list.add(comment);
				
				for( Comment d : list)
					System.out.println(d);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
			
		}
		
		return list;
	}

}

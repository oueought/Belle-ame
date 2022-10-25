
package dao.join;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import dto.join.Member;

public class MemberDaoImpl implements MemberDao {
   
   private PreparedStatement ps;
   private ResultSet rs;

   
   //--- 회원가입 업데이트 ---
   @Override
   public int insert(Connection conn, Member member) {
      
      String sql = "";
      sql += "INSERT INTO member ( memid, mempw, memnick, memname, memphone, mememail, membirth )";
      sql += " VALUES ( ?, ?, ?, ?, ?, ?, ? )";
      
      int res = 0;
      
      try {
         ps = conn.prepareStatement(sql);
         
         ps.setString(1, member.getMemid());
         ps.setString(2, member.getMempw());
         ps.setString(3, member.getMemnick());
         ps.setString(4, member.getMemname());
         ps.setString(5, member.getMemphone());
         ps.setString(6, member.getMememail());
         ps.setString(7, member.getMembirth());
         
         res = ps.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         JDBCTemplate.close(ps);
      }
      
      return res;
   }
   
   //--- 마이페이지 업데이트 ---
   public int update(Connection conn, Member member) {
      
      String sql = "";
      sql += "UPDATE member SET mempw = ?, memnick = ?, memphone = ?, mememail = ?";
      sql += " WHERE memid = ?"; 

      int res = 0;
      
      try {
         ps = conn.prepareStatement(sql);
         
         ps.setString(1, member.getMempw());
         ps.setString(2, member.getMemnick());
         ps.setString(3, member.getMemphone());
         ps.setString(4, member.getMememail());
         ps.setString(5, member.getMemid()); 
         
         res = ps.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         JDBCTemplate.close(ps);
      }
      
      return res;
   }

   //--- 로그인 ---
      @Override
      public int selectCntMemberByUseridUserpw(Connection conn, Member member) {
         
         String sql = "";
         sql += "SELECT count(*) cnt FROM member";
         sql += " WHERE memid = ?";
         sql += " AND mempw = ?";
         
         int cnt = 0;
         
         try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, member.getMemid());
            ps.setString(2, member.getMempw());
            
            rs = ps.executeQuery();
            
            while(rs.next()) {
               cnt = rs.getInt("cnt");
            }
            
         } catch (SQLException e) {
            e.printStackTrace();
         } finally {
            JDBCTemplate.close(rs);
            JDBCTemplate.close(ps);
         }
         
         return cnt;
      }
   
      //--- 아이디찾기 ---
      @Override
      public int selectCntMemberByUsernameUserphone(Connection conn, Member member) {
         
         String sql = "";
         sql += "SELECT count(*) cnt FROM member";
         sql += " WHERE memname = ?";
         sql += "   AND memphone = ?";
         
         int cnt = 0;
         
         try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, member.getMemname());
            ps.setString(2, member.getMemphone());
            
            rs = ps.executeQuery();
            
            while(rs.next()) {
               cnt = rs.getInt("cnt");
            }
            
         } catch (SQLException e) {
            e.printStackTrace();
         } finally {
            JDBCTemplate.close(rs);
            JDBCTemplate.close(ps);
         }
         
         return cnt;
      }
      
      @Override
      public Member selectMemberByUsername(Connection conn, Member member) {
         
         String sql = "";
         sql += "SELECT memname, memphone, memid FROM member";
         sql += " WHERE memname = ?";
         sql += "   AND memphone = ?"; //이름, 휴대폰번호 둘 다 만족하는 회원
         
         Member res = null;
         
         try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, member.getMemname());
            ps.setString(2, member.getMemphone());
            
            rs = ps.executeQuery();
            
            while(rs.next()) {
               res = new Member();
               
               res.setMemname(rs.getString("memname"));
               res.setMemphone(rs.getString("memphone"));;
               res.setMemid(rs.getString("memid"));
            }
            
         } catch (SQLException e) {
            e.printStackTrace();
         } finally {
            JDBCTemplate.close(rs);
            JDBCTemplate.close(ps);
         }
         
         return res;
      }

      //--- 비밀번호 찾기 ---
      @Override
      public int selectCntMemberByUseridUserphone(Connection conn, Member member) {
         
         String sql = "";
         sql += "SELECT count(*) cnt FROM member";
         sql += " WHERE memid = ?";
         sql += "   AND memphone = ?";
         
         int cnt = 0;
         
         try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, member.getMemid());
            ps.setString(2, member.getMemphone());
            
            rs = ps.executeQuery();
            
            while(rs.next()) {
               cnt = rs.getInt("cnt");
            }
            
         } catch (SQLException e) {
            e.printStackTrace();
         } finally {
            JDBCTemplate.close(rs);
            JDBCTemplate.close(ps);
         }
         
         return cnt;
      }

      @Override
      public Member selectMemberByUserid(Connection conn, Member member) {
         
         String sql = "";
         sql += "SELECT memid, memphone, mempw FROM member";
         sql += " WHERE memid = ?";
         sql += "   AND memphone = ?"; //아이디, 휴대폰번호 둘 다 만족하는 회원
         
         Member res = null;
         
         try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, member.getMemid());
            ps.setString(2, member.getMemphone());
            
            rs = ps.executeQuery();
            
            while(rs.next()) {
               res = new Member();
               
               res.setMemid(rs.getString("memid"));
               res.setMemphone(rs.getString("memphone"));
               res.setMempw(rs.getString("mempw"));
            }
            
         } catch (SQLException e) {
            e.printStackTrace();
         } finally {
            JDBCTemplate.close(rs);
            JDBCTemplate.close(ps);
         }
         
         return res;
      }
   
}
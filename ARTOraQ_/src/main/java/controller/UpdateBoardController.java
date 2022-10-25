package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Board;
import dto.UploadFile;
import service.face.BoardService;
import service.impl.BoardServiceImpl;


@WebServlet("/update")
public class UpdateBoardController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
   private BoardService boardService = new BoardServiceImpl();

   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      
            
      
      //전달파라미터 저장 객체 얻기
      Board boardno = boardService.getBoardno(req);
      
      //상세보기 결과 조회
      Board updateBoard = boardService.view(boardno);
      
      //조회결과 MODEL값 전달
      req.setAttribute("updateBoard", updateBoard);
      
      
      
      // 업로드파일 처리
      UploadFile uploadFile = boardService.viewFile(updateBoard);
      
      req.setAttribute("uploadFile", uploadFile);
      
            
      
      req.getRequestDispatcher("/WEB-INF/views/page1/update.jsp").forward(req, resp);
      
      
   
   }
   
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      

      boardService.update(req);
      
      resp.sendRedirect("/infoBoard");
      
   }
   
   
}

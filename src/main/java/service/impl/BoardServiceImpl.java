package service.impl;


import java.io.File;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import common.JDBCTemplate;
import dao.face.BoardDao;
import dao.impl.BoardDaoImpl;
import dto.Board;
import dto.UploadFile;
import service.face.BoardService;

public class BoardServiceImpl implements BoardService {
	
	private BoardDao boardDao = new BoardDaoImpl();
	
	
	
	// 게시물 전체 조회 
	@Override
	public List<Board> getList() {
		
		// 조회 결과 처리 
		return boardDao.selectAll(JDBCTemplate.getConnection());
	}

	
	
	

	@Override
	public Board view(Board boardno) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		
		
	//게시글 조회
	Board board = boardDao.selectBoardByBoard(conn, boardno);
		
	//조회된 게시글 리턴
	return board;
	
	}

	
	
	

	@Override
	public Board getBoardno(HttpServletRequest req) {
		
		//전달파라미터를 저장할 객체
		Board board = new Board();
		
		String param = req.getParameter("boardno");
		
		if( param != null && !"".equals(param) ) {
			board.setBoardno( (param) );
		} else {
		}
		
		return board;
	}


	
	
	// 글쓰기 ( + 첨부파일 추가 )
	@Override
	public void write(HttpServletRequest req) {
		
		
		//multipart/form-data 인코딩 확인
			boolean isMultipart = ServletFileUpload.isMultipartContent(req);
				
			//multipar형식이 아닐 경우 처리 중단
			if( !isMultipart ) {
				System.out.println("[ERROR] 파일 업로드 형식 데이터가 아님");
				return;
			}
				
				DiskFileItemFactory factory = new DiskFileItemFactory();
				
				//메모리 처리 사이즈 설정
				int maxMem = 1 * 1024 * 1024;	// 1 MB == 1048576 B
				factory.setSizeThreshold(maxMem);

				//서블릿 컨텍스트 객체
				ServletContext context = req.getServletContext();
				
				//임시 파일 저장 폴더
				String path = context.getRealPath("tmp");
				File tmpRepository = new File(path);
				tmpRepository.mkdir();
				factory.setRepository(tmpRepository);

				//파일 업로드 수행 객체
				ServletFileUpload upload = new ServletFileUpload(factory);
				
				//파일 업로드 용량 제한
				int maxFile = 10 * 1024 * 1024; // 10MB
				upload.setFileSizeMax(maxFile);

				//파일 업로드된 데이터 파싱
				List<FileItem> items = null;
				try {
					items = upload.parseRequest(req);
				} catch (FileUploadException e) {
					e.printStackTrace();
				}

				//게시글 정보 DTO객체
				Board board = new Board();
				
				//게시글 첨부파일 정보 DTO객체
				UploadFile uploadFile = new UploadFile();
			
				//파일아이템의 반복자
				Iterator<FileItem> iter = items.iterator();

				while( iter.hasNext() ) {
					FileItem item = iter.next();
					
					//--- 1) 빈 파일에 대한 처리 ---
					if( item.getSize() <= 0 ) { //전달 데이터의 크기
						//빈 파일은 무시하고 다음 FileItem처리로 넘어간다
						continue;
					}
					
					//--- 2) 폼 필드에 대한 처리 ---
					if( item.isFormField() ) {
						
						//키(key) 추출하기
						String key = item.getFieldName();
						
						//값(value) 추출하기
						String value = null;
						try {
							value = item.getString("UTF-8"); //한글 인코딩 지정
						} catch (UnsupportedEncodingException e) {
							e.printStackTrace();
						}
						
						//key에 맞게 value를 DTO에 삽입하기
//						if( "title".equals(key) ) {
//							board.setTitle(value);
//						}
//						if( "content".equals(key) ) {
//							board.setContent(value);
//						}
						
						if( "boardno".equals(key)) {
							board.setBoardno(value);
						}
						
						if( "title".equals(key) ) {
							board.setTitle(value);
						}
						if( "content".equals(key) ) {
							board.setContent(value);
						}
						if( "period".equals(key) ) {
							board.setPeriod(value);
						}
						if( "location".equals(key) ) {
							board.setLocation(value);
						}
						if( "price".equals(key) ) {
							board.setPrice( Integer.parseInt(value) );
						}
					} 
					
					
					
					//--- 3) 파일에 대한 처리 ---
					if( !item.isFormField() ) {
						
						//저장 파일명 처리
						SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssS");
						String rename = sdf.format(new Date()); //현재시간
						
						//파일 업로드 폴더
						File uploadFolder = new File( context.getRealPath("upload") );
						uploadFolder.mkdir();
						
						//업로드할 파일 객체 생성하기
						File up = new File(uploadFolder, rename);
						
						try {
							item.write(up);	//임시파일을 실제 업로드 파일로 출력한다
							item.delete(); //임시파일 제거
							
						} catch (Exception e) {
							e.printStackTrace();
						}
						
						//업로드된 파일의 정보를 DTO객체에 저장하기
						uploadFile.setUploadname(item.getName());
						
					} // if( !item.isFormField() ) end
					
				} // while( iter.hasNext() ) end

	
				Connection conn = JDBCTemplate.getConnection();
				// boardno 연결해야됨
	
				// 게시글 번호 생성
				String boardno = boardDao.selectNextBoardno(conn);
				
				// 게시글 번호 삽입
				board.setBoardno(boardno);
				
				
				// 관리자 ID 처리 추후 추가
				
				
				
				if(boardDao.insert(conn, board) > 0) {
					JDBCTemplate.commit(conn);
				} else {
					JDBCTemplate.rollback(conn);
				} 
				
				
				// 첨부파일 정보 삽입
				if ( uploadFile.getUploadname() != "") {
					
					uploadFile.setBoardno(boardno);
					
					if ( boardDao.insertFile(conn, uploadFile) > 0) {
						JDBCTemplate.commit(conn);
					} else {
						JDBCTemplate.rollback(conn);
					}
				}
	
	}


	@Override
	public void update(HttpServletRequest req) {
		
		//multipart/form-data 인코딩 확인
		boolean isMultipart = ServletFileUpload.isMultipartContent(req);
			
		//multipar형식이 아닐 경우 처리 중단
		if( !isMultipart ) {
			System.out.println("[ERROR] 파일 업로드 형식 데이터가 아님");
			return;
		}
			
			DiskFileItemFactory factory = new DiskFileItemFactory();
			
			//메모리 처리 사이즈 설정
			int maxMem = 1 * 1024 * 1024;	
			factory.setSizeThreshold(maxMem);

			//서블릿 컨텍스트 객체
			ServletContext context = req.getServletContext();
			
			//임시 파일 저장 폴더
			String path = context.getRealPath("tmp");
			File tmpRepository = new File(path);
			tmpRepository.mkdir();
			factory.setRepository(tmpRepository);

			//파일 업로드 수행 객체
			ServletFileUpload upload = new ServletFileUpload(factory);
			
			//파일 업로드 용량 제한
			int maxFile = 10 * 1024 * 1024; // 10MB
			upload.setFileSizeMax(maxFile);

			//파일 업로드된 데이터 파싱
			List<FileItem> items = null;
			try {
				items = upload.parseRequest(req);
			} catch (FileUploadException e) {
				e.printStackTrace();
			}

			//게시글 정보 DTO객체
			Board board = new Board();
			
			//게시글 첨부파일 정보 DTO객체
			UploadFile uploadFile = new UploadFile();
		
			//파일아이템의 반복자
			Iterator<FileItem> iter = items.iterator();

			while( iter.hasNext() ) {
				FileItem item = iter.next();
				
				//--- 1) 빈 파일에 대한 처리 ---
				if( item.getSize() <= 0 ) { //전달 데이터의 크기
					//빈 파일은 무시하고 다음 FileItem처리로 넘어간다
					continue;
				}
				
				//--- 2) 폼 필드에 대한 처리 ---
				if( item.isFormField() ) {
					
					//키(key) 추출하기
					String key = item.getFieldName();
					
					//값(value) 추출하기
					String value = null;
					try {
						value = item.getString("UTF-8"); //한글 인코딩 지정
					} catch (UnsupportedEncodingException e) {
						e.printStackTrace();
					}
					
					//key에 맞게 value를 DTO에 삽입하기
					
					if( "boardno".equals(key)) {
						board.setBoardno(value);
					}
					
					if( "title".equals(key) ) {
						board.setTitle(value);
					}
					if( "content".equals(key) ) {
						board.setContent(value);
					}
					if( "period".equals(key) ) {
						board.setPeriod(value);
					}
					if( "location".equals(key) ) {
						board.setLocation(value);
					}
					if( "price".equals(key) ) {
						board.setPrice( Integer.parseInt(value) );
					}
				} 
				
				
				
				//--- 3) 파일에 대한 처리 ---
				if( !item.isFormField() ) {
					
					//저장 파일명 처리
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssS");
					String rename = sdf.format(new Date()); //현재시간
					
					//파일 업로드 폴더
					File uploadFolder = new File( context.getRealPath("upload") );
					uploadFolder.mkdir();
					
					//업로드할 파일 객체 생성하기
					File up = new File(uploadFolder, rename);
					
					try {
						item.write(up);	//임시파일을 실제 업로드 파일로 출력한다
						item.delete(); //임시파일 제거
						
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					//업로드된 파일의 정보를 DTO객체에 저장하기
					uploadFile.setUploadname(item.getName());
					
				} // if( !item.isFormField() ) end
				
			} // while( iter.hasNext() ) end


			Connection conn = JDBCTemplate.getConnection();

			
			if(boardDao.insert(conn, board) > 0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			} 
			
			
			// 첨부파일 정보 삽입
			if ( uploadFile.getUploadname() != "") {
				
				uploadFile.setBoardno(board.getBoardno());
				
				if ( boardDao.insertFile(conn, uploadFile) > 0) {
					JDBCTemplate.commit(conn);
				} else {
					JDBCTemplate.rollback(conn);
				}
			}
	}



	
	
	

	@Override
	public UploadFile viewFile(Board viewBoard) {
		return boardDao.selectFile(JDBCTemplate.getConnection(), viewBoard);
	}




	@Override
	public void delete(Board board) {
		Connection conn = JDBCTemplate.getConnection();
		
		// 첨부 파일 먼저 삭제 
		if(boardDao.deleteFile(conn,board) > 0 ) {
			JDBCTemplate.commit(conn);
			
		} else {
			JDBCTemplate.rollback(conn);
		}
		
		// 게시글 삭제
		if(boardDao.delete(conn,board) > 0 ) {
			JDBCTemplate.commit(conn);
			
		} else {
			JDBCTemplate.rollback(conn);
		}
	}



















}	
	
	
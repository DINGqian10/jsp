package ch10;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.corba.se.impl.protocol.giopmsgheaders.Message;

/**
 * Servlet implementation class AddMessageServlet
 */
@WebServlet("/AddMessageServlet")
public class AddMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMessageServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request,
			           HttpServletResponse response) 
			           throws ServletException, IOException {
		doGet(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, 
			             HttpServletResponse response) 
			            throws ServletException, IOException {
		String author=new 
				String(request.getParameter("author").getBytes("ISO-8859-1"),"UTF-8");
		String title=new 
				String(request.getParameter("title").getBytes("ISO-8859-1"),"UTF-8");
		String content=new 
				String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
		//��ȡ��ǰʱ�䲢��ʽʱ��Ϊָ����ʽ
		SimpleDateFormat format=new
				SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
		String today=format.format(new Date());
		MessageBean mm=new MessageBean();
		mm.setAuthor(author);
		mm.setTitle(title);
		mm.setContent(content);
		mm.setTime(today);
		//��ȡsession����
		//HttpSession session=request.getSession();
		//��ȡsession�����ȡӦ��������
		//ServletContext scx=session.getServletContext();
		//��ȡ�洢��Ӧ���������еļ��϶���
		ArrayList wordlist=(ArrayList)request.getAttribute("wordlist");
		if(wordlist==null)
			wordlist =new ArrayList();
		//����װ����Ϣ��javabean �洢�����϶�����
		wordlist.add(mm);
		//�����϶��󱣴浽Ӧ����������
		request.setAttribute("wordlist", wordlist);
		//response.sendRedirect("showMessage.jsp");
	RequestDispatcher dispatcher=request.getRequestDispatcher("showMessage.jsp");
	dispatcher.forward(request, response);
	}

}

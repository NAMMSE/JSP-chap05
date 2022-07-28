package chap05.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 0728
public class FileConfigServlet extends HttpServlet{
	
	Map<String, String> servletFileConfig = new HashMap<>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		// JSP 웹 프로젝트로 File을 다룰 때는 getRealPath()를 사용해야 한다
		/*D:\javaAWS(psh)\jsp-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp7\wtpwebapps\chap05\WEB-INF
		 아파치 톰캣에도 webapp이 있는데 24시간 돌아가는 해당 서버의 경로에 데이터를 올려야하니까 getRealPath를 사용한다 
		 이클립스 사용자가 서버를 돌리면서 테스트를 할 때 실제로 저장되어있는 chap05의 데이터들을 쓰는게아니라
		 그 데이터들을 카피해서 잠시 임시공간에 놓고 테스트(컴파일 말하는 것같음)를 하는데 그 공간이 위 경로에 wtpwebapps이다
		 (테스트 하려고 왼쪽 익스프로러에 실제 저장되는 공간(/chap05/webapp)에 config만들고 test.txt 만들었음)
		 그래서 코드를 작성해서 돌아가는 모든 작업들이 wtpwebapp에서 실행되므로 파일 작업을 할때도 /config/test.txt가 아니라
		 wtpwebapps\chap05\config\test.txt 이런식으로 적어야된다 
	 	 wtpwebapps\chap05 까지 리턴하는게 getRealPath()다
	 	 실제로 new File("/config/test.txt"); 이렇게 적고 서버 돌리면 경로 찾을 수 없다고 나온다
	 	 근데 getRealPath()/config/test.txt 하면 실행된다
	 	 		 
		 */
		//File f = req.getServletContext().getRealPath("/");
		
		// ** forward 등 JSP 관련 메서드 사용시에는 webapp경로를 사용하지만 
		// ** 자바 관련 클래스 사용시에는 실제 경로를 사용한다
		
		String servletConfigPath = config.getInitParameter("servlet-config"); // servlet-config의 value가 /config/test.txt이다
		
		File root = new File(config.getServletContext().getRealPath("/"));
		File servletConfigFile = new File(root, servletConfigPath);
		
		
		try(FileReader fin = new FileReader(servletConfigFile);
			BufferedReader in = new BufferedReader(fin);	
			) {
			String line =null;
			while((line = in.readLine())!=null) {
				String[] keyAndValue = line.split("=");
				
				servletFileConfig.put(keyAndValue[0], keyAndValue[1]);
			}
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(servletFileConfig);
		System.out.println(servletFileConfig.get("user"));
		System.out.println(servletFileConfig.get("password"));
		System.out.println(servletFileConfig.get("resource"));
	}
}

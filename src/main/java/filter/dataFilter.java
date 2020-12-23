package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "dataFilter", urlPatterns = "*.do")
public class dataFilter implements Filter {
	
	//存储编码格式信息
	private String encode=null;
	public void destroy() {
	}
	
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
		//转换
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)resp;
		/*
		1.判断在web.xml文件是否配置了编码格式的相关信息
		2.如果为空，则设置编码格式为配置文件中的编码格式
		3.否则设置编码格式为GBK
		 */
		if (!this.encode.equals("")){
			request.setCharacterEncoding(this.encode);
			response.setCharacterEncoding(this.encode);
		}else{
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		}
		/*
		 * 使用doFilter方法调用链中的下一个过滤器或目标资源（servlet或JSP页面）。
		 * chain.doFilter处理过滤器的其余部分（如果有的话），最终处理请求的servlet或JSP页面。
		 */
		chain.doFilter(req, resp);
	}
	
	public void init(FilterConfig config)  {
		this.encode=config.getInitParameter("encode");
	}
	
}

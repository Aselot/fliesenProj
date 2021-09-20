package com.example.demo1;

import java.io.IOException;
import javax.servlet.http.*;

public class AuftragServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        HttpSession session = request.getSession();
        AuftragBean d  = (AuftragBean) session.getAttribute("data"); //data is the variable name set in the JSP page
        System.out.println("servlet started "+ d);
    }
}
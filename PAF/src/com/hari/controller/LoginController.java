package com.hari.controller;
import java.io.IOException;
import java.sql.Connection;

import javax.swing.text.Document;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hari.dao.*;
import com.hari.model.Member;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("/Login")
public class LoginController implements LoginControllerImpl {

	private Connection con = null;
	MemberDao dao;
	Member mem;
	
	@Override
	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public void login(@RequestParam("un") String name, @RequestParam("pw") String password, HttpServletRequest request, HttpServletResponse response) {
		String msg = "";
		String url = "";
		try(ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml")) {
			dao=(MemberDao)ctx.getBean("mdao");
			int x = dao.loginValidate(name, password);
			if (x == 0) {
				msg = "Login invalid";
				url = "http://localhost:8081/PAF/logReg.jsp?msg="+msg;
				redirect(url, request, response);
			}
			else if(x == -99){
				msg = "Something went wrong";
				url = "http://localhost:8081/PAF/logReg.jsp?msg="+msg;
				redirect(url, request, response);
			}
			else {
				url = "http://localhost:8081/PAF/Proxy.jsp?name="+name;
				redirect(url, request, response);
			}
		}
		catch (Exception e) {
			msg = "Something went wrong";
			url = "http://localhost:8081/PAF/logReg.jsp?msg="+msg;
			System.out.println("Error: " + e);
		}
		
	}
	
	@Override
	@RequestMapping(value = "/redirect", method = RequestMethod.POST)
	public void redirect(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try{
        	response.sendRedirect(url);
        }
        catch (Exception e) {
            // TODO: handle exception
        	//response.sendRedirect("http://localhost:8081/PAF/logReg.jsp");
            System.out.println("Failed");
        }
	}
}

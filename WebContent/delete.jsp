<%@ page import="com.estsoft.db.MySQLWebDBConnection"%>
<%@ page import="com.estsoft.guestbook.dao.GuestbookListDAO"%>
<%@ page import="com.estsoft.guestbook.vo.GuestbookListVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%
   request.setCharacterEncoding("UTF-8");
   String id = request.getParameter("id");
   String password = request.getParameter("password");
   GuestbookListDAO dao = new GuestbookListDAO(new MySQLWebDBConnection());
   dao.delete(id, password);
   response.sendRedirect("/GuestBook");
%>

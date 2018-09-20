package com.example.handler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet(name = "IndexHandler", value = "/")
public class IndexHandler extends HttpServlet {

    private static final Logger log = Logger.getLogger(IndexHandler.class.getName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        log.info("index called");

        resp.setContentType("text/plain");
        resp.getWriter().println("Hello Google App Engine!");
    }
}

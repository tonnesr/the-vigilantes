/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author by-cr
 */
@WebServlet(urlPatterns = {"/MinSide"})
public class MinSide extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>\n" +
"<html>\n" +
"    <head>\n" +
"        <title>Min side</title>\n" +
"        <style>\n" +
"            .button {\n" +
"                background-color: gray;\n" +
"                border: none;\n" +
"                color: white;\n" +
"                padding: 16px 32px;\n" +
"                text-align: center;\n" +
"                text-decoration: none;\n" +
"                display: inline-block;\n" +
"                font-size: 16px;\n" +
"                margin: 4px 2px;\n" +
"                -webkit-transition-duration: 0.4s; /* Safari */\n" +
"                transition-duration: 0.4s;\n" +
"                cursor: pointer;\n" +
"            }\n" +
"            .button1 {\n" +
"                background-color: green; \n" +
"                color: white; \n" +
"                border: 2px solid #4CAF50;\n" +
"            }\n" +
"            .button1:hover {\n" +
"                background-color: black;\n" +
"                color: white;\n" +
"            }\n" +
"            .button2 {\n" +
"                background-color: red; \n" +
"                color: white; \n" +
"            }\n" +
"            .button2:hover {\n" +
"                background-color: blue;\n" +
"                color: white;\n" +
"            }\n" +
"            .button3 {\n" +
"                background-color: yellow;\n" +
"                color: black;\n" +
"            }\n" +
"            .button3:hover {\n" +
"                background-color: black;\n" +
"                color: white;\n" +
"            }\n" +
"            .button4 {\n" +
"                background-color: blue;\n" +
"                color: white;\n" +
"            }\n" +
"            .button4:hover {\n" +
"                background-color: green;\n" +
"                color: white;\n" +
"            }\n" +
"            .disabled {\n" +
"                opacity: 0.9;\n" +
"                cursor: not-allowed;\n" +
"            }\n" +
"        </style>\n" +
"    </head>\n" +
"    <body>\n" +
"        <h1>Min side</h1>\n" +
"        <p>Navn:</p>\n" +
"        <a href =\"http://blogg.no\">Blogg:</a>\n" +
"        <p>E-post:</p>\n" +
"        <button class=\"button button1\" onclick=\"href=\"ModulLevering\">Modul1</button>\n" +
"        <button class=\"button button2\" onclick=\"alert('Modul ikke godkjent')\">Modul2</button>\n" +
"        <button class=\"button button3\" onclick=\"alert('Venter godkjenning')\">Modul3</button>\n" +
"        <button class=\"button button4\" onclick=\"alert('Trykk for å laste opp')\">Modul4</button>\n" +
"        <button class=\"button disabled\" onclick=\"alert('Vent til modul 4 er levert')\">Modul5</button>\n" +
"    </body>\n" +
"</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

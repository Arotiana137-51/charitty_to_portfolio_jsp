/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import java.io.IOException;
import java.math.BigInteger;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Donateur;
import model.Foundraiser;
import org.json.JSONObject;

/**
 *
 * @author Arotiana's
 */
@WebServlet(name = "indexServlet", urlPatterns = {"/"})
public class indexServlet extends HttpServlet {

    private DatabaseConnector db;

    public void init() {
        db = new DatabaseConnector();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        String action = request.getServletPath();
        HttpSession session = request.getSession();

        try {
            switch (action) {
                case "/index":
                    ShowIndex(request, response);
                    break;
                case "/about":
                    ShowAbout(request, response);
                    break;
                case "/blog":
                    ShowBlog(request, response);
                    break;
                case "/contact":
                    ShowContact(request, response);
                    break;
                case "/visaPayment":
                    ShowVisaPayment(request, response);
                    break;
                case "/AdminStatus":
                    loginValidation(request, response);

                    break;
                case "/foundraise":
                    ShowFoundPage(request, response);

                    break;
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    try {
                        insertDonateur(request, response);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    break;
                case "/delete":
                    deleteDonateur(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateDonateur(request, response);
                    break;
                case "/report":

                    System.out.println("servelet.indexServlet.doGet()");

                    CountPerProject(request, response, session, "water", 25000000);
                    CountPerProject(request, response, session, "chloth", 1000000);
                    CountPerProject(request, response, session, "medic", 35000000);
                    CountFound(request, response);
                    break;
                case "/loginTest":
                    loginTest(request, response);
                    break;
                case "/comunity":
                    System.out.println("servelet.indexServlet.doGet()");
                    insertFounder(request, response);
                    break;
                case "/listDonateur":
                    listDonateur(request, response);
                default:
                    ShowIndex(request, response);

                    break;
            }
        } catch (Exception e) {
        }
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
//        processRequest(request, reponse);
        doGet(request, response);
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

    private void listDonateur(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        System.out.println("servelet.indexServlet.listDonateur()");
        List<Donateur> listDonateur = (List<Donateur>) db.SelectAllDonateur();
        request.setAttribute("listDonateur", listDonateur);
        RequestDispatcher dispatcher = request.getRequestDispatcher("AdminStatus.jsp");
        dispatcher.forward(request, response);
    }

    private void loginValidation(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        request.setAttribute("request", request.getServletPath());
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }

    private void loginTest(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        System.out.println("servelet.indexServlet.loginTest()");
        ArrayList<Foundraiser> user = (ArrayList<Foundraiser>) db.selectUser();
        
        String mail = request.getParameter("email");
        String mdp = request.getParameter("password");
        System.out.println("servelet.indexServlet.loginTest()");
        
        if (mail=="arotiana4612@gmail.com"||mdp=="password")
        {
            listDonateur(request, response);
        }else{
            
            ShowIndex(request, response);
        }
                      
//        System.out.println("validation method"+ mail+"  modt de passe:"+mdp);
//        int s = user.size();
//        for (int i = 0; i > s; i++) {
//            System.out.println("bouclé");
//            String dbmail = user.get(0).getMail();
//            String dbpass = user.get(0).getPassword();
//            if ((dbmail.equals(mail)) || (dbpass.equals(mdp))) {
//                System.out.println("servelet.indexServlet.loginTest()         validé");
//                JSONObject obj = new JSONObject();
//                obj.put("reponse", "Acces garanted");
//                response.getWriter().print(obj);
//                //affichage liste donateur
//                listDonateur(request, response);
//                break;
//            } else if (i == s) {
//                JSONObject obj = new JSONObject();
//                obj.put("reponse", "Acces denied");
//                response.getWriter().print(obj);
//                break;
//            }
//        }

    }



    private void ShowIndex(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);

    }

    private void ShowAbout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("about.jsp");
        dispatcher.forward(request, response);
    }

    private void ShowBlog(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("blog.jsp");
        dispatcher.forward(request, response);
    }

    private void ShowContact(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("contact.jsp");
        dispatcher.forward(request, response);
    }

    private void ShowVisaPayment(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("visaPayment.jsp");
        dispatcher.forward(request, response);
    }

    private void ShowFoundPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("foundraise.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Donateur-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Donateur existingDonateur = db.SelectDonateurId(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Donateur-form.jsp");
        request.setAttribute("Donateur", existingDonateur);
        dispatcher.forward(request, response);

    }

    private void insertDonateur(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String carte = request.getParameter("visa");
        String name = request.getParameter("name");
        String email = request.getParameter("mail");
        String montant = request.getParameter("montant");
        String proj = request.getParameter("project");

        long visa = Long.valueOf(carte);
        long amount = Long.valueOf(montant);
        System.out.println(" visa  " + carte + " name  " + name + " mail " + email + " montant  " + montant + "project        " + proj);
        Donateur newDonateur = new Donateur(visa, name, email, amount, proj);
        System.out.println("servelet.indexServlet.insertDonateur()" + newDonateur.getProject());
        db.insertDonateurs(newDonateur);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);

    }

    private void updateDonateur(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        long visa = Long.valueOf(request.getParameter("visa"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String proj = request.getParameter("project");
        long amount = Long.valueOf(request.getParameter("montant"));
        Donateur book = new Donateur(visa, name, email, amount, proj);

        db.updateDonateurs(book);
        response.sendRedirect("index");
    }

    private void deleteDonateur(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {

        long id = Long.valueOf(request.getParameter("visa"));

        db.deletingDonateur(id);

        response.sendRedirect("AdminStatus");

    }

    private void CountFound(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        try {
            long count = Long.valueOf(db.CountMoney());

            request.setAttribute("montant", count);
            RequestDispatcher dispatcher = request.getRequestDispatcher("report.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(indexServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void CountPerProject(HttpServletRequest request, HttpServletResponse response, HttpSession session, String project, float targetFound)
            throws SQLException, IOException {
        try {

            int count = (int) (db.Percentage(project, targetFound));
            String scount = Integer.toString(count);
            System.out.println("servelet.indexServlet.CountPerProject()---------------count=" + count);
            session.setAttribute(project, scount);
            System.out.println(session.getAttribute(project) + "  = attribut");

        } catch (Exception ex) {
            Logger.getLogger(indexServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void insertFounder(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {

        String carte = request.getParameter("visa");
        String name = request.getParameter("nom");
        String email = request.getParameter("mail");
        String password = request.getParameter("password");
        String proj = request.getParameter("project");

        long visa = Long.valueOf(carte);

        System.out.println(" visa  " + carte + " name  " + name + " mail " + email + " password" + password + "project        " + proj);
        Foundraiser found = new Foundraiser(email, visa, password, proj);

        db.insertFounder(found);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);

    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Acciones;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;

/**
 *
 * @author 43295236
 */
public class mostrarAsignaturasFiltrado extends Controller.Controller {
     @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/ApuntazoDB", "admin1", "admin");
            PreparedStatement dt = con.prepareStatement("select * from ADMIN1.ASIGNATURAS where UNIVERSIDAD = ? AND GRADO = ?");
            dt.setString(1, request.getParameter("asignaturaFiltrado"));
            System.out.println("asdashdahbsahbdahbshbkjahbkjdsahbjsahbjkdahbjsahbjashbjdasbhjasbhjd          "+request.getParameter("asignaturaFiltrado"));
            System.out.println("asdashdahbsahbdahbshbkjahbkjdsahbjsahbjkdahbjsahbjashbjdasbhjasbhjd          "+request.getParameter("gradeFiltrado"));
            dt.setString(2, request.getParameter("gradeFiltrado"));
            ResultSet universidades = dt.executeQuery();
         if (universidades.next()){
                request.setAttribute("asignaturas", universidades);
            }
            forward("/mostrarAsignaturasPremium.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }
        
    }
}

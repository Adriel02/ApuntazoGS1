package Controller.Acciones;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;

public class mostrarGradosPremium extends Controller.Controller{

    @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/ApuntazoDB", "admin1", "admin");
            PreparedStatement dt = con.prepareStatement("select * from ADMIN1.GRADO");
            ResultSet grado = dt.executeQuery();
         if (grado.next()){
                request.setAttribute("grado", grado);
            }
            forward("/mostrarGradosPremium.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }
        
    }
    
}


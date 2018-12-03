package Controller.cuenta;

import Controller.Model.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import javax.servlet.http.HttpSession;

public class Login extends Controller.Controller {
    private String page = "";
    @Override
    public void process() {
        try {
            if (userIsValid()) {
                updateSession();
                forward(page);
            } else {
                forward("/Index.jsp");
            }
        } catch (ServletException | IOException | SQLException e) {}
    }
    
    private boolean userIsValid() throws SQLException{
        try {
            ResultSet resultSet = connectAndQuery();
            if(resultSet.next()){
                return true;
            }
            
        } catch (SQLException e) {}
       
        return false;
    }
    
    public ResultSet connectAndQuery() throws SQLException {
        String tabla ="";
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/ApuntazoDB", "admin1", "admin");
        if(request.getParameter("type").equals("UsuarioPremium")){
            tabla= "ADMIN1.USUARIOPREMIUM";
            page ="/PrincipalPremium.jsp";
        }
        
        if(request.getParameter("type").equals("usuarioNormal")){
            tabla= "ADMIN1.USUARIO";
            page = "/PrincipalRegistrado.jsp";
        }
        
        
        String query = "select * from " + tabla +  " where USUARIO = ? AND PASS = ?";
        
        PreparedStatement statement = con.prepareStatement(query);
        statement.setString(1, request.getParameter("usuario"));
        statement.setString(2, request.getParameter("pass"));
        System.out.println(query);
        return statement.executeQuery();
    }

    public void updateSession() {
        HttpSession session = request.getSession(true);
        Usuario user = new Usuario(request.getParameter("usuario"), new java.sql.Date(Calendar.getInstance().getTime().getTime()));
        session.setAttribute("Usuario", user);
    }
    
}

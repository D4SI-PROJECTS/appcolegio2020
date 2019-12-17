package Controller;

import Config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CUsuario {
    Conexion conexion = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.conectar());

    @RequestMapping("usuario.htm")
    public String ProcessRequest(Model model, HttpServletRequest request, HttpSession sesion) {
        String ruta = "";

        String accion = request.getParameter("op");

        switch (accion) {
            case "validar":
                ruta = Validar(model, request, sesion);
                break;
            case "salir":
                ruta = Salir(model, sesion);
                break;
        }

        return ruta;
    }

    @RequestMapping("index.htm")
    public String Index(HttpSession sesion) {
//        if (sesion.getAttribute("usuario") == null) {
            return "index";
//        } else {
//            return "inicio";
//        }
    }

    @RequestMapping("inicio.htm")
    public String Inicio() {
        return "inicio";
    }

    public String Validar(Model model, HttpServletRequest request, HttpSession sesion) {
//        String usuario = request.getParameter("usuario");
//        String clave = request.getParameter("clave");
//
//        String sql = "SELECT *, concat(nomusu,' ', apeusu) AS fullname FROM usuario WHERE usuario = '" + usuario + "' and clave = '" + clave + "'";
//        List datos = jdbcTemplate.queryForList(sql);
//
//        String ruta;
//        if (datos.isEmpty()) {
//            sesion.setAttribute("error", "display: block");
//            sesion.setAttribute("errormens", " Credenciales no validas");
//            ruta = "index";
//        } else {
//            sesion.setAttribute("usuario", datos);
//            ruta = "redirect:/inicio.htm";
//        }
        return "redirect:/inicio.htm";
    }

    public String Salir(Model model, HttpSession sesion) {
//        sesion.removeAttribute("usuario");
        return "redirect:/index.htm";
    }
}

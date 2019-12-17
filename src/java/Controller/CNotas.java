package Controller;

import Config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONArray;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CNotas {
    Conexion conexion = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.conectar());

    @RequestMapping("notas.htm")
    public @ResponseBody String ProcessRequest(Model model, HttpServletRequest request, HttpSession sesion) {
        String accion = request.getParameter("op");
        String resp = "";
        switch (accion) {
            case "listar":
                resp = Listar(request);
                break;
        }
        return resp;
    }

    @RequestMapping("Notas.htm")
    private String Index(){
        return "modulo01/notas";
    }
    
    private String Listar(HttpServletRequest request) {
        
        String sql = "call sp_lista_notas";
        List datos = jdbcTemplate.queryForList(sql);
        JSONArray array = new JSONArray();
        return array.toJSONString(datos);
    }
}

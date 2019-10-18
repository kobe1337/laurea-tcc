package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Aluno;

public class AlunoDAO extends DataBaseDAO {

    public AlunoDAO() throws Exception {
    }
    
    public ArrayList<Aluno> getLista() throws Exception {
    
        ArrayList<Aluno> lista = new ArrayList<Aluno>();
        String sql = "SELECT a.*, r.responsavel, u.usuario FROM aluno a "
                + "INNER JOIN responsavel r ON "
                + "r.idresponsavel = a.idresponsavel "
                + "INNER JOIN usuario u ON "
                + "u.idusuario = a.idusuario ";
        this.conectar();
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            Aluno a = new Aluno();
        }    
        
        return lista;
    }
    
}

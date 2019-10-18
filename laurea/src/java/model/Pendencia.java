package model;

public class Pendencia {
    private int idpendencia;
    private float valor;
    private Aluno aluno;

    public Pendencia() {
    }

    public Pendencia(int idpendencia, float valor, Aluno aluno) {
        this.idpendencia = idpendencia;
        this.valor = valor;
        this.aluno = aluno;
    }
    
    @Override
    public String toString() {
        return "Valor a ser pago : " + getValor();
    }

    public int getIdpendencia() {
        return idpendencia;
    }

    public void setIdpendencia(int idpendencia) {
        this.idpendencia = idpendencia;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }
    
}

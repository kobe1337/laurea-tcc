package model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Mensalidade {
    private int idmensalidade, status;
    private String mes, datav, datap;
    private double valor, multa, desconto;
    private Contrato contrato;
    
    public Mensalidade() {
    }

    public Mensalidade(int idmensalidade, int status, String mes, double valor, double multa, double desconto, Contrato contrato, String datav, String datap) {
        this.idmensalidade = idmensalidade;
        this.status = status;
        this.mes = mes;
        this.valor = valor;
        this.multa = multa;
        this.desconto = desconto;
        this.contrato = contrato;
        this.datav = datav;
        this.datap = datap;
    }
    
    public String getFormatDataVencimento(){
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy"); 
        LocalDate data = LocalDate.parse(datav, formato);
        return (formato.format(data));
    }
    
    public String getFormatDataPagamento(){
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy"); 
        LocalDate data = LocalDate.parse(datap, formato);
        return (formato.format(data));
    }
    
    @Override
    public String toString() {
        return getMes() + getFormatDataVencimento() + getFormatDataPagamento() ;
    }

    public int getIdmensalidade() {
        return idmensalidade;
    }

    public void setIdmensalidade(int idmensalidade) {
        this.idmensalidade = idmensalidade;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public double getMulta() {
        return multa;
    }

    public void setMulta(double multa) {
        this.multa = multa;
    }

    public double getDesconto() {
        return desconto;
    }

    public void setDesconto(double desconto) {
        this.desconto = desconto;
    }

    public Contrato getContrato() {
        return contrato;
    }

    public void setContrato(Contrato contrato) {
        this.contrato = contrato;
    }

    public String getDatav() {
        return datav;
    }

    public void setDatav(String datav) {
        this.datav = datav;
    }

    public String getDatap() {
        return datap;
    }

    public void setDatap(String datap) {
        this.datap = datap;
    }
    
    
    
}

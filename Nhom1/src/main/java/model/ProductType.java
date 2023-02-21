package model;

public class ProductType {
    private int idLSP;
    private String tenLSP;

    public ProductType() {
    }

    public ProductType(String tenLSP) {
        this.tenLSP = tenLSP;
    }

    public ProductType(int idLSP, String tenLSP) {
        this.idLSP = idLSP;
        this.tenLSP = tenLSP;
    }

    public int getIdLSP() {
        return idLSP;
    }

    public void setIdLSP(int idLSP) {
        this.idLSP = idLSP;
    }

    public String getTenLSP() {
        return tenLSP;
    }

    public void setTenLSP(String tenLSP) {
        this.tenLSP = tenLSP;
    }

    @Override
    public String toString() {
        return "ProductType{" +
                "idLSP=" + idLSP +
                ", tenLSP='" + tenLSP + '\'' +
                '}';
    }
}

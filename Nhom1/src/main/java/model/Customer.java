package model;

public class Customer {
    protected int maKH;
    protected String tenKH;
    protected String soDienThoai;
    protected String email;
    protected String matKhau;

    public Customer() {
    }

    public Customer(int maKH, String tenKH, String soDienThoai, String email, String matKhau) {
        super();
        this.maKH = maKH;
        this.tenKH = tenKH;
        this.soDienThoai = soDienThoai;
        this.email = email;
        this.matKhau = matKhau;
    }

    public Customer(String tenKH, String soDienThoai, String email, String matKhau) {
        super();
        this.tenKH = tenKH;
        this.soDienThoai = soDienThoai;
        this.email = email;
        this.matKhau = matKhau;
    }

    public int getMaKH() {
        return maKH;
    }

    public void setMaKH(int maKH) {
        this.maKH = maKH;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "maKH=" + maKH +
                ", tenKH='" + tenKH + '\'' +
                ", soDienThoai='" + soDienThoai + '\'' +
                ", email='" + email + '\'' +
                ", matKhau='" + matKhau + '\'' +
                '}';
    }
}

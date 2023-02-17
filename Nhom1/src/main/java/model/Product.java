package model;

public class Product {
    protected int idSP;
    protected String tenSP;
    protected String donGia;
    protected String soLuong;
    protected String loaiSanPham;


    public Product() {
    }

    public Product(int idSP, String tenSP, String donGia, String soLuong, String loaiSanPham) {
        super();
        this.idSP = idSP;
        this.tenSP = tenSP;
        this.donGia = donGia;
        this.soLuong = soLuong;
        this.loaiSanPham = loaiSanPham;
    }


    public Product(String tenSP, String donGia, String soLuong, String loaiSanPham) {
        this.tenSP = tenSP;
        this.donGia = donGia;
        this.soLuong = soLuong;
        this.loaiSanPham = loaiSanPham;
    }

    public int getIdSP() {
        return idSP;
    }

    public void setIdSP(int idSP) {
        this.idSP = idSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getDonGia() {
        return donGia;
    }

    public void setDonGia(String donGia) {
        this.donGia = donGia;
    }

    public String getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(String soLuong) {
        this.soLuong = soLuong;
    }

    public String getLoaiSanPham() {
        return loaiSanPham;
    }

    public void setLoaiSanPham(String loaiSanPham) {
        this.loaiSanPham = loaiSanPham;
    }

    @Override
    public String toString() {
        return "Product{" +
                "idSP=" + idSP +
                ", tenSP='" + tenSP + '\'' +
                ", donGia='" + donGia + '\'' +
                ", soLuong='" + soLuong + '\'' +
                ", loaiSanPham='" + loaiSanPham + '\'' +
                '}';
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CartItem
{
    public int maSP { get; set; }
    public string tenSP { get; set; }
    public int donGia { get; set; }
    public int soLuong { get; set; }
    public int _thanhTien;
    public int ThanhTien
    {
        get
        {
            _thanhTien = donGia * soLuong;
            return _thanhTien;
        }
    }
    public CartItem(int maSP, string tenSP, int gia, int sl)
    {
        this.maSP = maSP;
        this.tenSP = tenSP;
        this.donGia = gia;
        this.soLuong = sl;
    }
}
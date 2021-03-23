using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class ShoppingCart
{
    public List<CartItem> items { get; set; }
    private int tongTien;
    public int TongTien
    {
        get
        {
            tongTien = 0;
            if (items != null)
            {
                foreach (var i in items)
                {
                    tongTien += i.ThanhTien;
                }
            }
            return tongTien;
        }
    }
    public ShoppingCart()
    {
        if (items == null)
        {
            items = new List<CartItem>();
        }
    }
    public int getIndext(int ma)
    {
        int index = 0;
        foreach (var ite in items)
        {
            if (ite.maSP.Equals(ma))
            {
                return index;
            }
            index++;
        }
        return -1;
    }
    // thêm một mặt hàng vào giỏ
    public void InsertItem(int ma, string ten, int gia, int sl)
    {
        int index = this.getIndext(ma);
        if (index == -1)
        {
            CartItem anItem = new CartItem(ma, ten, gia, sl);
            items.Add(anItem);

        }
        else
        {
            items[index].soLuong += sl;
        }
    }
    public void DeleteItem(int id)
    {
        items.RemoveAt(id);
    }
    public void UpdateItem(int id, int sl)
    {
        if (sl == 0)
        {
            DeleteItem(id);
        }
        else
        {
            CartItem update = items[id];
            update.soLuong = sl;
        }
    }
}
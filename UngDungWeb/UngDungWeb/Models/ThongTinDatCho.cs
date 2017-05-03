using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace UngDungWeb.Models
{
    public class ThongTinDatCho
    {

        public string IdChuyen { get; set; }
        [Required(ErrorMessage = "Bắt buộc nhập vào Họ tên")]
        public string HoTen { get; set; }
        [Required(ErrorMessage = "Bắt buộc nhập vào số điện thoại")]
        public string SoDienThoai { get; set; }
        public string SoXe { get; set; }

        [Required(ErrorMessage = "Bắt buộc nhập vào chỗ ngồi")]
        public string TenChoNgoi { get; set; }
    }
}
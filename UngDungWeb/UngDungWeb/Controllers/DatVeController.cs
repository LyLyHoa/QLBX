using Models.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UngDungWeb.Models;

namespace UngDungWeb.Controllers
{
    public class DatVeController : Controller
    {
        //
        // GET: /ChuyenXeController/
        public ActionResult Index()
        {
            var list = CTChuyenXeDAO.Instance.GetAll();
            return View(list);
        }
        [HttpPost]
        public ActionResult Index(string id)
        {
            var list = CTChuyenXeDAO.Instance.Find(id);
            return View(list);
        }

        //Get: /ChuyenXeController/DatCho/IdChuyen
        public ActionResult DatCho(string id)
        {
            ViewBag.CTCN = CTChoNgoiDAO.Instance.GetByIdChuyen(id);
            ViewBag.TTChung = XeDAO.Instance.GetByIdChuyen(id);
            return View();
        }

        [HttpPost]
        public ActionResult DatCho(ThongTinDatCho postValue)
        {
            if(ModelState.IsValid)
            {
                if (CTChoNgoiDAO.Instance.BanVe(postValue.IdChuyen, postValue.HoTen, postValue.SoDienThoai, postValue.SoXe, postValue.TenChoNgoi))
                {
                    return RedirectToAction("index");
                }
                else
                {
                    ModelState.AddModelError("", "Vui lòng chọn chỗ ngồi khác");
                }
            }
            ViewBag.CTCN = CTChoNgoiDAO.Instance.GetByIdChuyen(postValue.IdChuyen);
            ViewBag.TTChung = XeDAO.Instance.GetByIdChuyen(postValue.IdChuyen);
            return View(postValue);
            
        }
	}
}
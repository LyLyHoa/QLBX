using Models.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DAO
{
    public class CTChuyenXeDAO
    {
        private static CTChuyenXeDAO instance;

        public static CTChuyenXeDAO Instance
        {
            get { if (instance == null) instance = new CTChuyenXeDAO(); return CTChuyenXeDAO.instance; }
            private set { CTChuyenXeDAO.instance = value; }
        }
        private CTChuyenXeDAO() { }

        public List<CTChuyenXe> GetAll()
        {
            List<CTChuyenXe> list = new List<CTChuyenXe>();

            DataTable data = new DataTable();

            string query = "Select ChuyenXe.IdChuyen,ChuyenXe.IdTuyen,NgayDi, Gio,gia, Xe.So_Xe,TuyenXe.TenTuyen,So_Cho_Ngoi from ChuyenXe join TuyenXe on ChuyenXe.IdTuyen = TuyenXe.IdTuyen join Xe on Xe.So_Xe = ChuyenXe.So_Xe join BangGia on TuyenXe.IdTuyen = BangGia.IdTuyen order by NgayDi desc, TuyenXe.TenTuyen";
            data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow row in data.Rows)
            {
                CTChuyenXe cx = new CTChuyenXe(row);
                list.Add(cx);
            }

            return list;
        }
        public List<CTChuyenXe> Find(string searchString)
        {

            List<CTChuyenXe> list = new List<CTChuyenXe>();

            DataTable data = new DataTable();


            string query = string.Format("Select ChuyenXe.IdChuyen,ChuyenXe.IdTuyen,NgayDi, Gio,gia, Xe.So_Xe,TuyenXe.TenTuyen,So_Cho_Ngoi from ChuyenXe join TuyenXe on ChuyenXe.IdTuyen = TuyenXe.IdTuyen join Xe on Xe.So_Xe = ChuyenXe.So_Xe join BangGia on TuyenXe.IdTuyen = BangGia.IdTuyen where TenTuyen like N'%{0}%' or ChuyenXe.IdTuyen like N'%{0}%' order by NgayDi desc",searchString);
            data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow row in data.Rows)
            {
                CTChuyenXe cx = new CTChuyenXe(row);
                list.Add(cx);
            }

            return list;
        }
        
    }
}

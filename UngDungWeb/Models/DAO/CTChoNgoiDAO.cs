using Models.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DAO
{
    public class CTChoNgoiDAO
    {
        private static CTChoNgoiDAO instance;

        public static CTChoNgoiDAO Instance
        {
            get { if (instance == null) instance = new CTChoNgoiDAO(); return CTChoNgoiDAO.instance; }
            private set { CTChoNgoiDAO.instance = value; }
        }
        private CTChoNgoiDAO() { }

        public List<CTChoNgoi> GetByIdChuyen(string idChuyen)
        {
            List<CTChoNgoi> list = new List<CTChoNgoi>();

            DataTable data = new DataTable();

            string query = string.Format("select ChuyenXe.IdChuyen, Xe.So_Xe,Xe.So_Cho_Ngoi,ChoNgoi.TenChoNgoi from ChoNgoi join ChuyenXe on ChoNgoi.IdChuyen = ChuyenXe.IdChuyen join Xe on Xe.so_xe = Chongoi.so_xe  where ChuyenXe.IdChuyen = '{0}'",idChuyen);
            data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow row in data.Rows)
            {
                CTChoNgoi cx = new CTChoNgoi(row);
                list.Add(cx);
            }
            

            return list;
        }

        public bool BanVe(string idChuyen, string ten, string SDT, string soXe, string tenChoNgoi)
        {
            try
            {
                string sql = string.Format("usp_MuaVe '{0}',N'{1}','{2}','{3}','{4}'", idChuyen, ten, SDT, soXe, tenChoNgoi);
                return DataProvider.Instance.ExecuteNonQuery(sql) > 0;
            }
            catch (Exception)
            {
                DataProvider.Instance.ExecuteNonQuery("delete from banve where idVe = (select max(idve) from banve)");
                return false;
            }
            
        }
    }
}

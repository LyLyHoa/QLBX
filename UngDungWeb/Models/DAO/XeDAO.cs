using Models.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DAO
{
    public class XeDAO
    {
        private static XeDAO instance;

        public static XeDAO Instance
        {
            get { if (instance == null) instance = new XeDAO(); return XeDAO.instance; }
            private set { XeDAO.instance = value; }
        }
        private XeDAO() { }

        public List<Xe> GetByIdChuyen(string idChuyen)
        {
            List<Xe> list = new List<Xe>();

            DataTable data = new DataTable();

            string query = string.Format("select ChuyenXe.IdChuyen, ChuyenXe.So_Xe, so_cho_ngoi from ChuyenXe join Xe on ChuyenXe.So_Xe = Xe.So_Xe where IdChuyen = '{0}'",idChuyen);
            data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow row in data.Rows)
            {
                Xe cx = new Xe(row);
                list.Add(cx);
            }

            return list;
        }
    }
}

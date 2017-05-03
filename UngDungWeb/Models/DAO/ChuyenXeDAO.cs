using Models.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DAO
{
    public class ChuyenXeDAO
    {
        private static ChuyenXeDAO instance;

        public static ChuyenXeDAO Instance
        {
            get { if (instance == null) instance = new ChuyenXeDAO(); return ChuyenXeDAO.instance; }
            private set { ChuyenXeDAO.instance = value; }
        }
        private ChuyenXeDAO() { }

        public List<ChuyenXe> GetAll()
        {
            List<ChuyenXe> list = new List<ChuyenXe>();

            DataTable data = new DataTable();

            string query = "Select * from ChuyenXe";
            data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow row in data.Rows)
            {
                ChuyenXe cx = new ChuyenXe(row);
                list.Add(cx);
            }

            return list;
        }
    }
}

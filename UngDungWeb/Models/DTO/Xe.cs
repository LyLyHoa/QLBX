using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DTO
{
    public class Xe
    {
        private string idChuyen;

        public string IdChuyen
        {
            get { return idChuyen; }
            set { idChuyen = value; }
        }
        private string soXe;

        public string SoXe
        {
            get { return soXe; }
            set { soXe = value; }
        }
        private int soChoNgoi;

        public int SoChoNgoi
        {
            get { return soChoNgoi; }
            set { soChoNgoi = value; }
        }
        public Xe(DataRow row)
        {
            this.idChuyen = row["idChuyen"].ToString();
            this.soXe = row["so_xe"].ToString();
            this.SoChoNgoi = (int)row["so_cho_ngoi"];
        }
    }
}

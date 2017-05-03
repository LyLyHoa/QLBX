using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DTO
{
    public class ChoNgoi
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
        private string tenChoNgoi;

        public string TenChoNgoi
        {
            get { return tenChoNgoi; }
            set { tenChoNgoi = value; }
        }

        public ChoNgoi(string idChuyen, string soXe, string tenChoNgoi)
        {
            this.IdChuyen = idChuyen;
            this.SoXe = soXe;
            this.TenChoNgoi = tenChoNgoi;
        }
        public ChoNgoi(DataRow row)
        {
            this.IdChuyen = row["idChuyen"].ToString();
            this.SoXe = row["so_Xe"].ToString();
            this.TenChoNgoi = row["tenChoNgoi"].ToString();
        }

    }
}

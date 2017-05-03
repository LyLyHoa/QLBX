using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DTO
{
    public class ChuyenXe
    {
        private string idChuyen;

        public string IdChuyen
        {
            get { return idChuyen; }
            set { idChuyen = value; }
        }
        private string idTuyen;

        public string IdTuyen
        {
            get { return idTuyen; }
            set { idTuyen = value; }
        }
        private DateTime ngayDi;

        public DateTime NgayDi
        {
            get { return ngayDi; }
            set { ngayDi = value; }
        }
        private string gio;

        public string Gio
        {
            get { return gio; }
            set { gio = value; }
        }
        private string soXe;

        public string SoXe
        {
            get { return soXe; }
            set { soXe = value; }
        }

        public ChuyenXe(string idChuyen, string idTuyen, DateTime ngayDi, string gio, string soXe)
        {
            this.IdChuyen = idChuyen;
            this.idTuyen = idTuyen;
            this.NgayDi = ngayDi;
            this.Gio = gio;
            this.SoXe = soXe;
        }
        public ChuyenXe()
        {

        }
        public ChuyenXe(DataRow row)
        {
            this.IdChuyen = row["idChuyen"].ToString();
            this.idTuyen = row["idTuyen"].ToString();
            this.NgayDi = (DateTime)row["ngayDi"];
            this.Gio = row["gio"].ToString();
            this.SoXe = row["so_Xe"].ToString();
        }

        
    }
}

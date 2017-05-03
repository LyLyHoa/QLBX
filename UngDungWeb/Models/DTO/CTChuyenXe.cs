using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DTO
{
    public class CTChuyenXe : ChuyenXe
    {
        private string tenTuyen;

        public string TenTuyen
        {
            get { return tenTuyen; }
            set { tenTuyen = value; }
        }

        private int soChoNgoi;

        public int SoChoNgoi
        {
            get { return soChoNgoi; }
            set { soChoNgoi = value; }
        }

        private int gia;

        public int Gia
        {
            get { return gia; }
            set { gia = value; }
        }
        public CTChuyenXe(DataRow row) : base(row)
        {
            this.tenTuyen = row["tenTuyen"].ToString();
            this.soChoNgoi = (int)row["so_cho_ngoi"];
            this.Gia = (int)row["gia"];
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DTO
{
    public class CTChoNgoi : ChoNgoi
    {
        private int soChoNgoi;

        public int SoChoNgoi
        {
            get { return soChoNgoi; }
            set { soChoNgoi = value; }
        }

        public CTChoNgoi(DataRow row): base(row) 
        {
            this.soChoNgoi = (int)row["so_cho_ngoi"];
        }
    }
}

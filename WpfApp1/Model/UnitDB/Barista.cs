using System;
using System.Collections.Generic;
using System.Text;

namespace Marilyn.Data.Units
{
    public class Barista
    {
        public int Id { get; set; }
        public string Fio { get; set; }
        public int Rating { get; set; }
        public double Salary { get; set; }
        public string Password { get; set; }
        public string Login { get; set; }
        public  List<Cheque> Cheques { get; set; }
    }
}

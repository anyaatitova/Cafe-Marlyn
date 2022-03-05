using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;
using System.Windows;
using WpfApp1.Model.Data;

namespace Marilyn.Data.Units
{
    public class Cheque
    {
        public int Id { get; set; }
        public string UniqNumber { get; set; }
        public int BaristaId { get; set; }
        public Barista Barista { get; set; }
        public  List<Order> Orders { get; set; }

        [NotMapped] 
        public Barista ChequeBarista => DataWorker.GetBaristaNameById(BaristaId);
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;
using System.Windows;
using WpfApp1.Model.Data;

namespace Marilyn.Data.Units
{
    public class Order
    {
        public int Id { get; set; }
        public DateTime OrderDateTime { get; set; }
        public int ChequeId { get; set; }
        public double Price { get; set; }
        public Cheque Cheque { get; set; }
        public  List<HotDrinks> HotDrinks { get; set; }
        public  List<Dessert> Desserts { get; set; }

        public Order()
        {
            HotDrinks = new List<HotDrinks>();
            Desserts = new List<Dessert>();
        }

        [NotMapped] public Cheque OrderCheque => DataWorker.GetChequeById(ChequeId);
    }
}

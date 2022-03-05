using System;
using System.Collections.Generic;
using System.Text;

namespace Marilyn.Data.Units
{
    public class Dessert : Prouct
    {
        public int Id { get; set; }
        public override string Name { get; set; }
        public int Weight { get; set; }
        public override double Price { get; set; }
        public int? OrderID { get; set; }
        public virtual Order Order { get; set; }
    }
}

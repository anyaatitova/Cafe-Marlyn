using System;
using System.Collections.Generic;
using System.Text;

namespace Marilyn.Data.Units
{
    public class HotDrinks : Prouct
    {
        public int Id { get; set; }
        public override string Name { get; set; }
        public string Size { get; set; }
        public override double Price { get; set; }
        public int? OrderID { get; set; }
        public virtual Order Order { get; set; }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Marilyn.Data.Units;
using Microsoft.EntityFrameworkCore;


namespace WpfApp1.Model.Data
{
    class ApplicationContext : DbContext
    {
        public DbSet<HotDrinks> HotDrinks { get; set; }
        public DbSet<Dessert> Desserts { get; set; }
        public DbSet<Barista> Baristas { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Cheque> Cheques { get; set; }
        public ApplicationContext()
        {
            Database.EnsureCreated();
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(
                "Server=(localdb)\\mssqllocaldb;Database=BaristaDB;Trusted_Connection=True");
        }
    }
}

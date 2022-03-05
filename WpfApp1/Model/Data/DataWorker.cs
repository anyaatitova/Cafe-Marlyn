using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Media;
using Marilyn;
using Marilyn.Data.Units;
using Microsoft.EntityFrameworkCore.ChangeTracking.Internal;
using WpfApp1.View;

namespace WpfApp1.Model.Data
{
    public static class DataWorker
    {
        public static List<Prouct> Proucts;
        public static Barista Barista;

        static DataWorker()
        {
            Proucts = new List<Prouct>();
        }

        public static void AddNewProduct(Prouct prouct)
        {
            Proucts.Add(prouct);
        }

        public static void RemoveProduct(Prouct prouct)
        {
            Proucts.Remove(prouct);
        }

        public static void ClearProducst()
        {
            Proucts.Clear();
        }

        public static double CalculateFinalPrice()
        {
            double temp = 0;

            foreach (var prouct in Proucts)
            {
                temp += prouct.Price;
            }

            return Math.Round(temp,2);
        }

        public static List<Prouct> GetAllProdList() => Proucts;

        public static bool AddNewDrink(string name, string size, double price)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                if (!db.HotDrinks.Any(el => el.Name == name && el.Size == size))
                {
                    HotDrinks hotDrinks = new HotDrinks { Name = name, Size = size, Price = price };
                    db.HotDrinks.Add(hotDrinks);
                    db.SaveChanges();
                    return true;
                }

                return false;
            }
        }

        public static bool AddNewDesert(string name, int weight, double price)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                if (!db.Desserts.Any(el => el.Name == name && el.Weight == weight))
                {
                    Dessert dessert = new Dessert { Name = name, Weight = weight, Price = price };
                    db.Desserts.Add(dessert);
                    db.SaveChanges();
                    return true;
                }
                return false;
            }
        }

        public static bool AddNewBarista(string fio, int rating, double salary, string login, string pass)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                if (!db.Baristas.Any(el => el.Fio == fio && el.Login == login))
                {
                    Barista barista = new Barista { Fio = fio, Rating = rating, Salary = salary, Login = login, Password = pass};
                    db.Baristas.Add(barista);
                    db.SaveChanges();
                    return true;
                }
                return false;
            }
        }

        public static void AddNewOrder(Barista barista)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                List<Dessert> desserts = new List<Dessert>();
                List<HotDrinks> drinks = new List<HotDrinks>();

                foreach (var prouct in Proucts)
                {
                    if(prouct is HotDrinks drinksProuct)
                        drinks.Add(drinksProuct);

                    if (prouct is Dessert dessertProuct)
                        desserts.Add(dessertProuct);
                }

                Order order = new Order();
                List <Order> orders = new List<Order>();
                orders.Add(order);
                order.Price = CalculateFinalPrice();
                order.OrderDateTime = DateTime.Now;
                Cheque cheque = CreateNewCheque(barista, orders);
                order.ChequeId = cheque.Id;
                AddNewCheque(cheque);
                db.Orders.Add(order);
                foreach (var item in desserts)
                {
                    item.Order = order;
                }
                foreach (var item in drinks)
                {
                    item.Order = order;
                }
                db.SaveChanges();
                PrintCheque(order, cheque, barista);
                ClearProducst();
            }
        }

        private static void PrintCheque(Order order, Cheque cheque, Barista barista)
        {
            PrintDialog dialog = new PrintDialog();
            if (dialog.ShowDialog() == true)
            {
                PrintForm printForm = new PrintForm();
                printForm.Date.Text = order.OrderDateTime.ToShortDateString();
                printForm.Time.Text = order.OrderDateTime.ToShortTimeString();
                printForm.BaristaName.Text = barista.Fio;
                printForm.Price.Text = order.Price.ToString() + " BYN";
                printForm.Numer.Text = cheque.UniqNumber;
                foreach (var prouct in Proucts)
                {
                    printForm.Products.Items.Add(prouct.Name + " " + prouct.Price + " BYN");
                }
                dialog.PrintVisual(printForm.Print, "Чек");
            }
        }

        private static Cheque CreateNewCheque(Barista barista, List<Order> order)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                Cheque cheque = new Cheque {UniqNumber = Guid.NewGuid().ToString(), BaristaId = barista.Id };
                foreach (var order1 in order)
                {
                    order1.Cheque = cheque;
                }
                return cheque;
            }
        }
        public static void AddNewCheque(Cheque cheque)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                db.Cheques.Add(cheque);
            }
        }

        public static List<HotDrinks> GetAllCoffe()
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.HotDrinks.ToList();
            }
        }
        public static List<Dessert> GetAllDessert()
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.Desserts.ToList();
            }
        }

        public static List<Barista> GetAllBarista()
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.Baristas.ToList();
            }
        }

        public static List<Order> GetAllOrders()
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.Orders.ToList();
            }
        }

        public static List<Cheque> GetAllCheques()
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.Cheques.ToList();
            }
        }

        public static List<Prouct> GetAllProduct()
        {
            List<Prouct> temp = new List<Prouct>();
            temp.AddRange(GetAllCoffe());
            temp.AddRange(GetAllDessert());
            return temp;
        }
        public static Barista GetBaristaNameById(int id)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.Baristas.FirstOrDefault(el => el.Id == id);
            }
        }

        public static Cheque GetChequeById(int id)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.Cheques.FirstOrDefault(el => el.Id == id);
            }
        }

        public static string DeleteDrink(HotDrinks item)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                if (item == null)
                    return "Невозможно удалить пустое значение";
                db.HotDrinks.Remove(item);
                db.SaveChanges();
                return "Напиток упешно удалён";
            }
        }

        public static string DeleteDesser(Dessert item)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                if (item == null)
                    return "Невозможно удалить пустое значение";
                db.Desserts.Remove(item);
                db.SaveChanges();
                return "Дессерт успешно уделён";
            }
        }

        public static string DeleteBarista(Barista item)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                if (item == null)
                    return "Невозможно удалить пустое значение";
                db.Baristas.Remove(item);
                db.SaveChanges();
                return "Бариста успешно удалён";
            }
        }

        public static string DeleteOrder(Order item)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                if (item == null)
                    return "Невозможно удалить пустое значение";
                db.Orders.Remove(item);
                db.SaveChanges();
                return "Данные о заказе успешно удалены";
            }
        }

        public static string DeleteCheque(Cheque item)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                if (item == null)
                    return "Невозможно удалить пустое значение";
                db.Cheques.Remove(item);
                db.SaveChanges();
                return "Данные о чеке успешно удалены";
            }
        }

        public static Barista ReturnUserByLogin(string login)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.Baristas.FirstOrDefault(el => el.Login == login);
            }
        }

        public static bool ValidateUser(string login, string pass)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                if (db.Baristas.Any(el => el.Login == login))
                {
                    var temp = db.Baristas.FirstOrDefault(el => el.Login == login);
                    if (temp != null && temp.Password == pass)
                        return true;
                }

                return false;
            }
        }

        public static void FirstInitialize()
        {
            AddNewDrink("Экспрессо", "XS (30 мл)", 3);
            AddNewDrink("Экспрессо", "S (60 мл)", 4.5);

            AddNewDrink("Американо", "М (120 мл)", 5);
            AddNewDrink("Американо", "L (300 мл)", 6);
            AddNewDrink("Американо", "XL (400 мл)", 7);

            AddNewDrink("Капучино", "М (120 мл)", 4);
            AddNewDrink("Капучино", "L (300 мл)", 5);
            AddNewDrink("Капучино", "XL (400 мл)", 6);

            AddNewDrink("Латте", "М (120 мл)", 6.5);
            AddNewDrink("Латте", "L (300 мл)", 7.5);
            AddNewDrink("Латте", "XL (400 мл)", 8.5);

            AddNewDrink("Чай черный", "XXL (450 мл)", 8.5);
            AddNewDrink("Чай зелёный", "XXL (450 мл)", 8.5);
            AddNewDrink("Чай фруктовый", "XXL (450 мл)", 8.5);

            AddNewDesert("Круасан с карамелью", 80, 3);
            AddNewDesert("Круасан с карамелью", 90, 3.2);

            AddNewDesert("Круасан с шоколадом", 80, 3);
            AddNewDesert("Круасан с шоколадом", 90, 3.2);

            AddNewDesert("Булочка с корицей", 80, 2);
            AddNewDesert("Круасан с корицей", 90, 2.5);

            AddNewDesert("Маффин шоколадный", 90, 3);
            AddNewDesert("Маффин шоколадный", 100, 3.5);

            AddNewDesert("Чизкейк", 100, 4);
            AddNewDesert("Чизкейк", 140, 5.5);

            AddNewDesert("Торт наполеон", 100, 4);
            AddNewDesert("Торт наполеон", 140, 5.5);

            AddNewDesert("Торт трюфельный", 140, 6);

            AddNewBarista("Подсосонный Евгений", 1, 1000, "jeka", "jeka");
            AddNewBarista("Попов Максим", 2, 1000, "maks", "maks");
            AddNewBarista("Неретин Даниил", 3, 1000, "danik", "danik");
            AddNewBarista("Титова Анна", 4, 1000, "anya", "anya");
            AddNewBarista("Щерба Татьяна", 5, 1000, "enot", "enot");
        }
    }
}
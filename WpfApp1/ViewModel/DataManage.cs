using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics.Eventing.Reader;
using System.Runtime.CompilerServices;
using System.Security.Cryptography;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using Marilyn;
using Marilyn.Data.Units;
using MaterialDesignThemes.Wpf;
using Microsoft.Extensions.Options;
using WpfApp1.Annotations;
using WpfApp1.Model.Data;
using WpfApp1.View;
using WpfApp1.View.AddWindow;
using WpfApp1.ViewModel.Workers;

namespace WpfApp1.ViewModel
{
    public class DataManage : INotifyPropertyChanged
    {

        #region DataProp

        private List<Prouct> allProuctsList = DataWorker.GetAllProdList();
        public List<Prouct> AllProuctsList
        {
            get => allProuctsList;
            set
            {
                allProuctsList = value;
                OnPropertyChanged("AllProuctsList");
            }
        }

        private List<HotDrinks> allDrinksList = DataWorker.GetAllCoffe();
        public List<HotDrinks> AllDrinksList
        {
            get => allDrinksList;
            set
            {
                allDrinksList = value;
                OnPropertyChanged("AllDrinksList");
            }
        }


        private List<Order> allOrdersList = DataWorker.GetAllOrders();
        public List<Order> AllOrdersList
        {
            get => allOrdersList;
            set
            {
                allOrdersList = value;
                OnPropertyChanged("AllOrdersList");
            }
        }

        private List<Cheque> allChequesList = DataWorker.GetAllCheques();
        public List<Cheque> AllChequesList
        {
            get => allChequesList;
            set
            {
                allChequesList = value;
                OnPropertyChanged("AllChequesList");
            }
        }

        private List<Dessert> allDessertsList = DataWorker.GetAllDessert();
        public List<Dessert> AllDessertsList
        {
            get => allDessertsList;
            set
            {
                allDessertsList = value;
                OnPropertyChanged("AllDessertsList");
            }
        }


        private List<Barista> allBaristas = DataWorker.GetAllBarista();
        public List<Barista> AllBaristaList
        {
            get => allBaristas;
            set
            {
                allBaristas = value;
                OnPropertyChanged("AllBaristaList");
            }
        }
        #endregion

        #region Command prop
        public string Login { get; set; }
        public string Password { get; set; }
        public string Position { get; set; }
        public string BaristaSalary { get; set; }
        public string BaristaFio { get; set; }
        public string BaristaRating { get; set; }
        public string BaristaLogin { get; set; }
        public string BaristaPassword { get; set; }

        public Barista LogInBarista { get; set; }
        public string DrinkName { get; set; }
        public string DrinkSize { get; set; }
        public string DrinkPrice { get; set; }
        public string DessertName { get; set; }
        public string DessertWeight { get; set; }
        public string DessertPrice { get; set; }
        public object SelectedItem { get; set; }

        public Dessert SelectedDessert { get; set; }
        public HotDrinks SelectedDrink { get; set; }
        public TabItem TabItem { get; set; }
        public DataGrid DataGrid { get; set; }
        #endregion


        private RelayCommand openWindow;
        public RelayCommand OpenWindow
        {
            get => openWindow ?? new RelayCommand(obj =>
            {
                Window window = obj as Window;
            DataWorker.FirstInitialize();

            if (Login == null || Password == null  || Login == "" || Password == "" || Position == null || Position == "")
                    MessageBox.Show("Заполните поля");
                else
                {
                    if (DataWorker.ValidateUser(Login, Password) && Position == "Бариста")
                    {
                        DataWorker.Barista = DataWorker.ReturnUserByLogin(Login);
                        WindowWorker.OpenWindow(new BaristaWindow());
                        WindowWorker.CloseWindow(window);
                    }
                    else if (Login == "admin" && Password == "admin" || Position == "Администратор")
                    {
                        WindowWorker.OpenWindow(new AdminMainWindow());
                        WindowWorker.CloseWindow(window);
                    }
                    else
                        MessageBox.Show("Заполните поля корректно");
                }
            });
        }


        private RelayCommand openAddBaristaWindow;
        public RelayCommand OpenAddBaristaWindow
        {
            get => openAddBaristaWindow ?? new RelayCommand(obj =>
            {
                WindowWorker.OpenWindow(new AddBaristaWindow());
            });
        }

        private RelayCommand openMainBaristaWindow;
        public RelayCommand OpenMainBaristaWindow
        {
            get => openAddBaristaWindow ?? new RelayCommand(obj =>
            {
                WindowWorker.OpenWindow(new BaristaMainWindow());
            });
        }

        private RelayCommand openAddDrinkWindow;

        public RelayCommand OpenAddDrinkWindow
        {
            get => openAddDrinkWindow ?? new RelayCommand(obj =>
            {
                WindowWorker.OpenWindow(new AddDrinkWindow());
            });
        }

        private RelayCommand openAddDesertWindow;

        public RelayCommand OpenAddDesertWindow
        {
            get => openAddDesertWindow ?? new RelayCommand(obj =>
            {
                WindowWorker.OpenWindow(new AddDesertWindow());
            });
        }

        private RelayCommand addNewBarista;

        public RelayCommand AddNewBarista
        {
            get => addNewBarista ?? new RelayCommand(obj =>
            {
                if (!string.IsNullOrEmpty(BaristaFio)
                    && !string.IsNullOrEmpty(BaristaRating)
                    && !string.IsNullOrEmpty(BaristaSalary)
                    && !string.IsNullOrEmpty(BaristaLogin)
                    && !string.IsNullOrEmpty(BaristaPassword)
                    && int.TryParse(BaristaRating, out int ratingResult)
                    && double.TryParse(BaristaSalary, out double salaryResult))
                {
                    if(DataWorker.AddNewBarista(BaristaFio, ratingResult, salaryResult, BaristaLogin, BaristaPassword))
                         MessageBox.Show("Сотрудник успешно добавлен");
                    else
                        MessageBox.Show("Сотрудник уже существует");
                }
                else
                {
                    MessageBox.Show("Корректно заполните поля");
                }
            });
        }


        private RelayCommand addNewDrink;
        public RelayCommand AddNewDrink
        {
            get => addNewDrink ?? new RelayCommand(obj =>
            {
                if (!string.IsNullOrEmpty(DrinkName)
                    && !string.IsNullOrEmpty(DrinkSize)
                    && !string.IsNullOrEmpty(DrinkPrice)
                    && double.TryParse(DrinkPrice, out double priceResult))
                {
                    if (DataWorker.AddNewDrink(DrinkName, DrinkSize, priceResult))
                        MessageBox.Show("Напиток успешно добавлен");
                    else
                        MessageBox.Show("Напиток уже существует");
                    
                }
                else
                {
                    MessageBox.Show("Корректно заполните поля");
                }
            });
        }

        private RelayCommand calculateFinalPrice;
        public RelayCommand CalculateFinalPrice
        {
            get => addNewDrink ?? new RelayCommand(obj =>
            {
                if (DataWorker.GetAllProdList().Count != 0)
                    MessageBox.Show("Итоговая цена " + DataWorker.CalculateFinalPrice() + " руб");
                else
                {
                    MessageBox.Show("Корзина пуста");
                }
            });
        }

        private RelayCommand addDessertToOrder;
        public RelayCommand AddDessertToOrder
        {
            get => addDessertToOrder ?? new RelayCommand(obj =>
            {
                Window window = obj as Window;
                if (SelectedDessert != null)
                {
                    DataWorker.AddNewProduct(SelectedDessert);
                    WindowWorker.Refresh(window);
                }
                else
                {
                    MessageBox.Show("Выберите дессерт из списка");
                }

            });
        }

        private RelayCommand addDrinkToOrder;
        public RelayCommand AddDrinkToOrder
        {
            get => addDrinkToOrder ?? new RelayCommand(obj =>
            {
                Window window = obj as Window;
                if (SelectedDrink != null)
                {
                    DataWorker.AddNewProduct(SelectedDrink);
                    WindowWorker.Refresh(window);
                }
                else
                {
                    MessageBox.Show("Выберите напиток из списка");
                }
            });
        }

        private RelayCommand addNewDesert;
        public RelayCommand AddNewDesert
        {
            get => addNewDesert ?? new RelayCommand(obj =>
            {
                if (!string.IsNullOrEmpty(DessertName)
                    && !string.IsNullOrEmpty(DessertPrice)
                    && !string.IsNullOrEmpty(DessertWeight)
                    && int.TryParse(DessertWeight, out int weightResult)
                    && double.TryParse(DessertPrice, out double priceResult))
                {
                    if (DataWorker.AddNewDesert(DessertName, weightResult, priceResult))
                        MessageBox.Show("Десерт успешно добавлен");
                    else
                        MessageBox.Show("Десерт уже существует");

                }
                else
                {
                    MessageBox.Show("Корректно заполните поля");
                }
            });
        }

        private RelayCommand clearProduct;
        public RelayCommand ClearProduct
        {
            get => clearProduct ?? new RelayCommand(obj =>
            {
                Window window = obj as Window;
                DataWorker.ClearProducst();
                WindowWorker.Refresh(window);
            });
        }

        private RelayCommand createNewOrder;
        public RelayCommand CreateNewOrder
        {
            get => createNewOrder ?? new RelayCommand(obj =>
            {
                Window window = obj as Window;
                if (DataWorker.Proucts.Count > 0)
                {
                    DataWorker.AddNewOrder(DataWorker.Barista);
                    WindowWorker.Refresh(window);
                }
                else
                {
                    MessageBox.Show("Внесите хотя бы 1 товар в корзину");
                }
               
               
            });
        }

        private RelayCommand deleteItemFromOrder;
        public RelayCommand DeleteItemFromOrder
        {
            get => deleteItemFromOrder ?? new RelayCommand(obj =>
            {
                Window window = obj as Window;
                string result = "Ничего не выбрано";

                    if (SelectedItem is Prouct selected)
                    {
                        DataWorker.RemoveProduct(selected);
                        WindowWorker.Refresh(window);
                    }
                    else
                        MessageBox.Show(result);
            });
        }

        private RelayCommand deleteItem;
        public RelayCommand DeleteItem
        {
            get => deleteItem ?? new RelayCommand(obj =>
            {
                Window window = obj as Window;
                string result = "Ничего не выбрано";
                if ((TabItem != null && SelectedItem != null))
                {
                    if (TabItem.Name == "CoffeTab")
                    {

                        result = DataWorker.DeleteDrink(SelectedItem as HotDrinks);
                        MessageBox.Show(result);
                        WindowWorker.Refresh(window);
                    }

                    if (TabItem.Name == "DessertTab")
                    {
                        result = DataWorker.DeleteDesser(SelectedItem as Dessert);
                        MessageBox.Show(result);
                        WindowWorker.Refresh(window);
                    }

                    if (TabItem.Name == "BaristaTab")
                    {
                        result = DataWorker.DeleteBarista(SelectedItem as Barista);
                        MessageBox.Show(result);
                        WindowWorker.Refresh(window);
                    }

                    if (TabItem.Name == "OrderTab")
                    {
                        result = DataWorker.DeleteOrder(SelectedItem as Order);
                        MessageBox.Show(result);
                        WindowWorker.Refresh(window);
                    }

                    if (TabItem.Name == "ChequeTab")
                    {
                        result = DataWorker.DeleteCheque(SelectedItem as Cheque);
                        MessageBox.Show(result);
                        WindowWorker.Refresh(window);
                    }
                }
                else
                    MessageBox.Show(result);
            });
        }


        private RelayCommand refresh;
        public RelayCommand Refresh
        {
            get => refresh ?? new RelayCommand(obj =>
            {
                Window window = obj as Window;
                WindowWorker.Refresh(window);
            });
        }


        private RelayCommand exit;
        public RelayCommand Exit
        {
            get => exit ?? new RelayCommand(obj =>
            {
                Window window = obj as Window;
                WindowWorker.OpenWindow(new MainWindow());
                WindowWorker.CloseWindow(window);
            });
        }

        public event PropertyChangedEventHandler PropertyChanged;

        [NotifyPropertyChangedInvocator]
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
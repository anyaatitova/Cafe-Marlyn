using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using WpfApp1.View;
using WpfApp1.View.AddWindow;


namespace WpfApp1.ViewModel.Workers
{
    public static class WindowWorker
    {
        public static void OpenWindow(Window window)
        {
            switch (window)
            {
                case AddBaristaWindow:
                case BaristaMainWindow:
                case AddDrinkWindow:
                case BaristaWindow:
                case MainWindow:
                case AddDesertWindow:
                case AdminMainWindow:
                    SetCenterPosAndOpen(window);
                    break;
            }
        }

        public static void CloseWindow(Window window)
        {
            window.Close();
        }

        public static void Refresh(Window window)
        {
            window.DataContext = null;
            window.DataContext = new DataManage();
        }

        private static void SetCenterPosAndOpen(Window window)
        {
            window.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            window.Show();
        }

    }
}

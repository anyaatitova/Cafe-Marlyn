   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel      WpfApp1.View.PrintForm   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  /	viewModelclr-namespace:WpfApp1.ViewModel  -   $	��qqq��  � Title$  Чек кафе MARILYN��$	��500��$	��400��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � DataContext "   WpfApp1.ViewModel.DataManage  .��� -   $��Print��$	��400��$	��450��.+��� $��Кафе MARILYN��$��Center=��� $3��-г.Минск ул.Карла Маркса, 3��$��Center=�$��0 15 0 0q��� $��10,32,10,10q�.+���  �� Orientation$ 
Horizontal=�$��
10 10 10 0q�.+��� $��Дата заказа:���� -    ��Name$
 Date���� $ 
Horizontal=�$��
10 10 10 0q�.+��� $��Время заказа:���� -   $
 Time���� $ 
Horizontal=�$��
10 10 10 0q�.+��� $��Бариста: ���� -   $ BaristaName���� $ 
Horizontal=�$��
10 10 10 0q�.+��� $��Товары: ���� -    ��Name$ Products���� $��Bottom=�$��20 20 20 40q�$ 
Horizontal=�.+��� $��
Цена: ���� -   $��Price���� $��Bottom=�$��20 20 20 20q�$ 
Horizontal=�.+��� $��Номер чека: ���� -   $��Numer��
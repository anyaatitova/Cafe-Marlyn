   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  5	   	       WpfApp1.View.PrintForm   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   /	viewModelclr-namespace:WpfApp1.ViewModel  5	   	   -   5        $	��qqq��5   	     � Title$  Чек кафе MARILYN��5   	   $	��500��6"   $	��400��6/      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � DataContext 5      "   WpfApp1.ViewModel.DataManage  5   
   .��5      � -   5        $��Print��5      $	��400��6   $	��450��6$   .+�5   
   �� $��Кафе MARILYN��6   $��Center=�6(   �� 5   
   $3��-г.Минск ул.Карла Маркса, 3��6   $��Center=�66   $��0 15 0 0q�6S   �� 5   
   $��10,32,10,10q�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��
10 10 10 0q�62   .+�5      �� $��Дата заказа:��6   �� 5      -   5         ��Name$
 Date��5      5       �� 5"      $ 
Horizontal=�6   $��
10 10 10 0q�62   .+�5#      �� $��Время заказа:��6   �� 5$      -   5        $
 Time��5$      5%      �� 5'      $ 
Horizontal=�6   $��
10 10 10 0q�62   .+�5(      �� $��Бариста: ��6   �� 5)      -   5        $ BaristaName��5)      5*      �� 5,      $ 
Horizontal=�6   $��
10 10 10 0q�62   .+�5-      �� $��Товары: ��6   �� 5.      -   5         ��Name$ Products��5.      5/      50      �� 52   
   $��Bottom=�6   $��20 20 20 40q�60   $ 
Horizontal=�6E   .+�53      �� $��
Цена: ��6   �� 54      -   5        $��Price��54      55      �� 57   
   $��Bottom=�6   $��20 20 20 20q�60   $ 
Horizontal=�6E   .+�58      �� $��Номер чека: ��6   �� 59      -   5        $��Numer��59      5:      5<      5=      
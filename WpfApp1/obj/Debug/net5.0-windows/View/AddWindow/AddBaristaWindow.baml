   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  5	   	   -    'WpfApp1.View.AddWindow.AddBaristaWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   /	viewModelclr-namespace:WpfApp1.ViewModel  5	   	   -   5        $��AddBaristaWin��5   	     � Title$C  =Добавить нового бариста кафе MARILYN��5   	   $	��750��66   $	��600��6C      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � DataContext 5      "   WpfApp1.ViewModel.DataManage  5   
   .��5      � ��5   
   �� 5       �� ImageSource$  /View/AddWindow/Фон.jpg��6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5       �� 5!      �� 5"      $��* �6   .+�5&   
   �� -   5         ��Name$ LoginBox��5(      $��0��5'      $��Center=�5)      $��Center=�5*      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 ФИО��5+       ! MaterialDesignOutlinedTextBox#��[ 5,      $��50��5.      $	��332��5/      
 � Cursor$
 IBeam��6   $��Century Gothic)�6-   $��Normal$�6I   
���   �
���������5-      �� *
BaristaFio+5/   p   �� 51   
   -   5        $ PriceBox��53      $��1��52      $��Center=�54      $��Center=�55      $	 Разряд��56      #��[ 57      $��50��59      $	��332��5:      $
 IBeam��6   $��Century Gothic)�6(   
���   �
���������58      �� *BaristaRating+5:   X   �� 5<   
   $��2��5=      $��Center=�5>      $��Center=�5?      $	 Зарплата��5@      #��[ 5A      $��50��5C      $	��332��5D      $
 IBeam��6   $��Century Gothic)�6(   
���   �
���������5B      �� *BaristaSalary+5D   X   �� 5F   
   $��3��5G      $��Center=�5H      $��Center=�5I      $	 
Логин��5J      #��[ 5K      $��50��5M      $	��332��5N      $
 IBeam��6   $��Century Gothic)�6(   
���   �
���������5L      �� *BaristaLogin+5N   X   �� 5P   
   $��4��5Q      $��Center=�5R      $��Center=�5S      $	 Пароль��5T      #��[ 5U      $��50��5W      $	��332��5X      $
 IBeam��6   $��Century Gothic)�6(   
���   �
���������5V      �� *BaristaPassword+5X   X   �� 5Z   
   $��5��6   $��Добавить��5[      $��Center=�5\      $��Center=�5]      $	��220��5^      $��50��6      MaterialDesignOutlinedButton#���  5a      $

 Hand��6H   $��Century Gothic)�6V   $
��Bold"�6r   $��20(�6�   ���	#FFB80808
���   �
���������5_      ��  �� ElementName$ AddBaristaWin����5`      �� *AddNewBarista+5a   �   5b      5c      
   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  5	   	   +    %WpfApp1.View.AddWindow.AddDrinkWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   /	viewModelclr-namespace:WpfApp1.ViewModel  5	   	   -   5        $��AdddDrinkWin��5   	     � Title$P  JДобавить новый горячий напиток кафе MARILYN��5   	   $	��750��6=   $	��600��6J      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � DataContext 5      "   WpfApp1.ViewModel.DataManage  5   
   .��5      � ��5   
   �� 5       �� ImageSource$  /View/AddWindow/Фон.jpg��6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5       $��* �6   .+�5$   
   �� -   5         ��Name$ LoginBox��5&      $��0��5%      $��Center=�5'      $��Center=�5(      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$%	 Название напитка��5)       ! MaterialDesignOutlinedTextBox#��[ 5*      $��50��5,      $	��332��5-      
 � Cursor$
 IBeam��6   $��Century Gothic)�6-   
���   �
���������5+      �� *	DrinkName+5-   ]   �� 5/   
   -   5         ��Name$ DeliveryType��55      $��1��5/      $��Center=�50      $��50��51      $	��332��52      -  'MaterialDesignThemes.Wpf.ComboBoxAssist   ShowSelectedItem$
 True��53      $!	 Размер напитка��54       " MaterialDesignOutlinedComboBox#��[ 57      $��Century Gothic)�6K   
�������
���   � �� Text 56      �� *	DrinkSize+.@�58      ��  $  MaterialDesignSubtitle1TextBlock#��[ 6   XS (30 мл)6^   �� 59      #��[ 6   S (60 мл)6]   �� 5:      #��[ 6   М (120 мл)6^   �� 5;      #��[ 6   L (300 мл)6^   �� 5<      #��[ 6   XL (400 мл)6_   �� 5=      #��[ 6   XXL (450 мл)6`   5>      �� 5@   
   $��2��5A      $��Center=�5B      $��Center=�5C      $	 Цена напитка��5D      #��[ 5E      $��50��5G      $	��332��5H      $
 IBeam��6   $��Century Gothic)�6(   
���   �
���������5F      �� *
DrinkPrice+5H   X   �� 5J   
   $��3��6   $��Добавить��5K      $��Center=�5L      $��Center=�5M      $	��220��5N      $��50��6      MaterialDesignOutlinedButton#���  5Q      $

 Hand��6H   ���	#FFB80808$��Century Gothic)�6m   $��22(�6�   $
��Bold"�6�   
���   �
���������5O      ��  �� ElementName$ AdddDrinkWin����5P      �� *AddNewDrink+5Q   �   5R      5S      
   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  5	   	   ,    &WpfApp1.View.AddWindow.AddDesertWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   /	viewModelclr-namespace:WpfApp1.ViewModel  5	   	   -   5        $��AddDesertWin��5   	     � Title$?  9Добавить новый десерт кафе MARILYN��5   	   $	��750��64   $	��600��6A      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � DataContext 5      "   WpfApp1.ViewModel.DataManage  5   
   .��5      � ��5   
   �� 5       �� ImageSource$  /View/AddWindow/Фон.jpg��6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5       $��* �6   .+�5$   
   �� -   5         ��Name$ LoginBox��5&      $��0��5%      $��Center=�5'      $��Center=�5(      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$%	 Название десерта��5)       ! MaterialDesignOutlinedTextBox#��[ 5*      $��50��5,      $	��332��5-      
 � Cursor$
 IBeam��6   
�������
���   �$��Century Gothic)�6T   ��5+      �� *DessertName+5-   T   �� 5/   
   -   5         ��Name$ DeliveryType��55      $��1��5/      $��Center=�50      $��50��51      $	��332��52      -  'MaterialDesignThemes.Wpf.ComboBoxAssist   ShowSelectedItem$
 True��53      $*	 $Вес десерта (граммы)��54       " MaterialDesignOutlinedComboBox#��[ 57      $��Century Gothic)�6K   
�������
���   � �� Text 56      �� *DessertWeight+.@�58      ��  $  MaterialDesignSubtitle1TextBlock#��[ 6   806V   �� 59      #��[ 6   906V   �� 5:      #��[ 6   1006W   �� 5;      #��[ 6   1406W   5<      �� 5>   
   $��2��5?      $��Center=�5@      $��Center=�5A      $	 Цена дессерта��5B      #��[ 5C      $��50��5E      $	��332��5F      $
 IBeam��6   $��Century Gothic)�6(   
�������
���   � �� 
CaretBrush
 �   ���5D      �� *DessertPrice+5F   k   �� 5H   
   $��3��6   $��Добавить��5I      $��Center=�5J      $��Center=�5K      $	��220��5L      $��50��6      MaterialDesignOutlinedButton#���  5O      $

 Hand��6H   $
��Bold"�6V   $��Century Gothic)�6h   $��22(�6�   
����������	#FFB80808��5M      ��  �� ElementName$ AddDesertWin����5N      �� *AddNewDesert+5O   �   5P      5Q      
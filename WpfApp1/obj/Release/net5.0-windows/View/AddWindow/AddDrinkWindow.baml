   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  +    %WpfApp1.View.AddWindow.AddDrinkWindow   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  /	viewModelclr-namespace:WpfApp1.ViewModel  -   $��AdddDrinkWin��  � Title$P  JДобавить новый горячий напиток кафе MARILYN��$	��750��$	��600��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � DataContext "   WpfApp1.ViewModel.DataManage  .��� ����  �� ImageSource$  /View/AddWindow/Фон.jpg�� � RowDefinitions �� �� �� �� $��* �.+��� -    ��Name$ LoginBox��$��0��$��Center=�$��Center=�)  #MaterialDesignThemes.Wpf.HintAssist	   Hint$%	 Название напитка�� ! MaterialDesignOutlinedTextBox#��[ $��50��$	��332��
 � Cursor$
 IBeam��$��Century Gothic)�
���   �
����������� *	DrinkName+�� -    ��Name$ DeliveryType��$��1��$��Center=�$��50��$	��332��-  'MaterialDesignThemes.Wpf.ComboBoxAssist   ShowSelectedItem$
 True��$!	 Размер напитка�� " MaterialDesignOutlinedComboBox#��[ $��Century Gothic)�
�������
���   � �� Text �� *	DrinkSize+.@���  $  MaterialDesignSubtitle1TextBlock#��[ XS (30 мл)�� #��[ S (60 мл)�� #��[ М (120 мл)�� #��[ L (300 мл)�� #��[ XL (400 мл)�� #��[ XXL (450 мл)�� $��2��$��Center=�$��Center=�$	 Цена напитка��#��[ $��50��$	��332��$
 IBeam��$��Century Gothic)�
���   �
����������� *
DrinkPrice+�� $��3��$��Добавить��$��Center=�$��Center=�$	��220��$��50��   MaterialDesignOutlinedButton#���  $

 Hand�����	#FFB80808$��Century Gothic)�$��22(�$
��Bold"�
���   �
�����������  �� ElementName$ AdddDrinkWin������ *AddNewDrink+
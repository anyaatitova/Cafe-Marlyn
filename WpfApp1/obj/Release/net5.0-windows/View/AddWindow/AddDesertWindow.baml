   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  ,    &WpfApp1.View.AddWindow.AddDesertWindow   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  /	viewModelclr-namespace:WpfApp1.ViewModel  -   $��AddDesertWin��  � Title$?  9Добавить новый десерт кафе MARILYN��$	��750��$	��600��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � DataContext "   WpfApp1.ViewModel.DataManage  .��� ����  �� ImageSource$  /View/AddWindow/Фон.jpg�� � RowDefinitions �� �� �� �� $��* �.+��� -    ��Name$ LoginBox��$��0��$��Center=�$��Center=�)  #MaterialDesignThemes.Wpf.HintAssist	   Hint$%	 Название десерта�� ! MaterialDesignOutlinedTextBox#��[ $��50��$	��332��
 � Cursor$
 IBeam��
�������
���   �$��Century Gothic)����� *DessertName+�� -    ��Name$ DeliveryType��$��1��$��Center=�$��50��$	��332��-  'MaterialDesignThemes.Wpf.ComboBoxAssist   ShowSelectedItem$
 True��$*	 $Вес десерта (граммы)�� " MaterialDesignOutlinedComboBox#��[ $��Century Gothic)�
�������
���   � �� Text �� *DessertWeight+.@���  $  MaterialDesignSubtitle1TextBlock#��[ 80�� #��[ 90�� #��[ 100�� #��[ 140�� $��2��$��Center=�$��Center=�$	 Цена дессерта��#��[ $��50��$	��332��$
 IBeam��$��Century Gothic)�
�������
���   � �� 
CaretBrush
 �   ����� *DessertPrice+�� $��3��$��Добавить��$��Center=�$��Center=�$	��220��$��50��   MaterialDesignOutlinedButton#���  $

 Hand��$
��Bold"�$��Century Gothic)�$��22(�
����������	#FFB80808����  �� ElementName$ AddDesertWin������ *AddNewDesert+
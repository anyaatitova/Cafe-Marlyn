   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  "    WpfApp1.View.AdminMainWindow   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  /	viewModelclr-namespace:WpfApp1.ViewModel  -   $��	AdminMain��  � Title$1  +Администрация кафе MARILYN��$	��800��$
��1300��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�����  �� ImageSource$0 */View/ФонАдминистратор.jpg�� � DataContext "   WpfApp1.ViewModel.DataManage  .���  � RowDefinitions �� $	��82* ��� $
��517* ��� $	��59* ��� $	��63* ��� $	��63* � � ColumnDefinitions �� $
��242* ��� $
��795* ��� $
��263* ����� $  /View/ФонАдмин.jpg��.+��� $��0,0,0,1q�$��2��$��3��	 �� SelectedItem	 �� *	TabItem+��Z� ��Z� .@��� -   $��CoffeTab��$��Напитки�� ' #MaterialDesignNavigationRailTabItem#���  $	��150��$��50��$��241,9,-241,-31q����	#DDFFFFFF
���   �$
��Bold"�
�������$��Century Gothic)�.��&   System.Windows.Controls.DataGrid  
   AutoGenerateColumns$
 False��$��238,0,260,0q�$	��479��$��Century Gothic)�$��Normal"����	#DDFFFFFF
���   �	 �� *SelectedItem+���� *AllDrinksList+��Z�    Columns 1  +MaterialDesignThemes.Wpf.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly$
 True��   Header$ Код��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 1  +System.Windows.Controls.DataGridBoundColumn   Binding ��  �� Path$ Id�  $
 True��$ Название��$	 250  �� $
 Name�  $
 True��$ Размер��$	 150  �� $
 Size�  $
 True��$ Цена��$	 150  �� $ Price��� -   $��
DessertTab��$��Дессерты��#���  $	��150��$��50��$��254,8,-254,-30q����	#DDFFFFFF
���   �$��Century Gothic)�$
��Bold"�
�������.��  $
 False��$��237,0,259,0q����	#DDFFFFFF
���   �$	��479��$��Normal"�	 �� *SelectedItem+���� *AllDessertsList+��Z�    $
 True��$ Код��$	 100  �� $ Id�  $
 True��$ Название��$	 250  �� $
 Name�  $
 True��$ Вес��$	 150  �� $ Weight�  $
 True��$ Цена��$	 150  �� $ Price��� -   $��
BaristaTab��$��Бариста��#���  $	��150��$��50��$��262,8,-262,-30q�
���   ����	#DDFFFFFF$��Century Gothic)�$
��Bold"�
�������.��  $
 False�����	#DDFFFFFF$��236,0,260,0q�$	��480��
���   �$��Normal"�	 �� *SelectedItem+���� *AllBaristaList+��Z�    $
 True��$ Код��$	 100  �� $ Id�  $
 True��$ ФИО��$	 250  �� $	 Fio�  $
 True��$ Разряд��$	 150  �� $ Rating�  $
 True��$ З/П��$	 150  �� $ Salary�  $
 True��$ 
Логин��$	 150  �� $ Login�  $
 True��$ Пароль��$	 150  �� $ Password��� -   $��OrderTab��$��Заказы��#���  $	��150��$��50��$��268,10,-268,-32q����	#DDFFFFFF
���   �
�������$
��Bold"�$��Century Gothic)�.��  $
 False��
���   �$��236,0,262,0q�$	��479�����	#DDFFFFFF$��Century Gothic)�$��Normal"�	 �� *SelectedItem+���� *AllOrdersList+��Z�    $
 True��$ Код��$	 100  �� $ Id�  $
 True��$ Дата заказа��$	 250  �� $ OrderDateTime�  $
 True��$ Номер чека��$	 150  �� $ ChequeId�  $
 True��$ ФИО бариста��$	 300  �� $# OrderCheque.ChequeBarista.Fio�  $
 True��$% Стоимость заказа��$	 300  �� $ Price��� -   $��	ChequeTab��$��Чеки��#���  $	��150��$��50��$��284,8,-284,-30q�
���   ����	#DDFFFFFF$
��Bold"�
�������$��Century Gothic)�.��  $
 False��
���   ����	#DDFFFFFF$��Century Gothic)�$��237,0,263,0q�$	��478��$��Normal"�	 �� *SelectedItem+���� *AllChequesList+��Z�    $
 True��$ Код��$	 100  �� $ Id�  $
 True��$* $Уникальный код чека��$	 250  �� $ 
UniqNumber�  $
 True��$ Бариста��$	 150  �� $ ChequeBarista.Fio��� $%��Добавить бариста��$	��Top=�$
��Left=�$	��176��$��40�� # MaterialDesignRaisedLightButton#���  $��
560,18,0,0q� � Cursor$
 Hand�� J� RenderTransformOrigin$ 0.491,0.538&����	#FFB80808���	#DDFFFFFF$��Century Gothic)�$
��Bold"�
���   �$��2��$��1������ *OpenAddBaristaWindow+�� $%��Добавить напиток��$	��Top=�$
��Left=�$	��176��$��40��#���  $
 Hand�����	#FFB80808
�������$��Century Gothic)�$
��Bold"�$��14(�
���   �$��2��$��	58,18,0,0q�$��1������ *OpenAddDrinkWindow+�� $%��Добавить дессерт��$	��Top=�$��Center=�$	��176��$��40��#���  $��0,17,0,0q�$
 Hand�����	#FFB80808���	#DDFFFFFF$��Century Gothic)�$
��Bold"�
���   �$��2��$��1������ *OpenAddDesertWindow+�� $��
Выйти��$	��Top=�$��40��#���@��$��
560,8,60,0q�$
 Hand��$ 0.559,0.425&�$��3�����	#FFFBFBFB���	#DD000000$��Century Gothic)�$
��Bold"�
���   �$��1������ *Exit+����  �� ElementName$ 	AdminMain���� $!��Удалить запись��$	��Top=�$��Center=�$	��176��$��40��#���  $��0,9,0,0q�$
 Hand��$ 0.491,1&�$��3��
���   �
����������	#DD000000$��Century Gothic)�$
��Bold"�$��1������ *
DeleteItem+���� $ 	AdminMain���� $��Обновить��$	��Top=�$
��Left=�$	��176��$��40��#���  $��58,8,0,0q�$
 Hand��$ 0.516,0.474&�$��3�����	#DD000000
�������$
��Bold"�$��Century Gothic)�
���   �$��1������ *	Refresh+���� $ 	AdminMain��
   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  $    WpfApp1.View.BaristaMainWindow   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  /	viewModelclr-namespace:WpfApp1.ViewModel  -   $��BaristaMain��  � Title$,  &Новый заказ кафе MARILYN��$	��800��$
��1300��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � DataContext "   WpfApp1.ViewModel.DataManage  .��� ����  �� ImageSource$% /View/ФонБариста1.jpg�� � ColumnDefinitions �� $
��651* ��� $
��210* ��� $
��439* � � RowDefinitions �� �� .+�&   System.Windows.Controls.DataGrid  	   AutoGenerateColumns$	 False��$��82,29,57,113q�
����������	#DDFFFFFF$��Century Gothic)�$
��Bold"�$��1��
 �� SelectedItem
 �� *SelectedDessert+���� *AllDessertsList+����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ Black�� � Offset$ 0.196Q�� $ White��$ 0Q�   Columns 1  +MaterialDesignThemes.Wpf.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly$
 True��   Header$ Название��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 1  +System.Windows.Controls.DataGridBoundColumn   Binding ��  �� Path$
 Name�  $
 True��$ Вес��$	 150  �� $ Weight�  $
 True��$ Цена��$	 150  �� $ Price�  $	 False��$��83,103,59,30q�$��Century Gothic)�$
��Bold"����	#DDFFFFFF
 �� *SelectedDrink+���� *AllDrinksList+���� $ 0.5,1&�$ 0.5,0&�.��� $ Black��$	 0.2Q�� $ White��$ 0Q�   $
 True��$ Название��$	 250  �� $
 Name�  $
 True��$ Размер��$	 150  �� $
 Size�  $
 True��$ Цена��$	 150  �� $ Price�  -   $��ProductDataGrid��$	 False��$��1��$��57,209,88,261q�$��2��
�������$
��Bold"�$��Century Gothic)�
�������$��2��
 �� *SelectedItem+���� *AllProuctsList+���� $ 0.5,1&�$ 0.5,0&�.��� $ Black��$ 0.159Q�� $ White��$ 0Q�� $ Black��$ 0.788Q�   $
 True��$ Название��$	 250  �� $
 Name�  $
 True��$ Размер��$	 150  �� $
 Size�  $
 True��$ Вес��$	 150  �� $ Weight�  $
 True��$ Цена��$	 150  �� $ Price��� $$��Добавить в заказ��$	��Top=�$
��Left=�$	��220��$��45�� # MaterialDesignRaisedLightButton#���  $��355,283,0,0q� � Cursor$
 Hand��$��1��
���   ����	#FFB80808���	#DDFFFFFF$��Century Gothic)�$
��Bold"�$��16(�����  �� ElementName$ BaristaMain������ *AddDessertToOrder+�� $$��Добавить в заказ��$	��Top=�$
��Left=�$	��220��$��45��#���  $��356,369,0,0q�$
 Hand��$��2��$��Century Gothic)�$
��Bold"����	#FFB80808���	#DDFFFFFF$��16(�
���   ����� *AddDrinkToOrder+���� $ BaristaMain���� $��1��$��Удалить товар��$��Bottom=�$
��Left=�$	��220��$��45��#���  $��
79,0,0,202q�$
 Hand��$��1�����	#FFB80808���	#DDFFFFFF$��Century Gothic)�$
��Bold"�$��16(�
���   �$��2������ *DeleteItemFromOrder+���� $ BaristaMain���� $��1��$��1��$<��6Расчитать итоговую стоимость��$��Bottom=�$
��Left=�$	��250��$��45��#���  $��
59,0,0,103q�$
 Hand�����	#FFB80808���	#DDFFFFFF$��Century Gothic)�$
��Bold"�$��12(�
���   �$��2������ *CalculateFinalPrice+���� $ BaristaMain���� $��1��$��2��$%��Очистить корзину��$��Bottom=�$��Right=�$	��220��$��45��#���  $��0,0,101,202q�$
 Hand�����	#FFB80808���	#DDFFFFFF$��Century Gothic)�$��16(�$
��Bold"�
���   ����� *ClearProduct+���� $ BaristaMain���� $��1��$��2��$!��Оформить заказ��$��Bottom=�$��Right=�$	��220��$��45��#���  $��
0,0,97,103q�$
 Hand�����	#FFB80808���	#DDFFFFFF$��Century Gothic)�$
��Bold"�$��16(�
���   ����� *CreateNewOrder+���� $ BaristaMain���� $$��Добавить в заказ��$
��Left=�$��
110,58,0,0q�$	��Top=����	#DDFFFFFF$��Century Gothic)�$��24(�$��Italic$�$
��Bold"�$��37��$	��221����Z� �� $��Список заказа��$
��Left=�$��
78,164,0,0q�$	��Top=����	#DDFFFFFF$��Century Gothic)�$��24(�$��Italic$�$
��Bold"�$��1��$��37��$	��191��$��2����Z� 
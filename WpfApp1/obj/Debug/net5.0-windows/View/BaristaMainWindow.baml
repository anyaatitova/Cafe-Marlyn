   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  5	   	   $    WpfApp1.View.BaristaMainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   /	viewModelclr-namespace:WpfApp1.ViewModel  5	   	   -   5        $��BaristaMain��5   	     � Title$,  &Новый заказ кафе MARILYN��5   	   $	��800��6*   $
��1300��67      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � DataContext 5      "   WpfApp1.ViewModel.DataManage  5   
   .��5      � ��5   
   �� 5       �� ImageSource$% /View/ФонБариста1.jpg��6    � ColumnDefinitions 5   
   �� 5      $
��651* �6   �� 5      $
��210* �6   �� 5      $
��439* �6    � RowDefinitions 5"   
   �� 5#      �� 5$      .+�5'   
   &   System.Windows.Controls.DataGrid  	   AutoGenerateColumns$	 False��6   $��82,18,57,124q�5)   ;   
����������	#DDFFFFFF$��Century Gothic)�6|   $
��Bold"�6�   $��1��6�   
 �� SelectedItem
 5(      �� *SelectedDessert+��5)      �� *AllDessertsList+��5*      �� 5+       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5,      �  � Color$ Black��6#    � Offset$ 0.196Q�61   � 5-      $ White��6#   $ 0Q�61   5.         Columns 50      1  +MaterialDesignThemes.Wpf.DataGridTextColumn  51      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly$
 True��52         Header$ Название��53         Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 54      1  +System.Windows.Controls.DataGridBoundColumn   Binding 55      ��  �� Path$
 Name�65     56      $
 True��57      $ Вес��58      $	 150 59       5:      �� $ Weight�67     5;      $
 True��5<      $ Цена��5=      $	 150 5>       5?      �� $ Price�66   5A        5C   
   $	 False��6   $��83,90,59,43q�5E   9   $��Century Gothic)�6N   $
��Bold"�6j   ���	#DDFFFFFF
 5D      �� *SelectedDrink+��5E      �� *AllDrinksList+��5F      �� 5G      $ 0.5,1&�6&   $ 0.5,0&�67   .��5H      � $ Black��6#   $	 0.2Q�61   � 5I      $ White��6#   $ 0Q�61   5J       5L        5M      $
 True��5N      $ Название��5O      $	 250 5P       5Q      �� $
 Name�65     5R      $
 True��5S      $ Размер��5T      $	 150 5U       5V      �� $
 Size�65     5W      $
 True��5X      $ Цена��5Y      $	 150 5Z       5[      �� $ Price�66   5]        5`   
   -   5        $��ProductDataGrid��5b      $	 False��5`      $��1��5a      $��57,209,88,261q�5d   :   $��2��6Q   
�������$
��Bold"�6u   $��Century Gothic)�6�   
�������$��2��6�   
 5c      �� *SelectedItem+��5d      �� *AllProuctsList+��5e      �� 5f      $ 0.5,1&�6&   $ 0.5,0&�67   .��5g      � $ Black��6#   $ 0.159Q�61   � 5h      $ White��6#   $ 0Q�61   � 5i      $ Black��6#   $ 0.788Q�61   5j       5l        5m      $
 True��5n      $ Название��5o      $	 250 5p       5q      �� $
 Name�65     5r      $
 True��5s      $ Размер��5t      $	 150 5u       5v      �� $
 Size�65     5w      $
 True��5x      $ Вес��5y      $	 150 5z       5{      �� $ Weight�67     5|      $
 True��5}      $ Цена��5~      $	 150 5       5�      �� $ Price�66   5�      �� 5�   
   $$��Добавить в заказ��5�      $	��Top=�5�      $
��Left=�5�      $	��220��5�      $��45��6    # MaterialDesignRaisedLightButton#���  5�      $��355,276,0,0q�6K    � Cursor$
 Hand��6`   $��1��6n   
���   ����	#FFB80808���	#DDFFFFFF$��Century Gothic)�6�   $
��Bold"�6�   $��16(�6�   ��5�      ��  �� ElementName$ BaristaMain����5�      �� *AddDessertToOrder+5�   �   �� 5�   
   $$��Добавить в заказ��5�      $	��Top=�5�      $
��Left=�5�      $	��220��5�      $��45��6   #���  5�      $��356,356,0,0q�6K   $
 Hand��6`   $��2��6n   $��Century Gothic)�6   $
��Bold"�6�   ���	#FFB80808���	#DDFFFFFF$��16(�6�   
���   ���5�      �� *AddDrinkToOrder+��5�      �� $ BaristaMain��5�   �   �� 5�   
   $��1��6   $��Удалить товар��5�      $��Bottom=�5�      $
��Left=�5�      $	��220��5�      $��45��6   #���  5�      $��
79,0,0,202q�6K   $
 Hand��6_   $��1��6m   ���	#FFB80808���	#DDFFFFFF$��Century Gothic)�6�   $
��Bold"�6�   $��16(�6�   
���   �$��2��6�   ��5�      �� *DeleteItemFromOrder+��5�      �� $ BaristaMain��5�   �   �� 5�   
   $��1��6   $��1��5�      $>��8Рассчитать итоговую стоимость��5�      $��Bottom=�5�      $
��Left=�5�      $	��250��5�      $��45��6   #���  5�      $��
59,0,0,103q�6K   $
 Hand��6_   ���	#FFB80808���	#DDFFFFFF$��Century Gothic)�6�   $
��Bold"�6�   $��12(�6�   
���   �$��2��6�   ��5�      �� *CalculateFinalPrice+��5�      �� $ BaristaMain��5�   �   �� 5�   
   $��1��6   $��2��5�      $%��Очистить корзину��5�      $��Bottom=�5�      $��Right=�5�      $	��220��5�      $��45��6   #���  5�      $��0,0,101,202q�6K   $
 Hand��6`   ���	#FFB80808���	#DDFFFFFF$��Century Gothic)�6�   $��16(�6�   $
��Bold"�6�   
���   ���5�      �� *ClearProduct+��5�      �� $ BaristaMain��5�   �   �� 5�   
   $��1��6   $��2��5�      $!��Оформить заказ��5�      $��Bottom=�5�      $��Right=�5�      $	��220��5�      $��45��6   #���  5�      $��
0,0,97,103q�6K   $
 Hand��6_   ���	#FFB80808���	#DDFFFFFF$��Century Gothic)�6�   $
��Bold"�6�   $��16(�6�   
���   ���5�      �� *CreateNewOrder+��5�      �� $ BaristaMain��5�   �   �� 5�   
   $$��Добавить в заказ��6   $
��Left=�6+   $��
110,52,0,0q�6F   $	��Top=�6Z   ���	#DDFFFFFF$��Century Gothic)�6�   $��24(�6�   $��Italic$�6�   $
��Bold"�6�   $��37��6�   $	��221��6�   ��6�   Z� 6�   �� 5�   
   $��Список заказа��6   $
��Left=�6(   $��
78,164,0,0q�6C   $	��Top=�6W   ���	#DDFFFFFF$��Century Gothic)�6�   $��24(�6�   $��Italic$�6�   $
��Bold"�6�   $��1��6�   $��37��6�   $	��191��6  $��2��6  ��6�   Z� 6  5�      5�      
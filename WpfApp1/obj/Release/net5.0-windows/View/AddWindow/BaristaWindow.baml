   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  *    $WpfApp1.View.AddWindow.BaristaWindow   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  /	viewModelclr-namespace:WpfApp1.ViewModel  -   $��BarWin��  � Title$?  9Рабочее место бариста кафе MARILYN��$	��750��$	��600��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�   MaterialDesignDarkBackground#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � DataContext "   WpfApp1.ViewModel.DataManage  .��� ����  �� ImageSource$  /View/AddWindow/Фон.jpg�� � RowDefinitions �� $
��195* ��� $
��172* �.+��� $��0��$!��Оформить заказ��$	��Top=�$��Center=�$	��300��$��65��   MaterialDesignOutlinedButton#���   � Cursor$
 Hand��$��	0,301,0,0q�$��Century Gothic)�$��22(�
�������$
��Bold"����	#FFB80808
���   ����� 	 �� ElementName$	 BarWin������ *OpenMainBaristaWindow+�� $��1��$��
Выйти��$	��Top=�$��Center=�$	��300��$��65��#���  $
 Hand��$��0,25,0,0q�$��22(�$��Century Gothic)�
�������$
��Bold"�
���   �
���   ����� $	 BarWin������ *Exit+�� $&�� Добро пожаловать!��$
��Left=�$��	287,0,0,0q�$��Center=����	#DDFFFFFF$��Century Gothic)�$��20(�$
��Bold"�$��33��$	��209���� $��Cafe MARILYN��$	��Top=�$��Center=� $  MaterialDesignHeadline2TextBlock#��[ $��45��$	��408��$��	0,140,0,0q����	#DDFFFFFF$��Engravers MT)�$��40(�
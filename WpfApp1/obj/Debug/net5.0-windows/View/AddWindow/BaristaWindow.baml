   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  5	   	   *    $WpfApp1.View.AddWindow.BaristaWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   /	viewModelclr-namespace:WpfApp1.ViewModel  5	   	   -   5        $��BarWin��5   	     � Title$?  9Рабочее место бариста кафе MARILYN��5   	   $	��750��64   $	��600��6A      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	      MaterialDesignDarkBackground#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � DataContext 5      "   WpfApp1.ViewModel.DataManage  5   
   .��5      � ��5   
   �� 5       �� ImageSource$  /View/AddWindow/Фон.jpg��6    � RowDefinitions 5   
   �� 5      $
��195* �6   �� 5      $
��172* �6   .+�5$   
   �� $��0��6   $!��Оформить заказ��5%      $	��Top=�5&      $��Center=�5'      $	��300��5(      $��65��6      MaterialDesignOutlinedButton#���  5+       � Cursor$
 Hand��6H   $��	0,301,0,0q�6V   $��Century Gothic)�6i   $��22(�6�   
�������$
��Bold"�6�   ���	#FFB80808
���   ���5)      �� 	 �� ElementName$	 BarWin����5*      �� *OpenMainBaristaWindow+5+   �   �� 5-   
   $��1��6   $��
Выйти��5.      $	��Top=�5/      $��Center=�50      $	��300��51      $��65��6   #���  54      $
 Hand��6H   $��0,25,0,0q�6V   $��22(�6h   $��Century Gothic)�6v   
�������$
��Bold"�6�   
���   �
���   ���52      �� $	 BarWin����53      �� *Exit+54   �   �� 55   
   $&�� Добро пожаловать!��6   $
��Left=�6,   $��	287,0,0,0q�6G   $��Center=�6Z   ���	#DDFFFFFF$��Century Gothic)�6�   $��20(�6�   $
��Bold"�6�   $��33��6�   $	��209��6�   �� 56   
   $��Cafe MARILYN��57      $	��Top=�58      $��Center=�59       $  MaterialDesignHeadline2TextBlock#��[ 5:      $��45��6G   $	��408��6S   $��	0,140,0,0q�6_   ���	#DDFFFFFF$��Engravers MT)�6�   $��40(�6�   5;      5<      
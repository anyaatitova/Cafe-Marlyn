   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  5	   	   !clr-namespace:WpfApp1WpfApp1  5
   	       WpfApp1.View.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   /	viewModelclr-namespace:WpfApp1.ViewModel  5	   	   #wpfApp1clr-namespace:WpfApp1  5
   	   -   5        $��	LogWindow��5   	     � Title$X  RАвторизация рабочего места бариста кафе MARILYN��5   	   $	��750��6A   $	��600��6N      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � DataContext 5      "   WpfApp1.ViewModel.DataManage  5   
   .��5      � ��5   
   �� 5       �� ImageSource$  /View/Курсовая.jpg��6   .+�5!   
   �� $��Cafe MARILYN��5"      $	��Top=�5#      $
��Left=�5$       $  MaterialDesignHeadline2TextBlock#��[ 5%      $��45��6N   $	��408��6Z   $��100,141,0,0q�6f   ���	#DDFFFFFF$��Engravers MT)�6�   $��40(�6�   �� 5'   
   -   5         ��Name$ LoginBox��5(      $	��Top=�5)      $��Center=�5*      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин��5+       ! MaterialDesignOutlinedTextBox#��[ 5,      $��48��5.      $	��340��5/      $��Century Gothic)�6   	 K� ZIndex$	 5��6:   
�������
 � Cursor$
 IBeam��6^   $��	0,355,0,0q�6m   ��5-      �� *Login+5/   m   �� 51   
   -   5         ��Name$ DeliveryType��57      $��Center=�52      $��52��53      $	��340��54      -  'MaterialDesignThemes.Wpf.ComboBoxAssist   ShowSelectedItem$
 True��55      $ Должность��56       " MaterialDesignOutlinedComboBox#��[ 59      
�������$��	0,277,0,0q�6^   $	��Top=�6q   $��Century Gothic)�6�    �� Text 58      �� *
Position+.@�5:      ��  $  MaterialDesignSubtitle1TextBlock#��[ 6   Администратор6a   �� 5;      #��[ 6   Бариста6[   5<      �� 5>   
   -   5        $ PasswordBox��5?      $	��Top=�5@      $��Center=�5A      $ Пароль��5B      #��[ 5C      $	��340��5D      $��48��5F      $
 IBeam��6   $��	0,436,0,0q�6-   $��Century Gothic)�6@   
���������5E      �� *
Password+5F   \   �� 5G   
   $��
Войти��5H      $	��Top=�5I      $��Center=�5J      $	��220��5K      $��50��6      MaterialDesignOutlinedButton#���  5M      $

 Hand��5N   D   $��	0,556,0,0q�6R   ���	#FFB80808$��Century Gothic)�6|   $��22(�6�   
�������$
��Bold"�6�   $��Normal$�6�   
���   ���5L      �� *
OpenWindow+��5N      ��  �� ElementName$ 	LogWindow��6�   �� 5O   
   $-��'Вход для сотрудников ��6   $
��Left=�60   $��265,177,0,0q�6K   $	��Top=�6`   ���	#DDFFFFFF$��Century Gothic)�6�   $��20(�6�   $
��Bold"�6�   $	��236��6�   $��34��6�   5P      5Q      
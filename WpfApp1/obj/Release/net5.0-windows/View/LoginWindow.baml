   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1.ViewModelWpfApp1.ViewModel  !clr-namespace:WpfApp1WpfApp1      WpfApp1.View.MainWindow   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.2.0.2581, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  /	viewModelclr-namespace:WpfApp1.ViewModel  #wpfApp1clr-namespace:WpfApp1  -   $��	LogWindow��  � Title$X  RАвторизация рабочего места бариста кафе MARILYN��$	��750��$	��600��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � DataContext "   WpfApp1.ViewModel.DataManage  .��� ����  �� ImageSource$  /View/Курсовая.jpg��.+��� $��Cafe MARILYN��$	��Top=�$
��Left=� $  MaterialDesignHeadline2TextBlock#��[ $��45��$	��408��$��100,141,0,0q����	#DDFFFFFF$��Engravers MT)�$��40(��� -    ��Name$ LoginBox��$	��Top=�$��Center=�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин�� ! MaterialDesignOutlinedTextBox#��[ $��48��$	��340��$��Century Gothic)�	 K� ZIndex$	 5��
�������
 � Cursor$
 IBeam��$��	0,355,0,0q����� *Login+�� -    ��Name$ DeliveryType��$��Center=�$��52��$	��340��-  'MaterialDesignThemes.Wpf.ComboBoxAssist   ShowSelectedItem$
 True��$ Должность�� " MaterialDesignOutlinedComboBox#��[ 
�������$��	0,277,0,0q�$	��Top=�$��Century Gothic)� �� Text �� *
Position+.@���  $  MaterialDesignSubtitle1TextBlock#��[ Администратор�� #��[ Бариста�� -   $ PasswordBox��$	��Top=�$��Center=�$ Пароль��#��[ $	��340��$��48��$
 IBeam��$��	0,436,0,0q�$��Century Gothic)�
����������� *
Password+�� $��
Войти��$	��Top=�$��Center=�$	��220��$��50��   MaterialDesignOutlinedButton#���  $

 Hand��$��	0,556,0,0q����	#FFB80808$��Century Gothic)�$��22(�
�������$
��Bold"�$��Normal$�
���   ����� *
OpenWindow+����  �� ElementName$ 	LogWindow���� $-��'Вход для сотрудников ��$
��Left=�$��265,177,0,0q�$	��Top=����	#DDFFFFFF$��Century Gothic)�$��20(�$
��Bold"�$	��236��$��34��
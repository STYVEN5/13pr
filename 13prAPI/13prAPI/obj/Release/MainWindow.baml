   M S B A M L   `   `   `  ����   13prAPI    _13prAPI.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � Title$  Cat Gallery��$	��600��$	��800��.���  � RowDefinitions �� $
��Auto ��� $��* �.+��� $��0�� �� Orientation$ 
Horizontal=�$��10q�.+��� -    ��Name$ 	SearchBox��$	��200��$��5q�$��Center=��� -   $��Обновить��$��10,0,0,0q�$
��10,5q��� -    ��Name$ 
StatusText��$��10,0,0,0q�$��Center=�
��������� -    ��Name$ CatsListView��$��1��$��Disabled=����� .R��� 
�������$��1q�$��5q� �� Padding$ 5q� �� CornerRadius$ 5��._��  � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $	��150��$	��150��$��UniformToFill=����� *Url+�� $��1��$��10,0,0,0q�.+��� $
��Bold"����� *	BreedName+�� $
��Wrap=�$��0,5,0,0q����� *	BreedInfo+�� $��0,5,0,0q�$��Italic$����� *Temperament+	 �� StringFormat$	 Характер: {0}���� $��0,5,0,0q����� *Origin+$%	 Происхождение: {0}������ .R�� 
 � Orientation$
 
Horizontal=�
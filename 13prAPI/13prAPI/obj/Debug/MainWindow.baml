   M S B A M L   `   `   `  ����  13prAPI    _13prAPI.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  Cat Gallery��5   	   $	��600��6   $	��800��6*   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6    �� Orientation$ 
Horizontal=�6"   $��10q�6;   .+�5      �� -   5         ��Name$ 	SearchBox��5      $	��200��6)   $��5q�65   $��Center=�5      5      �� 5      -   5        $��Обновить��5      $��10,0,0,0q�6(   $
��10,5q�5      6$   �� 5      -   5         ��Name$ 
StatusText��5      $��10,0,0,0q�6,   $��Center=�5      
�������63   5      �� 5   
   -   5         ��Name$ CatsListView��5      $��1��6)   $��Disabled=�5       ��5!      �� 5"      .R�5#      �� 
�������$��1q�65   $��5q�6I    �� Padding$ 5q�6T    �� CornerRadius$ 5��6`   ._�5$      �  � ColumnDefinitions 5%      �� 5&   "   $
��Auto �63   �� 5'   "   $��* �63   .+�5*      �� $	��150��6;   $	��150��6G   $��UniformToFill=�6T   ��6$   �� *Url+6T   �� 5,      $��1��6)   $��10,0,0,0q�69   .+�5-   "   �� $
��Bold"�6G   ��6,   �� *	BreedName+6G   �� 5.   "   $
��Wrap=�6G   $��0,5,0,0q�6[   ��6,   �� *	BreedInfo+6[   �� 5/   "   $��0,5,0,0q�50       $��Italic$�61   ��5/   ,   �� *Temperament+	 �� StringFormat$	 Характер: {0}��50   1   �� 51   "   $��0,5,0,0q�52       ��51   ,   �� *Origin+$%	 Происхождение: {0}��52       53      54      55      56      ��59      �� 5:      .R�5;      � 
 � Orientation$
 
Horizontal=�6    5<      5>      5@      5A      
   M S B A M L   `   `   `  ����L  HInventarioAlmacen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:InventarioAlmacen.PagesInventarioAlmacen.Pages  5      +    %InventarioAlmacen.Pages.PaginaMostrar   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:InventarioAlmacen.Pages     5        N� Title$  MOSTRAR DATOS��5
      .��5      � ���#f1f3f5 � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��MOSTRAR��5      $��18(�5      $��Center=�5      $��Center=�5      $��Quicksand Medium)�5      �� 5   
   $��0��5      $��0��5      $��2��5      $��40��5      $��15,5,5,5q�5      $��10q�5      $
��Left=�5      $��Return to Main Menu��5       $y�	Collapsed=�5!      ��5      �� *GoToMainMenu+5!      �� 5$   
   $��1��5%      ��. $
��Auto=�5'       �� SelectedIndex 5(      �� *SelectedTabIndex+��5)      �� 5*       �� 
TargetType" ��6"   .R�5+      �  5,      �� 5-      $
��Auto �6,   �� 5.      .+�50      �� $
��Auto=�6'   $��Disabled=�51   '   .��52      ��  ��Name$ HeaderPanel��53   !   $��0,4,0,0q�54   !    K� IsItemsHost . 55   !   56      �� 57       ��Name$ PART_SelectedContentHost��58      $��1��59      $��4q�5:      $��SelectedContent��5;      5<      5=      .@�5?      �� $��Producto��6   $��	Quicksand)�5@      $��14(�5A      #��� ��5B      .��5C      � $��1��6    5D      �� 5E      $
��Auto �6(   �� 5F      $
��Auto �6(   �� 5G      $��* �6(   �� 5H      $
��Auto �6(   �� 5I      $
��Auto �6(   �� 5J      $
��Auto �6(   .+�5L      �� $��0��5M      $��1��5N      $��Center=�5O      $��Center=�5P      $��Detalle Producto��5Q      $��16(�5R      $��	Quicksand)�5S      $
��Bold"�5T      �� 5U      $��1��5V      $��0,0,0,5q�5W      $��Center=�5X       �� Orientation$ 
Horizontal=�5Y      &   System.Windows.Controls.DataGrid  5Z      -   5          Name$ datagridProducto��5[      $��2��5\      $��2��5]      $��0,0,0,0q�5^      	   AutoGenerateColumns	 .  
�������$��1q�5c      
   CanUserAddRows
 .     CanUserDeleteRows .     
IsReadOnly .    RowHeaderWidth$ 0Q�5i         SelectionUnit$ FullRow=�5j      ��5a      Z�    Columns 5l      0  *System.Windows.Controls.DataGridTextColumn  5m      ,  &System.Windows.Controls.DataGridColumn   Header$ Codigo��5o   !      SortDirection$ 	AscendingX�5p   !   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5n   !   �� *
prodcodigo+5p   !     5q      $ Nombre��6P    61   �� *
prodnombre+6P     5r      $ Cantidad��6R    61   �� *prodcantidad+6R     5s      $ Descripcion��6U    61   �� *proddescripcion+6U     5t      $ Pecio��6P    61   �� *
prodprecio+6P     5u      $ Marca��6O    61   �� *	prodmarca+6O   5x      5z      5{      �� 5|      $��Vendedor��6   $��	Quicksand)�5}      $��14(�5~      #��� ��5      .��5�      � $��1��6    5�      �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   �� 5�      $��* �6(   �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   .+�5�      �� $��0��5�      $��1��5�      $��Center=�5�      $��Center=�5�      $��Detalle Vendedor��5�      $��16(�5�      $
��Bold"�5�      �� 5�      $��1��5�      $��1��5�      $��0,0,0,5q�5�      $��Center=�5�      $ 
Horizontal=�5�        5�      -   5        $ datagridVendedor��5�      $��2��5�      $��1��5�      	 .  
�������$��1q�5�      
 .   .   . $ 0Q�5�      $ FullRow=�5�      ��5�      Z�  5�        5�      $ Codigo��5�   !   $ 	AscendingX�5�   !    5�   !   �� *codvendedor+5�   !     5�      $ Nombre��6P    61   �� *
nmvendedor+6P     5�      $ Telefono��6P    61   �� *
tlvendedor+6P     5�      $ 	Direccion��6P    61   �� *
drvendedor+6P   5�      �� 5�      $��3��6#   ��60   �� *1/CurrentWeeklySalesReport.ItemTypeMoneyBreakdown+��5�      �� 5�      5�      5�      5�      5�      �� 5�      $��Cliente��6   $��14(�6'   $��	Quicksand)�5�      #��� ��5�      .��5�      � $��1��6    5�      �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   �� 5�      $��* �6(   �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   .+�5�      �� $��0��5�      $��1��5�      $��Center=�5�      $��Center=�5�      $��Detalle Cliente��5�      $��16(�5�      $
��Bold"�5�      �� 5�      $��1��5�      $��0,0,0,5q�5�      $��Center=�5�      $ 
Horizontal=�5�        5�      -   5        $ datagridCliente��5�      $��2��5�      $��2��5�      $��0,0,0,0q�5�      	 .  
�������$��1q�5�      
 .   .   . $ 0Q�5�      $ FullRow=�5�      ��5�      Z�  5�        5�      $ Codigo��5�   !   $ 	AscendingX�5�   !    5�   !   �� *	codclient+5�   !     5�      $ Nombre��6N    61   �� *
nmclient+6N     5�      $ Telefono��6N    61   �� *
tlclient+6N     5�      $ 	Direccion��6N    61   �� *
drclient+6N   5�      5�      5�      5�      5�      5�      
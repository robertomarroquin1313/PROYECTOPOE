   M S B A M L   `   `   `  ����L  HInventarioAlmacen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:InventarioAlmacen.PagesInventarioAlmacen.Pages  5      (    "InventarioAlmacen.Pages.editarprod   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:InventarioAlmacen.Pages     5        N� Title$  
editarprod��5      $	��650��6   .��5	      � ���#f1f3f5$��0,0,58.6,347.6q�6     � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��EDITAR DATOS��5      $��22(�5      $��Center=�5      $��Center=�5      $��Quicksand Medium)�5      �� 5   
   -   5         ��Name$ btn_Cancelar��5      $��0��5      $��0��5      $��2��5      $��Right=�5      ��.  $��Cancelar��5      $��	15,5,10,5q�5      $��10q�5      $��40��5      $	��100��5      $��16(�6   $��Inter)�5      ���	#FFB73A3A
���   �
�������5#      �� 5$   
   $��15,0,0,0q�6   $��1��5%       �� Orientation$ Vertical=�5&      .+�5'      �� $��Informacion de productos��6   $��0,0,10,0q�5(      $��20(�5)      $��Center=�5*      $��	Quicksand)�5+      $
��Bold"�5,      �� 5-      $ 
Horizontal=�6   .+�5.      �� $��Codigo:��6   $��0,0,0,0q�5/      $
��Bold"�50      $��16(�51      $��Center=�52      $��Leelawadee UI Semilight)�53      $��90��54      �� 55      -   5         ��Name$ txtCodigoProducto��58      $	��100��55      $��Center=�56      $��14(�57      $��0��59      {�.  6'   �� 5:      $��Nombre:��6   $��	180,0,0,0q�5;      $
��Bold"�5<      $��16(�5=      $��Center=�5>      $��Leelawadee UI Semilight)�5?      $��90��5@      �� 5A      -   5        $ txtNombreProducto��5A      $	��275��5B      $��Center=�5C      $��14(�5D      $��1��5E      5F      �� 5G      $ 
Horizontal=�6   $��0,5,0,0q�5H      .+�5I      �� $��	Cantidad:��6   $��0,0,0,0q�5J      $
��Bold"�5K      $��16(�5L      $��Center=�5M      $��Leelawadee UI Semilight)�5N      $��90��5O      �� 5P      -   5        $ txtCantidadProducto��5P      $	��100��5Q      $��2��5R      $��Center=�5S      $��14(�5T      �� 5U      $��Descripcion:��6   $��	180,0,0,0q�5V      $
��Bold"�5W      $��16(�5X      $��Center=�5Y      $��Leelawadee UI Semilight)�5Z      $��90��5[      �� 5\      -   5        $ txtDescripcionProducto��5\      $	��275��5]      $��2��5^      $��Center=�5_      $��14(�5`      5a      �� 5b      $ 
Horizontal=�6   $��0,5,0,0q�5c      .+�5d      �� $��	Precio $:��6   $��0,0,0,0q�5e      $
��Bold"�5f      $��16(�5g      $��Center=�5h      $��Leelawadee UI Semilight)�5i      $��90��5j      �� 5k      -   5        $ txtPrecioProducto��5k      $	��100��5l      $��2��5m      $��Center=�5n      $��14(�5o      �� 5p      $��Marca:��6   $��	180,0,0,0q�5q      $
��Bold"�5r      $��16(�5s      $��Center=�5t      $��Leelawadee UI Semilight)�5u      $��90��5v      �� 5w      -   5        $ txtProductoMarca��5w      $	��275��5x      $��2��5y      $��Center=�5z      $��14(�5{      5}      �� 5~      $��20��6   5      �� 5�      $ 
Horizontal=�6   $��0,5,0,0q�5�      .+�5�      �� $��	 producto��6   $��
525,0,10,0q�5�      $��14(�5�      $��Center=�5�      $��	Quicksand)�5�      $
��Bold"�5�      �� 5�      -   5        $ btn_editprod��5�      $��0��5�      $��0��5�      $��2��5�      $��Right=�5�      ��.  $��Guardar��5�      $��10,5,5,5q�5�      $��0q�5�      $��25��5�      $��75��5�      $��14(�6    $��Inter)�5�      ���	#FF4FB73A
���   �
�������5�   )   5�      5�      5�      5�      
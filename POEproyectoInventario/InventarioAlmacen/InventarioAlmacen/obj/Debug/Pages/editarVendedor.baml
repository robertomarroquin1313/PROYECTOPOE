   M S B A M L   `   `   `  ����L  HInventarioAlmacen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:InventarioAlmacen.PagesInventarioAlmacen.Pages  5      ,    &InventarioAlmacen.Pages.editarVendedor   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:InventarioAlmacen.Pages     5        N� Title$  editarVendedor��5	      .��5      � ���#f1f3f5 � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��EDITAR DATOS��5      $��22(�5      $��Center=�5      $��Center=�5      $��Quicksand Medium)�5      �� 5   
   -   5         ��Name$ btnCancelar��5      $��0��5      $��0��5      $��2��5      $��Right=�5      ��.  $��Cancelar��5      $��	15,5,10,5q�5      $��10q�5      $��40��5      $	��100��5       $��16(�6   $��Inter)�5!      ���	#FFB73A3A
���   �
�������5%      �� 5&   
   $��15,0,0,0q�6   $��1��5'       �� Orientation$ Vertical=�5(      .+�5+      �� $��Informacion de vendedor��6   $��	0,0,10,-5q�5,      $��20(�5-      $��Center=�5.      $��	Quicksand)�5/      $
��Bold"�50      �� 51      $ 
Horizontal=�6   $��0,5,0,0q�52      .+�53      �� $��Codigo:��6   $��0,0,0,0q�54      $
��Bold"�55      $��16(�56      $��Center=�57      $��Leelawadee UI Semilight)�58      $��90��59      �� 5:      -   5         ��Name$ txtVendedorCodigo��5:      $	��100��5;      $��Center=�5<      $��14(�5=      $��0��5>      {�.  6'   �� 5?      $��Nombre:��6   $��	150,0,0,0q�5@      $
��Bold"�5A      $��16(�5B      $��Center=�5C      $��Leelawadee UI Semilight)�5D      $��90��5E      �� 5F      -   5        $ txtVendedorNombre��5F      $	��275��5G      $��Center=�5H      $��14(�5I      $��1��5J      5K      �� 5L      $ 
Horizontal=�6   $��0,5,0,0q�5M      .+�5N      �� $��	Telefono:��6   $��0,0,0,0q�5O      $
��Bold"�5P      $��16(�5Q      $��Center=�5R      $��Leelawadee UI Semilight)�5S      $��90��5T      �� 5U      -   5        $ txtVendedorTel��5U      $	��100��5V      $��2��5W      $��Center=�5X      $��14(�5Y      �� 5Z      $��
Direccion:��6   $��	150,0,0,0q�5[      $
��Bold"�5\      $��16(�5]      $��Center=�5^      $��Leelawadee UI Semilight)�5_      $��90��5`      �� 5a      -   5        $ txtVendedorDireccion��5a      $	��275��5b      $��2��5c      $��Center=�5d      $��14(�5e      5f      �� 5g      $ 
Horizontal=�6   $��0,5,0,0q�5h      5i      �� 5j      $ 
Horizontal=�6   $��0,5,0,0q�5k      .+�5l      �� $��Nuevo vendedor��6   $��
522,0,10,0q�5m      $��14(�5n      $��Center=�5o      $��	Quicksand)�5p      $
��Bold"�5q      �� 5r      -   5        $ btnEditarVendedor��5r      $��0��5s      $��0��5t      $��2��5u      $��Right=�5v      ��.  $��Guardar��5x      $��10,5,5,5q�5y      $��0q�5z      $��25��5{      $��75��5|      $��14(�6    $��Inter)�5}      ���	#FF4FB73A
���   �
�������5   <   5�      �� 5�      
�������$��5��5�      $��10q�5�      5�      5�      5�      
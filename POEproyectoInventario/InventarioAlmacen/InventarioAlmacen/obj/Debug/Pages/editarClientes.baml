   M S B A M L   `   `   `  ����L  HInventarioAlmacen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:InventarioAlmacen.PagesInventarioAlmacen.Pages  5      ,    &InventarioAlmacen.Pages.editarClientes   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:InventarioAlmacen.Pages     5        N� Title$  editarClientes��5	      .��5      � ���#f1f3f5 � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��INGRESAR DATOS��5      $��22(�5      $��Center=�5      $��Center=�5      $��Quicksand Medium)�5      �� 5   
   -   5         ��Name$ btnCancelar��5      $��0��5      $��0��5      $��2��5      $��Right=�5      ��.  $��Cancelar��5      $��	15,5,10,5q�5      $��10q�5      $��40��5      $	��100��5       $��16(�6   $��Inter)�5!      ���	#FFB73A3A
���   �
�������5%      �� 5&   
   $��15,0,0,0q�6   $��1��5'       �� Orientation$ Vertical=�5(      .+�5*      �� $��Informacion de cliente��6   $��	0,0,10,-5q�5+      $��20(�5,      $��Center=�5-      $��	Quicksand)�5.      $
��Bold"�5/      �� 50      $ 
Horizontal=�6   $��0,5,0,0q�51      .+�52      �� $��Codigo:��6   $��0,0,0,0q�53      $
��Bold"�54      $��16(�55      $��Center=�56      $��Leelawadee UI Semilight)�57      $��90��58      �� 59      -   5         ��Name$ txtClienteCodigo��59      $	��100��5:      $��Center=�5;      $��14(�5<      $��0��5=      {�.  6'   �� 5>      $��Nombre:��6   $��	150,0,0,0q�5?      $
��Bold"�5@      $��16(�5A      $��Center=�5B      $��Leelawadee UI Semilight)�5C      $��90��5D      �� 5E      -   5        $ txtClienteNombre��5E      $	��275��5F      $��Center=�5G      $��14(�5H      $��1��5I      5J      �� 5K      $ 
Horizontal=�6   $��0,5,0,0q�5L      .+�5M      �� $��	Telefono:��6   $��0,0,0,0q�5N      $
��Bold"�5O      $��16(�5P      $��Center=�5Q      $��Leelawadee UI Semilight)�5R      $��90��5S      �� 5T      -   5        $ txtCLienteTel��5T      $	��100��5U      $��2��5V      $��Center=�5W      $��14(�5X      �� 5Y      $��
Direccion:��6   $��	150,0,0,0q�5Z      $
��Bold"�5[      $��16(�5\      $��Center=�5]      $��Leelawadee UI Semilight)�5^      $��90��5_      �� 5`      -   5        $ txtClienteDireccion��5`      $	��275��5a      $��2��5b      $��Center=�5c      $��14(�5d      5e      �� 5f      $ 
Horizontal=�6   $��0,5,0,0q�5g      5h      �� 5i      $ 
Horizontal=�6   $��0,10,0,0q�5j      .+�5k      �� $��Nuevo cliente��6   $��
542,0,10,0q�5l      $��14(�5m      $��Center=�5n      $��	Quicksand)�5o      $
��Bold"�5p      �� 5q      -   5        $ btnEditClientes��5q      $��0��5r      $��0��5s      $��2��5t      $��Right=�5u      ��.  $��Guardar��5w      $��10,5,5,5q�5x      $��0q�5y      $��25��5z      $��75��5{      $��14(�6    $��Inter)�5|      ���	#FF4FB73A
���   �
�������5~   <   5      �� 5�      
�������$��5��5�      $��10q�5�      5�      5�      5�      
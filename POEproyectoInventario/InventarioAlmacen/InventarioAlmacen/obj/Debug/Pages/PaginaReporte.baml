   M S B A M L   `   `   `  ����L  HInventarioAlmacen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:InventarioAlmacen.PagesInventarioAlmacen.Pages  5      h dSAPBusinessObjects.WPF.Viewer, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304tRclr-namespace:SAPBusinessObjects.WPF.Viewer;assembly=SAPBusinessObjects.WPF.ViewerSAPBusinessObjects.WPF.Viewer 5      +    %InventarioAlmacen.Pages.PaginaReporte   5      _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962ac _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:InventarioAlmacen.Pages     5      eViewerRclr-namespace:SAPBusinessObjects.WPF.Viewer;assembly=SAPBusinessObjects.WPF.Viewer     5        N� Title$  GENERAR REPORTE��5      .��5      � ���#f1f3f5 � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��5      $��0��5      $��2��5      $��40��5      $��15,5,5,5q�5      $��10q�5      $
��Left=�5      $��Return to Main Menu��5      $y�	Collapsed=�5      ��5      �� *GoToMainMenu+5      �� 5   
   $��0��5      $��0��5       $��2��5!      $��Center=�5"      $��Center=�5#      $��REPORTES��5$      $��22(�5%      $��Quicksand Medium)�6   $
��Bold"�69   �� 5&   
   $��1��5'      ��. $
��Auto=�5*       �� SelectedIndex 5+      �� *SelectedTabIndex+��5,      �� 5-       �� 
TargetType" ��6"   .R�5.      �  5/      �� 50      $
��Auto �6,   �� 51      .+�53      �� $
��Auto=�6'   $��Disabled=�54   '   .��55      ��  ��Name$ HeaderPanel��56   !   $��0,4,0,0q�57   !    K� IsItemsHost . 58   !   59      �� 5:       ��Name$ PART_SelectedContentHost��5;      $��1��5<      $��4q�5=      $��SelectedContent��5>      5?      5@      .@�5B      �� $��	Productos��6   $��	Quicksand)�5C      $��14(�5D      #��� ��5E      .��5F      � $��1��6    � ColumnDefinitions 5G      �� 5H      $
��137* �6+   �� 5I      $
��705* �6+    5K      �� 5L      $
��Auto �6(   �� 5M      $
��Auto �6(   �� 5N      $��* �6(   �� 5O      $
��Auto �6(   �� 5P      $
��Auto �6(   �� 5Q      $
��Auto �6(   .+�5S      �� $��0��5T      $��1��5U      $��Center=�5V      $��Center=�5W      $��Detalle Productos��5X      $��16(�5Y      $��	Quicksand)�6'   $
��Bold"�6>   $��189,0,326,0q�6P   �� 5Z      $��1��5[      $��284,0,421,5q�5\      $��Center=�5]       �� Orientation$ 
Horizontal=�5^      $��1��62   &   System.Windows.Controls.DataGrid  5`      -   5        	  Name$	 datagridProducto��5`      $��2��5a      $��3��5b      $��0,0,0,0q�5c      
   AutoGenerateColumns
 .  
�������$��1q�5h         CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    RowHeaderWidth$ 0Q�5n         SelectionUnit$ FullRow=�5o      ��5f      Z�    Columns 5q      0  *System.Windows.Controls.DataGridTextColumn  5r      ,  &System.Windows.Controls.DataGridColumn   Header$ Codigo��5t   !      SortDirection$ 	AscendingX�5u   !   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5s   !   �� *
prodcodigo+5u   !     5v      $ Nombre��6P    61   �� *
prodnombre+6P     5w      $ Cantidad��6R    61   �� *prodcantidad+6R     5x      $ Descripcion��6U    61   �� *proddescripcion+6U     5y      $ Pecio��6P    61   �� *
prodprecio+6P     5z      $ Marca��6O    61   �� *	prodmarca+6O   4  .System.Windows.Controls.DataGridTemplateColumn  5{         CellTemplate 5|   "   �� 5}   &   5   '   5�      5�      �� 5�      -   5        $��5��5�      $��1��5�      $	��150��5�      $��40��5�      $��209,5,346,5q�5�      $��10q�5�      $��Center=�5�      $��Reporte Productos��5�      #��� ��5�      ��5�      �� *ReporteVendedor+5�   f   5�      5�      �� 5�      $��Vendedor��6   $��	Quicksand)�5�      $��14(�5�      #��� ��5�      .��5�      � $��1��6    5�      �� 5�      $
��115* �6+   �� 5�      $
��306* �6+    5�      �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   �� 5�      $��* �6(   �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   .+�5�      �� $��0��5�      $��1��5�      $��Center=�5�      $��Center=�5�      $��Detalle Vendedor��5�      $��16(�5�      $
��Bold"�5�      $��122,0,352,0q�6+   �� 5�      $��1��5�      $��1��5�      $��191,0,421,5q�5�      $��Center=�5�      $ 
Horizontal=�5�        5�      -   5        $	 datagridVendedor��5�      $��2��5�      
 .  
�������$��1q�5�       .   .   . $ 0Q�5�      $ FullRow=�5�      $��2��61   ��5�      Z�  5�        5�      $ Codigo��5�   !   $ 	AscendingX�5�   !    5�   !   �� *codvendedor+5�   !     5�      $ Nombre��6P    61   �� *
nmvendedor+6P     5�      $ Telefono��6P    61   �� *
tlvendedor+6P     5�      $ 	Direccion��6P    61   �� *
drvendedor+6P     5�       5�   "   �� 5�   &   5�   '   5�      5�      �� 5�      -   5        $��5��5�      $��1��5�      $	��150��5�      $��40��5�      $��114,5,348,5q�5�      $��10q�5�      $��Center=�5�      $��Center=�5�      $��Reporte Vendedor��5�      #��� ��5�   �   ��5�      �� *ReporteVendedor+y�5�      �� *-+CurrentUser.Permissions.CanSaveReportsToPDF+    BooleanToVisibilityConverter �� 	Converter# [  6�   5�      5�      �� 5�      $��Cliente��6   $��14(�5�      $��	Quicksand)�5�      #��� ��5�      .��5�      � $��1��6    5�      �� 5�       5�      �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   �� 5�      $��* �6(   �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   �� 5�      $
��Auto �6(   .+�5�      �� $��Center=�5�      $��Center=�5�      $��Detalle Cliente��5�      $��16(�5�      $
��Bold"�5�      �� 5�      $��1��5�      $��0,0,0,5q�5�      $��Center=�5      $ 
Horizontal=�5       5     -   5        $	 datagridCliente��5     $��2��5     
 .  
�������$��1q�5	      .   .   . $ 0Q�5     $ FullRow=�5     ��5     Z�  5       5     $ Codigo��5  !   $ 	AscendingX�5  !    5  !   �� *	codclient+5  !     5     $ Nombre��6N    61   �� *
nmclient+6N     5     $ Telefono��6N    61   �� *
tlclient+6N     5     $ 	Direccion��6N    61   �� *
drclient+6N     5      5  "   �� 5  &   5  '   5      5"     �� 5%     -   5        $��5��5&     $	��150��5'     $��40��5(     $��0,6,0,4q�5)     $��10q�5*     $��Center=�5+     $��Reporte Cliente��5-     #��� ��50     {�5.     �� *CanGenerateDailyPDFReports+50  f   51     52     53     54     56     
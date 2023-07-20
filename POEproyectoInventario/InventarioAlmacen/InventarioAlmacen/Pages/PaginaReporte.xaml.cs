using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


/////////// PAGINA REPORTES//////////

namespace InventarioAlmacen.Pages
{    
    /// <summary>
    /// Interaction logic for PaginaReporte.xaml
    /// </summary>
    /// 

    public partial class PaginaReporte : Page
    {
        public PaginaReporte()
        {
            InitializeComponent();
           
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            
            NavigationService.Navigate(new ViewerProducto());            
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ViewerVendedor());
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ViewerCliente());
        }
    }
}


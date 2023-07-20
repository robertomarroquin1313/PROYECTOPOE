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

namespace InventarioAlmacen.Pages
{
    
    public partial class ViewerVendedor : Page
    {
        public ViewerVendedor()
        {
            InitializeComponent();
            Reportes.rptVendedor obj = new Reportes.rptVendedor();
            obj.Load("@rptVendedor.rep");
            viewervendedor.ViewerCore.ReportSource = obj;


        }

        private void btnCerrar_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PaginaReporte());
            
            Reportes.rptVendedor cerrar1 = new Reportes.rptVendedor();
            cerrar1.Close();
        }
    }
}
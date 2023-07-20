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
    /// <summary>
    /// Lógica de interacción para ViewerProducto.xaml
    /// </summary>
    public partial class ViewerProducto : Page
    {
        public ViewerProducto()
        {
            InitializeComponent();

            Reportes.rptProducto obj = new Reportes.rptProducto();
            obj.Load("@rptProducto.rep");
            viewerproducto.ViewerCore.ReportSource = obj;
        }

        private void btnCerrar_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PaginaReporte());

            Reportes.rptProducto cerrar = new Reportes.rptProducto();
            cerrar.Close();
        }
    }
}

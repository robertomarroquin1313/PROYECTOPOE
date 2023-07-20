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
    /// Lógica de interacción para ViewerCliente.xaml
    /// </summary>
    public partial class ViewerCliente : Page
    {
        public ViewerCliente()
        {
            InitializeComponent();
            Reportes.rptCliente obj = new Reportes.rptCliente();
            obj.Load("@rptCliente.rep");
            viewercliente.ViewerCore.ReportSource = obj;
        }

        private void btnCerrar_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PaginaReporte());

            Reportes.rptCliente cerrar1 = new Reportes.rptCliente();
            cerrar1.Close();
        }
    }
}

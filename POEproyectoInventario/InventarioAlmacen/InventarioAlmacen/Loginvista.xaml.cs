using InventarioAlmacen;
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

namespace InventarioAlmacen
{
    /// <summary>
    /// Interaction logic for Loginvista.xaml
    /// </summary>
    public partial class Loginvista : Window
    {
        public Loginvista()
        {
            InitializeComponent();
        }
        #region -BOTON INICIAR SESION
        private void btnIngresar_Click(object sender, RoutedEventArgs e)
        {
            Mainmenuvista mv = new Mainmenuvista();
            mv.Show();
            this.Close();
        }
        #endregion

        #region -BOTON SALIR APLICACION
        private void btnSalir_Click(object sender, RoutedEventArgs e)
        {
            App.Current.Shutdown();
        }
        #endregion

        #region METODO DRAG VENTANA
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
                this.DragMove();
        }
        #endregion

        

    }
}

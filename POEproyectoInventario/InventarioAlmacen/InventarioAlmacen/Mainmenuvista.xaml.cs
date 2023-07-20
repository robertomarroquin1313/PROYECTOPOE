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
using System.Windows.Threading;
using InventarioAlmacen;
using InventarioAlmacen.Pages;

namespace InventarioAlmacen
{
    /// <summary>
    /// Interaction logic for Mainmenuvista.xaml
    /// </summary>
    public partial class Mainmenuvista : Window
    {
        //collapsible sidebar
        DispatcherTimer timer;
        double panelWidth;
        bool hidden;

        public Mainmenuvista()
        {
            InitializeComponent();
            timer = new DispatcherTimer();
            timer.Interval = new TimeSpan(0, 0, 0, 0, 10);
            timer.Tick += Timer_Tick;
            panelWidth = sidePanel.Width;
        }

        #region METODO SIDEBAR COLLAPSIBLE
        private void Timer_Tick(object sender, EventArgs e)
        {
            if (hidden)
            {
                sidePanel.Width += 1;
                if (sidePanel.Width >= panelWidth)
                {
                    timer.Stop();
                    hidden = false;
                }
            }
            else
            {
                sidePanel.Width -= 1;
                if (sidePanel.Width <= 55)
                {
                    timer.Stop();
                    hidden = true;
                }
            }
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            timer.Start();
        }
        private void PanelHeader_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }
        #endregion

        #region METODO PARA SIDEBAR
        private void sidebar_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selected = sidebar.SelectedItem as NavButton;
            navframe.Navigate(selected.Navlink);           
        }
        #endregion

        #region -BOTON LOGOUT
        private void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            Loginvista lv = new Loginvista();
            lv.Show();
            this.Close();
        }


        #endregion

        private void NavButton_Selected(object sender, RoutedEventArgs e)
        {

        }

        private void NavButton_Selected_1(object sender, RoutedEventArgs e)
        {

        }
    }
}

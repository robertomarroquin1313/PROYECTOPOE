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
    /// Lógica de interacción para editarClientes.xaml
    /// </summary>
    public partial class editarClientes : Page
    {
        public int codclient = 0;
        public editarClientes(int id = 0)
        {
            this.codclient = id;
            InitializeComponent();


            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {

                //var Gprod = new Base_Datos.Productos_Detalle();

                var getClientes = db.Detalle_Cliente.Find(this.codclient);
                txtClienteCodigo.Text = getClientes.codclient.ToString();

                txtClienteNombre.Text = getClientes.drclient;
                txtCLienteTel.Text = getClientes.tlclient.ToString();
                txtClienteDireccion.Text = getClientes.drclient;
               

            }

        }


        void limpiarTexto()
        {
            txtClienteCodigo.Clear();
            txtClienteNombre.Clear();
            txtCLienteTel.Clear();
            txtClienteDireccion.Clear();
        }






        private void btnEditClientes_Click(object sender, RoutedEventArgs e)
        {
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {


                var editClientes = new Base_Datos.Detalle_Cliente();
                editClientes.codclient = int.Parse(txtClienteCodigo.Text);
                editClientes.nmclient = txtClienteNombre.Text;
                editClientes.drclient = txtClienteDireccion.Text;
                editClientes.tlclient = txtCLienteTel.Text;
                
                db.Entry(editClientes).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                limpiarTexto();

            }

        }

        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            limpiarTexto();  
        }
    }
}

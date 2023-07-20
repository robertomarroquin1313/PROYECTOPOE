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
    /// Lógica de interacción para editarVendedor.xaml
    /// </summary>
    public partial class editarVendedor : Page
    {
        public int codvendedor = 0;

        public editarVendedor(int id = 0)
        {
            this.codvendedor = id;
            InitializeComponent();


            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {

                //var Gprod = new Base_Datos.Productos_Detalle();

                var getvendedor = db.Detalle_Vendedor.Find(this.codvendedor);
                txtVendedorCodigo.Text = getvendedor.codvendedor.ToString();

                txtVendedorNombre.Text = getvendedor.nmvendedor;
                txtVendedorTel.Text = getvendedor.tlvendedor.ToString();
                txtVendedorDireccion.Text = getvendedor.drvendedor;
                

            }

        }

        void limpiarTexto()
        {
            txtVendedorCodigo.Clear();
            txtVendedorDireccion.Clear();
            txtVendedorNombre.Clear();
            txtVendedorTel.Clear();
        }

        private void btnEditarVendedor_Click(object sender, RoutedEventArgs e)
        {
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {


                var EdVendedor = new Base_Datos.Detalle_Vendedor();
                EdVendedor.codvendedor = int.Parse(txtVendedorCodigo.Text);
                EdVendedor.nmvendedor = txtVendedorNombre.Text;
                EdVendedor.tlvendedor = txtVendedorTel.Text;
                EdVendedor.drvendedor = txtVendedorDireccion.Text;
                
                db.Entry(EdVendedor).State = System.Data.Entity.EntityState.Modified;
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

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
    /// Interaction logic for PaginaNuevo.xaml
    /// </summary>
    public partial class PaginaNuevo : Page
    {
        public PaginaNuevo()
        {
            InitializeComponent();
        }
        #region METODO VACIAR DATOS EN TEXTBOX
        void limpiarTexto()
        {
            txtCodigoProducto.Clear();
            txtNombreProducto.Clear();
            txtDescripcionProducto.Clear();
            txtCantidadProducto.Clear();
            txtPrecioProducto.Clear();
            txtProductoMarca.Text = String.Empty;
            txtVendedorCodigo.Clear();
            txtVendedorNombre.Clear();
            txtVendedorTel.Clear();
            txtVendedorDireccion.Clear();
            txtClienteCodigo.Clear();
            txtClienteNombre.Clear();
            txtCLienteTel.Clear();
            txtClienteDireccion.Clear();
        }
        void limpiarTexto1()
        {
            txtCodigoProducto.Clear();
            txtNombreProducto.Clear();
            txtDescripcionProducto.Clear();
            txtCantidadProducto.Clear();
            txtPrecioProducto.Clear();
            txtProductoMarca.Text = String.Empty;
            
            
        }
        void limpiarTexto2()
        {
            txtVendedorCodigo.Clear();
            txtVendedorNombre.Clear();
            txtVendedorTel.Clear();
            txtVendedorDireccion.Clear();
        }
        void limpiarTexto3()
        {
            txtClienteCodigo.Clear();
            txtClienteNombre.Clear();
            txtCLienteTel.Clear();
            txtClienteDireccion.Clear();
        }
        #endregion


        #region -BOTON CANCELAR INGRESO DE DATOS
        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            limpiarTexto();
        }
        #endregion

        private void btnGuardarProducto_Click(object sender, RoutedEventArgs e)
        {
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                var Gprod = new Base_Datos.Productos_Detalle();
                Gprod.prodcodigo = int.Parse(txtCodigoProducto.Text);
                Gprod.prodnombre = txtNombreProducto.Text;
                Gprod.prodcantidad = int.Parse(txtCantidadProducto.Text);
                Gprod.proddescripcion = txtDescripcionProducto.Text;
                Gprod.prodprecio = decimal.Parse(txtPrecioProducto.Text);
                Gprod.prodmarca = txtProductoMarca.Text;
                db.Productos_Detalle.Add(Gprod);
                db.SaveChanges();
                limpiarTexto1();
            }

        }

        private void btnGuardarVendedor_Click(object sender, RoutedEventArgs e)
        {
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                var Gvendedor = new Base_Datos.Detalle_Vendedor();
                Gvendedor.codvendedor = int.Parse(txtVendedorCodigo.Text);
                Gvendedor.nmvendedor = txtVendedorNombre.Text;
                Gvendedor.tlvendedor = txtVendedorTel.Text;
                Gvendedor.drvendedor = txtVendedorTel.Text;
                db.Detalle_Vendedor.Add(Gvendedor);
                db.SaveChanges();
                limpiarTexto2();
            }
        }

        private void btnGuardarCliente_Click(object sender, RoutedEventArgs e)
        {
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                var Gclient = new Base_Datos.Detalle_Cliente();
                Gclient.codclient = int.Parse(txtClienteCodigo.Text);
                Gclient.nmclient = txtClienteNombre.Text;
                Gclient.tlclient = txtCLienteTel.Text;
                Gclient.drclient = txtClienteDireccion.Text;
      
                db.Detalle_Cliente.Add(Gclient);
                db.SaveChanges();
                limpiarTexto3();
            }
        }
    }
}

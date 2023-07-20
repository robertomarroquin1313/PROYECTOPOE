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

////////PAGINA EDITAR / ELIMINAR//////////
namespace InventarioAlmacen.Pages
{
    /// <summary>
    /// Interaction logic for PaginaEditar_Eliminar.xaml
    /// </summary>
    public partial class PaginaEditar_Eliminar : Page
    {
        
        public PaginaEditar_Eliminar()
        {
            InitializeComponent();
            VerProductosTabla();
            vervendedores();
            vercliente();
        }

        #region CLASE GET SET PARA LA TABLA
        public class VerProductoTabla
        {
            public int prodcodigo { get; set; }
            public string prodnombre { get; set; }
            public int prodcantidad { get; set; }
            public string proddescripcion { get; set; }
            public decimal prodprecio { get; set; }
            public string prodmarca { get; set; }
        }
        public class Vervendedores
        {
            public int codvendedor { get; set; }
            public string nmvendedor { get; set; }
            public string tlvendedor { get; set; }
            public string drvendedor { get; set; }
        }
        public class Verclientes
        {
            public int codclient { get; set; }
            public string nmclient { get; set; }

            public string tlclient { get; set; }

            public string drclient { get; set; }
        }
        #endregion

        #region METODO READ TABLA
        public void VerProductosTabla()
        {
            List<VerProductoTabla> LISTA = new List<VerProductoTabla>();
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                LISTA = (from datos in db.Productos_Detalle
                         select new VerProductoTabla
                         {
                             prodcodigo = datos.prodcodigo,
                             prodnombre = datos.prodnombre,
                             prodcantidad = datos.prodcantidad,
                             proddescripcion = datos.proddescripcion,
                             prodprecio = (decimal)datos.prodprecio,
                             prodmarca = datos.prodmarca
                         }).ToList();
            }
            datagridProducto.ItemsSource = LISTA;
        }
        public void vervendedores()
        {
            List<Vervendedores> LISTA = new List<Vervendedores>();
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                LISTA = (from datos in db.Detalle_Vendedor
                         select new Vervendedores
                         {
                             codvendedor = datos.codvendedor,
                             nmvendedor = datos.nmvendedor,
                             tlvendedor = datos.tlvendedor,
                             drvendedor = datos.tlvendedor



                         }).ToList();
            }
            datagridVendedor.ItemsSource = LISTA;


        }

        public void vercliente()
        {
            List<Verclientes> LISTA = new List<Verclientes>();
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                LISTA = (from datos in db.Detalle_Cliente
                         select new Verclientes
                         {
                             codclient = datos.codclient,
                             nmclient = datos.nmclient,
                             tlclient = datos.tlclient,
                             drclient = datos.drclient



                         }).ToList();
            }
            datagridCliente.ItemsSource = LISTA;

        }


        #endregion

        private void btnEliminarProd_Click(object sender, RoutedEventArgs e)
        {
            int id = (int)((Button)sender).CommandParameter;
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                var prodcodigo = db.Productos_Detalle.Find(id);
                db.Productos_Detalle.Remove(prodcodigo);
                db.SaveChanges();
            }
            VerProductosTabla();

        }

        private void btnEditarProd_Click(object sender, RoutedEventArgs e)
        {
            //NavigationService.Navigate(new editarprod());

            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                 int prodcodigo = (int)((Button)sender).CommandParameter;
                editarprod prodcod = new editarprod(prodcodigo);
               
                NavigationService.Navigate(new editarprod(prodcodigo));
                
            }
        }

        private void btnEliminarVend_Click(object sender, RoutedEventArgs e)
        {
            int id = (int)((Button)sender).CommandParameter;
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                var vencode = db.Detalle_Vendedor.Find(id);
                db.Detalle_Vendedor.Remove(vencode);
                db.SaveChanges();
            }
            vervendedores();
        }

        private void btnEditarVend_Click(object sender, RoutedEventArgs e)
        {


            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                int codvendedor = (int)((Button)sender).CommandParameter;
                editarVendedor prodcod = new editarVendedor(codvendedor);

                NavigationService.Navigate(new editarVendedor(codvendedor));

            }
        }

        private void btnEditarClient_Click(object sender, RoutedEventArgs e)
        {


            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                int codclient = (int)((Button)sender).CommandParameter;
                editarClientes prodcod = new editarClientes(codclient);

                NavigationService.Navigate(new editarClientes(codclient));

            }

        }

        private void btnEliminarClient_Click(object sender, RoutedEventArgs e)
        {
            int id = (int)((Button)sender).CommandParameter;
            using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
            {
                var codclient = db.Detalle_Cliente.Find(id);
                db.Detalle_Cliente.Remove(codclient);
                db.SaveChanges();
            }
            vercliente();
        }
    }
}

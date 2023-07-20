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
    /// Interaction logic for PaginaMostrar.xaml
    /// </summary>
    public partial class PaginaMostrar : Page
    {
        public PaginaMostrar()
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
                             drvendedor =datos.tlvendedor
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
                             codclient=datos.codclient,
                             nmclient= datos.nmclient,
                             tlclient = datos.tlclient,
                             drclient = datos.drclient
                         }).ToList();
            }
            datagridCliente.ItemsSource = LISTA;
        }
        #endregion
    }
}

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
    /// Interaction logic for editarprod.xaml
    /// </summary>
    public partial class editarprod : Page
    {
        public int prodcodigo = 0;
        
        public editarprod( int id=0)
           
        {
            this.prodcodigo = id;
            InitializeComponent();

            
                
                using (Base_Datos.PROYECTO_INVENTARIOEntities4 db = new Base_Datos.PROYECTO_INVENTARIOEntities4())
                {
                    
                    //var Gprod = new Base_Datos.Productos_Detalle();

                     var Gprod = db.Productos_Detalle.Find(this.prodcodigo);
                    txtCodigoProducto.Text = Gprod.prodcodigo.ToString();

                    txtNombreProducto.Text = Gprod.prodnombre;
                    txtCantidadProducto.Text = Gprod.prodcantidad.ToString();
                    txtDescripcionProducto.Text = Gprod.proddescripcion;
                    txtPrecioProducto.Text = Gprod.prodprecio.ToString();
                    txtProductoMarca.Text = Gprod.prodmarca;

                }
            
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
       

       

        

        private void btn_Cancelar_Click_1(object sender, RoutedEventArgs e)
        {
            limpiarTexto1();

        }

        private void btn_editprod_Click(object sender, RoutedEventArgs e)
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
                    db.Entry(Gprod).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    limpiarTexto1();
                
            }
        }
    }
    }


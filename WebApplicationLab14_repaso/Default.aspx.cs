using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;

namespace WebApplicationLab14_repaso
{
    public partial class _Default : Page
    {
        static List<DatoLibro> DatLib = new List<DatoLibro>();
        static List<IngresoLibros> IngLib = new List<IngresoLibros>(); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(DatLib);

            string archivo = Server.MapPath("Libros.json");

            System.IO.File.WriteAllText(archivo, json);
        }

        protected void ButtonIngreso_Click(object sender, EventArgs e)
        {
            DatoLibro Libros = new DatoLibro();
            Libros.CodProducto = TextBoxCodProducto.Text;
            Libros.NameProducto = TextBoxNameProduc.Text;
            Libros.DescriProducto = TextBoxDescProduc.Text;
            Libros.PrecioCompra = Convert.ToInt32(TextBoxPrecioCompra.Text);
            Libros.PrecioVenta = Convert.ToInt32(TextBoxPrecioVenta.Text);
            Libros.Editorial = TextBoxEditorial.Text;
            Libros.Categoria = TextBoxCategoria.Text;
            Libros.Autor = TextBoxAutor.Text;

            DatLib.Add(Libros);

            Guardar();
        }

        protected void ButtonIngresoLibros_Click(object sender, EventArgs e)
        {
            IngresoLibros LibrosIngreso = new IngresoLibros();
            LibrosIngreso.CodigoLibro = TextBoxCodProducto.Text;
            LibrosIngreso.NombreLibro = TextBoxNameProduc.Text;
            LibrosIngreso.DescripcionLibro = TextBoxDescProduc.Text;

            IngLib.Add(LibrosIngreso);

            GridView1.DataSource = IngLib;
            GridView1.DataBind();
        }
    }
}
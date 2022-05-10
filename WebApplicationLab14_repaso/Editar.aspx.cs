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
    public partial class Editar : System.Web.UI.Page
    {
        static List<DatoLibro> DatLib = new List<DatoLibro>();
        static string CodigoLibros;
        protected void Page_Load(object sender, EventArgs e)
        {
            Leer();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CodigoLibros = TextBoxCodigoLibroEditar.Text;
            bool disponible = false;
            foreach (var u in DatLib)
            {
                DatoLibro eliminar = DatLib.Find(c => c.CodProducto == CodigoLibros);

                if (eliminar != null)
                {
                    TextBoxNombreLibroEditar.Text = eliminar.NameProducto;
                    TextBoxDescripcionLibroEditar.Text = eliminar.DescriProducto;
                    disponible = true;

                }
            }

            if (!disponible)
            {
                Response.Write("<script>alert('El libro no se encuentra disponible')</script>");
                CodigoLibros = "";
            }
        }

        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(DatLib);

            string archivo = Server.MapPath("Libros.json");

            System.IO.File.WriteAllText(archivo, json);
        }

        private void Leer()
        {
            string archivo2 = Server.MapPath("Libros.json");
            StreamReader json1 = File.OpenText(archivo2);
            string json2 = json1.ReadToEnd();
            json1.Close();

            DatLib = JsonConvert.DeserializeObject<List<DatoLibro>>(json2);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (var u in DatLib)
            {
                int editarlibro = DatLib.FindIndex(c => c.CodProducto == CodigoLibros);

                if (editarlibro > -1)
                {
                    u.NameProducto = TextBoxNombreLibroEditar.Text;
                    u.DescriProducto = TextBoxDescripcionLibroEditar.Text;

                    Guardar();

                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplicationLab14_repaso
{
    public class DatoLibro
    {
        public string CodProducto { get; set; }
        public string NameProducto { get; set; }
        public string DescriProducto { get; set; }
        public int PrecioCompra { get; set; }
        public int PrecioVenta { get; set; }
        public string Editorial { get; set; }
        public string Categoria { get; set; }
        public string Autor { get; set; }
    }
}
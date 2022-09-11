using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CadastroProdutos.Models
{
    [Table("tblCategoriaProduto")]
    public class CategoriaProduto
    {
        public int Id { get; set; }

        [Display(Name = "Nome")]
        public String Nome { get; set; }

        [Display(Description = "Descricao")]
        public String Descricao { get; set; }

        [Display(Name = "Ativo")]
        public bool Ativo { get; set; }

        public List<ProdutoViewModel> Produtos { get; set; }

    }
}
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CadastroProdutos.Models
{
    public class ProdutoViewModel
    {
        public int? Id { get; set; }

        [Required(ErrorMessage = "O nome do produto é é de preenchimento obrigatório", AllowEmptyStrings = false)]
        public string Nome { get; set; }

        [Required(ErrorMessage = "A descrição do produto é de preenchimento obrigatório", AllowEmptyStrings = false)]
        public string Descricao { get; set; }

        [Required(ErrorMessage = "O campo ativo do produto é de preenchimento obrigatório", AllowEmptyStrings = false)]
        public bool Ativo { get; set; }

        [Required(ErrorMessage = "O campo Perecível do produto é de preenchimento obrigatório", AllowEmptyStrings = false)]
        public bool Perecivel { get; set; }

        [Required(ErrorMessage = "O campo categoria do produto é de preenchimento obrigatório", AllowEmptyStrings = false)]
        public int? CategoriaId { get; set; }
        public virtual CategoriaProduto Categoria { get; set; }
    }
}
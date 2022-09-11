using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CadastroProdutos.Models
{
    public class ProdutoDbContext : DbContext
    {
        public ProdutoDbContext() : base("name=principal")
        {
        }
        public DbSet<ProdutoViewModel> Produtos { get; set; }
        public DbSet<CategoriaProduto> Categorias { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ProdutoViewModel>().ToTable("tblProduto");
        }
    }
}
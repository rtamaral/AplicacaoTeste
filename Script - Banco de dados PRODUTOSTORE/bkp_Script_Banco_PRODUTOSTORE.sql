USE [PRODUTOSTORE]
GO
/****** Object:  Table [dbo].[tblCategoriaProduto]    Script Date: 11/09/2022 00:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategoriaProduto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](250) NULL,
	[Descricao] [varchar](250) NULL,
	[Ativo] [bit] NULL,
 CONSTRAINT [PK__tblCateg__3214EC07400D1B05] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduto]    Script Date: 11/09/2022 00:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](250) NULL,
	[Descricao] [varchar](250) NULL,
	[Ativo] [bit] NULL,
	[Perecivel] [bit] NULL,
	[CategoriaID] [int] NULL,
 CONSTRAINT [PK__tblProdu__3214EC07A2CBE0F6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCategoriaProduto] ON 

INSERT [dbo].[tblCategoriaProduto] ([Id], [Nome], [Descricao], [Ativo]) VALUES (1, N'Eletrônico', N'Eletrodomésticos', 1)
INSERT [dbo].[tblCategoriaProduto] ([Id], [Nome], [Descricao], [Ativo]) VALUES (2, N'Informática', N'Produtos para informática', 1)
INSERT [dbo].[tblCategoriaProduto] ([Id], [Nome], [Descricao], [Ativo]) VALUES (3, N'Celulares', N'Aparelhos e acessórios', 1)
INSERT [dbo].[tblCategoriaProduto] ([Id], [Nome], [Descricao], [Ativo]) VALUES (4, N'Moda', N'Artigos para vestuários em geral', 1)
INSERT [dbo].[tblCategoriaProduto] ([Id], [Nome], [Descricao], [Ativo]) VALUES (5, N'Livros', N'Livros', 1)
SET IDENTITY_INSERT [dbo].[tblCategoriaProduto] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduto] ON 

INSERT [dbo].[tblProduto] ([Id], [Nome], [Descricao], [Ativo], [Perecivel], [CategoriaID]) VALUES (1, N'Notebook', N'Notebook Dell', 1, 0, 2)
INSERT [dbo].[tblProduto] ([Id], [Nome], [Descricao], [Ativo], [Perecivel], [CategoriaID]) VALUES (2, N'Camisa Social', N'Vestuário', 1, 0, 4)
SET IDENTITY_INSERT [dbo].[tblProduto] OFF
GO
ALTER TABLE [dbo].[tblProduto]  WITH CHECK ADD  CONSTRAINT [FK__tblProdut__Categ__2B3F6F97] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[tblCategoriaProduto] ([Id])
GO
ALTER TABLE [dbo].[tblProduto] CHECK CONSTRAINT [FK__tblProdut__Categ__2B3F6F97]
GO

USE [alexia]
GO
/****** Object:  Table [dbo].[alumnes]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumnes](
	[id] [int] NOT NULL,
	[data_naixement] [date] NULL,
	[id_curs] [int] NOT NULL,
 CONSTRAINT [PK_alumnes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[avaluacions]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[avaluacions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codi] [varchar](50) NULL,
	[nom] [varchar](50) NULL,
 CONSTRAINT [PK_avaluacions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[avaluar]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avaluar](
	[id_alumne] [int] NOT NULL,
	[id_uf] [int] NOT NULL,
	[id_avaluacio] [int] NOT NULL,
	[nota] [float] NULL,
 CONSTRAINT [PK_avaluar] PRIMARY KEY CLUSTERED 
(
	[id_alumne] ASC,
	[id_uf] ASC,
	[id_avaluacio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cicles]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cicles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codi] [varchar](50) NOT NULL,
	[nom] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cicles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cursar]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cursar](
	[id_alumne] [int] NOT NULL,
	[id_uf] [int] NOT NULL,
 CONSTRAINT [PK_cursar_1] PRIMARY KEY CLUSTERED 
(
	[id_alumne] ASC,
	[id_uf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cursos]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cursos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codi] [varchar](50) NOT NULL,
	[nom] [varchar](100) NOT NULL,
	[id_cicle] [int] NOT NULL,
	[id_tutor] [int] NULL,
 CONSTRAINT [PK_cursos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[moduls_prof]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[moduls_prof](
	[id_curs] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codi] [varchar](50) NOT NULL,
	[nom] [varchar](50) NOT NULL,
	[hores] [int] NOT NULL,
	[hores_lliures] [int] NOT NULL,
	[id_professor] [int] NULL,
 CONSTRAINT [PK_moduls_prof] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[persones]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[persones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dni] [varchar](50) NOT NULL,
	[nom] [varchar](50) NOT NULL,
	[cognom1] [varchar](50) NOT NULL,
	[cognom2] [varchar](50) NULL,
	[telefon] [varchar](50) NULL,
	[correu] [varchar](50) NULL,
	[adreca] [varchar](100) NULL,
	[tipus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_persones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[professors]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[professors](
	[id] [int] NOT NULL,
	[nom] [varchar](50) NOT NULL,
 CONSTRAINT [PK_professors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ufs]    Script Date: 11/02/2015 10:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ufs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](100) NOT NULL,
	[id_modul_prof] [int] NOT NULL,
 CONSTRAINT [PK_ufs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cicles] ON 

INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (1, N'DAM', N'Desenvolupament d''Aplicacions Multiplataforma')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (2, N'ASIX', N'Administració Sistemes Informàtics en Xarxa')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (3, N'DAW', N'Desenvolupament d''Aplicacions Web')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (45, N'AVI', N'Agencia de viatges i esdeveniments')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (46, N'COM', N'Comerç')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (59, N'SEC', N'Secretariat')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (60, N'AUT', N'Automoción')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (62, N'ELE', N'Electrònica')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (63, N'GCM', N'Gestió comercial i marketing')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (64, N'CIN', N'Comerç internacional')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (65, N'AGR', N'Arts gràfiques')
INSERT [dbo].[cicles] ([id], [codi], [nom]) VALUES (66, N'BAT', N'Batxillerat')
SET IDENTITY_INSERT [dbo].[cicles] OFF
SET IDENTITY_INSERT [dbo].[cursos] ON 

INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (1, N'DAM1A', N'DAM1A - Desenvolupament d''Aplicacions Multiplataforma (Matí)', 1, 6)
INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (2, N'DAM2A', N'DAM2A - Desenvolupament d''Aplicacions Multiplataforma (Matí)', 1, 7)
INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (3, N'DAM1T', N'DAM1T - Desenvolupament d''Aplicacions Multiplataforma (Tarda)', 1, 13)
INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (4, N'DAM2T', N'DAM2T - Desenvolupament d''Aplicacions Multiplataforma (Tarda)', 1, 1)
INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (5, N'ASIX1A', N'ASIX1A - Aplicacions de Sistemes Informàtics en Xarxa  (Matí)', 2, 5)
INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (6, N'ASIX2A', N'ASIX2A - Aplicacions de Sistemes Informàtics en Xarxa  (Matí)', 2, 8)
INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (7, N'ASIX1T', N'ASIX1T - Aplicacions de Sistemes Informàtics en Xarxa (Tarda)', 2, 13)
INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (8, N'DAW1A', N'DAW1A - Desenvolupament d''Aplicacions Web (Matí)', 3, 5)
INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (63, N'DAW2A', N'DAW2A - Desenvolupament web (Matí)', 3, 4)
INSERT [dbo].[cursos] ([id], [codi], [nom], [id_cicle], [id_tutor]) VALUES (64, N'AVI1A', N'AVI1A - Agencia de viatges i esdeveniments', 45, NULL)
SET IDENTITY_INSERT [dbo].[cursos] OFF
SET IDENTITY_INSERT [dbo].[moduls_prof] ON 

INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (1, 1, N'MP03', N'Programació', 50, 25, 6)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (1, 2, N'MP02', N'Base de dades', 21, 0, 6)
SET IDENTITY_INSERT [dbo].[moduls_prof] OFF
SET IDENTITY_INSERT [dbo].[persones] ON 

INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (1, N'00000002B', N'Francisco', N'Fernández', N'Fernández', N'934444444', N'ffernandez@gmail.com', N'Regente Mendieta 14-20 4º3ª ESC A', N'Professor')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (4, N'00000001A', N'Antonio', N'Domingo', N'Alonso', N'', N'', N'', N'Professor')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (5, N'00000007G', N'Consuelo', N'Segura', N'Tello', N'', N'', N'', N'Professor')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (6, N'00000008H', N'Joan', N'Serrano', N'Herrera', N'', N'', N'', N'Professor')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (7, N'00000004D', N'Jose Luís', N'García', N'Mañas', N'', N'', N'', N'Professor')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (8, N'00000003C', N'Xavi', N'Galcerà', N'Margalef', N'', N'', N'', N'Professor')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (12, N'00000006F', N'Alex', N'Ríos', N'Jeréz', N'', N'', N'', N'Professor')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (13, N'00000005E', N'Urbano', N'Méndez', N'Rodríguez', N'', N'', N'', N'Professor')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (14, N'00000009I', N'Miguel', N'Sotorra', N'Matilla', N'', N'', N'', N'Professor')
SET IDENTITY_INSERT [dbo].[persones] OFF
INSERT [dbo].[professors] ([id], [nom]) VALUES (1, N'Fernández Fernández, Francisco')
INSERT [dbo].[professors] ([id], [nom]) VALUES (4, N'Domingo Alonso, Antonio')
INSERT [dbo].[professors] ([id], [nom]) VALUES (5, N'Segura Tello, Consuelo')
INSERT [dbo].[professors] ([id], [nom]) VALUES (6, N'Serrano Herrera, Joan')
INSERT [dbo].[professors] ([id], [nom]) VALUES (7, N'García Mañas, Jose Luís')
INSERT [dbo].[professors] ([id], [nom]) VALUES (8, N'Galcerà Margalef, Xavi')
INSERT [dbo].[professors] ([id], [nom]) VALUES (12, N'Ríos Jeréz, Alex')
INSERT [dbo].[professors] ([id], [nom]) VALUES (13, N'Méndez Rodríguez, Urbano')
INSERT [dbo].[professors] ([id], [nom]) VALUES (14, N'Sotorra Matilla, Miguel')
SET IDENTITY_INSERT [dbo].[ufs] ON 

INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (1, N'UF01 - Fsadsfdsfdsfsdf', 1)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (2, N'UF02 - LKLDKFLKDSLFKDSLÑF', 1)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (3, N'UF03 - KFJGKJFDKGJKFLD', 1)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (4, N'UF01 - KFJKDSJFKJDSKL', 2)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (5, N'UF02 - DFKDSJKLFJDKLS', 2)
SET IDENTITY_INSERT [dbo].[ufs] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_cursos_codi]    Script Date: 11/02/2015 10:07:44 ******/
ALTER TABLE [dbo].[cursos] ADD  CONSTRAINT [UK_cursos_codi] UNIQUE NONCLUSTERED 
(
	[codi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_cursos_nom]    Script Date: 11/02/2015 10:07:44 ******/
ALTER TABLE [dbo].[cursos] ADD  CONSTRAINT [UK_cursos_nom] UNIQUE NONCLUSTERED 
(
	[nom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_persones_dni]    Script Date: 11/02/2015 10:07:44 ******/
ALTER TABLE [dbo].[persones] ADD  CONSTRAINT [UK_persones_dni] UNIQUE NONCLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[alumnes]  WITH CHECK ADD  CONSTRAINT [FK_alumnes_cursos] FOREIGN KEY([id_curs])
REFERENCES [dbo].[cursos] ([id])
GO
ALTER TABLE [dbo].[alumnes] CHECK CONSTRAINT [FK_alumnes_cursos]
GO
ALTER TABLE [dbo].[alumnes]  WITH CHECK ADD  CONSTRAINT [FK_alumnes_persones] FOREIGN KEY([id])
REFERENCES [dbo].[persones] ([id])
GO
ALTER TABLE [dbo].[alumnes] CHECK CONSTRAINT [FK_alumnes_persones]
GO
ALTER TABLE [dbo].[avaluar]  WITH CHECK ADD  CONSTRAINT [FK_avaluar_alumnes] FOREIGN KEY([id_alumne])
REFERENCES [dbo].[alumnes] ([id])
GO
ALTER TABLE [dbo].[avaluar] CHECK CONSTRAINT [FK_avaluar_alumnes]
GO
ALTER TABLE [dbo].[avaluar]  WITH CHECK ADD  CONSTRAINT [FK_avaluar_avaluacions] FOREIGN KEY([id_avaluacio])
REFERENCES [dbo].[avaluacions] ([id])
GO
ALTER TABLE [dbo].[avaluar] CHECK CONSTRAINT [FK_avaluar_avaluacions]
GO
ALTER TABLE [dbo].[avaluar]  WITH CHECK ADD  CONSTRAINT [FK_avaluar_ufs] FOREIGN KEY([id_uf])
REFERENCES [dbo].[ufs] ([id])
GO
ALTER TABLE [dbo].[avaluar] CHECK CONSTRAINT [FK_avaluar_ufs]
GO
ALTER TABLE [dbo].[cursar]  WITH CHECK ADD  CONSTRAINT [FK_cursar_alumnes] FOREIGN KEY([id_alumne])
REFERENCES [dbo].[alumnes] ([id])
GO
ALTER TABLE [dbo].[cursar] CHECK CONSTRAINT [FK_cursar_alumnes]
GO
ALTER TABLE [dbo].[cursar]  WITH CHECK ADD  CONSTRAINT [FK_cursar_ufs] FOREIGN KEY([id_uf])
REFERENCES [dbo].[ufs] ([id])
GO
ALTER TABLE [dbo].[cursar] CHECK CONSTRAINT [FK_cursar_ufs]
GO
ALTER TABLE [dbo].[cursos]  WITH CHECK ADD  CONSTRAINT [FK_cursos_cicles] FOREIGN KEY([id_cicle])
REFERENCES [dbo].[cicles] ([id])
GO
ALTER TABLE [dbo].[cursos] CHECK CONSTRAINT [FK_cursos_cicles]
GO
ALTER TABLE [dbo].[cursos]  WITH CHECK ADD  CONSTRAINT [FK_cursos_professors] FOREIGN KEY([id_tutor])
REFERENCES [dbo].[professors] ([id])
GO
ALTER TABLE [dbo].[cursos] CHECK CONSTRAINT [FK_cursos_professors]
GO
ALTER TABLE [dbo].[moduls_prof]  WITH CHECK ADD  CONSTRAINT [FK_moduls_prof_cursos] FOREIGN KEY([id_curs])
REFERENCES [dbo].[cursos] ([id])
GO
ALTER TABLE [dbo].[moduls_prof] CHECK CONSTRAINT [FK_moduls_prof_cursos]
GO
ALTER TABLE [dbo].[moduls_prof]  WITH CHECK ADD  CONSTRAINT [FK_moduls_prof_professors] FOREIGN KEY([id_professor])
REFERENCES [dbo].[professors] ([id])
GO
ALTER TABLE [dbo].[moduls_prof] CHECK CONSTRAINT [FK_moduls_prof_professors]
GO
ALTER TABLE [dbo].[professors]  WITH CHECK ADD  CONSTRAINT [FK_professors_professors] FOREIGN KEY([id])
REFERENCES [dbo].[persones] ([id])
GO
ALTER TABLE [dbo].[professors] CHECK CONSTRAINT [FK_professors_professors]
GO
ALTER TABLE [dbo].[ufs]  WITH CHECK ADD  CONSTRAINT [FK_ufs_moduls_prof] FOREIGN KEY([id_modul_prof])
REFERENCES [dbo].[moduls_prof] ([id])
GO
ALTER TABLE [dbo].[ufs] CHECK CONSTRAINT [FK_ufs_moduls_prof]
GO

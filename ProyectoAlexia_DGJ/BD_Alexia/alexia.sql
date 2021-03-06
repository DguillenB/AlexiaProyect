USE [alexia]
GO
/****** Object:  Table [dbo].[alumnes]    Script Date: 25/02/2015 17:10:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumnes](
	[id] [int] NOT NULL,
	[data_naixement] [date] NULL,
	[id_curs] [int] NULL,
 CONSTRAINT [PK_alumnes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[avaluacions]    Script Date: 25/02/2015 17:10:53 ******/
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
/****** Object:  Table [dbo].[avaluar]    Script Date: 25/02/2015 17:10:53 ******/
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
/****** Object:  Table [dbo].[cicles]    Script Date: 25/02/2015 17:10:53 ******/
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
/****** Object:  Table [dbo].[cursar]    Script Date: 25/02/2015 17:10:53 ******/
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
/****** Object:  Table [dbo].[cursos]    Script Date: 25/02/2015 17:10:53 ******/
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
/****** Object:  Table [dbo].[moduls_prof]    Script Date: 25/02/2015 17:10:53 ******/
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
/****** Object:  Table [dbo].[persones]    Script Date: 25/02/2015 17:10:53 ******/
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
/****** Object:  Table [dbo].[professors]    Script Date: 25/02/2015 17:10:53 ******/
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
/****** Object:  Table [dbo].[ufs]    Script Date: 25/02/2015 17:10:53 ******/
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
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (15, NULL, NULL)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (16, NULL, NULL)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (17, NULL, NULL)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (75, NULL, 1)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (76, NULL, 1)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (77, NULL, 1)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (78, NULL, 2)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (79, NULL, 2)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (80, NULL, 2)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (81, NULL, 3)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (82, NULL, 3)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (83, NULL, 3)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (84, NULL, 4)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (85, NULL, 4)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (86, NULL, 4)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (87, NULL, 5)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (88, NULL, 5)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (89, NULL, 5)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (90, NULL, 6)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (91, NULL, 6)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (92, NULL, 6)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (93, NULL, 7)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (94, NULL, 7)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (95, NULL, 7)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (96, NULL, 8)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (97, NULL, 8)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (98, NULL, 8)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (99, NULL, 63)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (100, NULL, 63)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (101, NULL, 63)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (102, NULL, 63)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (103, NULL, 63)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (104, NULL, 63)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (105, NULL, 63)
INSERT [dbo].[alumnes] ([id], [data_naixement], [id_curs]) VALUES (106, NULL, 63)
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
INSERT [dbo].[cursar] ([id_alumne], [id_uf]) VALUES (76, 3)
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
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (1, 4, N'MP01', N'Sistemes Informàtics', 66, 33, 4)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (1, 6, N'MP04', N'Llenguatge de Marques', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 7, N'MP06', N'Accés a Dades', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 29, N'MP05', N'Entorns de Desenvolupament', 66, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 30, N'MP07', N'Desenvolupament d’interfícies', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 31, N'MP08', N'Programació multimèdia i dispositius mòbils', 99, 99, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 32, N'MP09', N'Programació de serveis i processos', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 33, N'MP10', N'Sistemes de gestió empresarial', 66, 33, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (1, 34, N'MP11', N'Formació i orientació laboral', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (1, 35, N'MP12', N'Empresa i iniciativa emprenedora', 66, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 36, N'MP13', N'Projecte DAM', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 37, N'MP14', N'Formació centres de treball', 317, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (5, 38, N'MP01', N'Implantació de sistemes operatius', 198, 33, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (5, 39, N'MP02', N'Gestió de bases de dades', 132, 33, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (5, 40, N'MP03', N'Programació bàsica', 165, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (5, 41, N'MP04', N'Llenguatge de Marques', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 42, N'MP05', N'Fonaments de maquinari', 66, 33, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 43, N'MP06', N'Administració de sistemes operatius', 99, 33, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 44, N'MP07', N'Planificació i administració de xarxes', 132, 33, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 45, N'MP08', N'Serveis de xarxa i Internet', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 46, N'MP09', N'Implantació d''aplicacions web', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 47, N'MP10', N'Administració SGBD', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 48, N'MP11', N'Seguretat i alta disponibilitat', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 49, N'MP12', N'Formació i orientació laboral', 99, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 50, N'MP13', N'Empresa i iniciativa emprenedora', 66, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 51, N'MP14', N'Projecte ASIX', 66, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (6, 52, N'MP15', N'Formació en centres de treball', 317, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 53, N'MP02', N'Base de dades', 33, 0, NULL)
INSERT [dbo].[moduls_prof] ([id_curs], [id], [codi], [nom], [hores], [hores_lliures], [id_professor]) VALUES (2, 54, N'MP03', N'Programació', 99, 0, NULL)
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
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (15, N'10000001A', N'Sergio', N'Cazorla', N'Ruíz', NULL, NULL, NULL, N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (16, N'10000002C', N'Mario', N'Fernández', N'Varela', NULL, NULL, NULL, N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (17, N'10000003S', N'Isabel', N'Varela', N'Campos', NULL, NULL, NULL, N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (75, N'10000004S', N'DAW2A-Eduard', N'Alberdi', N'Marín', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (76, N'10000005D', N'DAW2A-Sergio', N'Andrés', N'Ruiz', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (77, N'10000006C', N'DAW2A-Enric', N'Arandes', N'Gabarró', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (78, N'10000007T', N'DAW2A-Marçal', N'Bordoy', N'Fábregas', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (79, N'10000008F', N'DAW2A-Oriol', N'Cabré', N'Muñoz', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (80, N'10000009E', N'DAW2A-Josep Mª', N'Cao', N'García', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (81, N'10000010U', N'DAW2A-Guillem', N'Cardús', N'Botella', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (82, N'10000011B', N'DAW2A-Adrián', N'Feria', N'López', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (83, N'10000012R', N'DAW2A-Pablo', N'Fernández', N'Férriz', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (84, N'10000013V', N'DAW2A-Eduardo', N'Ferreras', N'Carracedo', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (85, N'10000014F', N'DAW2A-Daniel', N'Florido', N'Arenas', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (86, N'10000015J', N'DAW2A-Roger', N'Freixes', N'Ribalta', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (87, N'10000016K', N'DAM2T-DAW2A-Carlos José', N'García', N'Carmona', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (88, N'10000017I', N'DAM2A(Bx)-DAW2A-Jin', N'Gibert', N'Maruoka', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (89, N'10000018O', N'ASIX2A-DAW2A-Ibrahim', N'González', N'Cabrera', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (90, N'10000019Y', N'DAW2A-Marc', N'González', N'Fugarolas', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (91, N'10000020Z', N'DAW2A-Mª del Mar', N'Gordo', N'Guillen', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (92, N'10000021Q', N'ASIX2A-DAW2A-David', N'Guillén', N'Bermúdez', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (93, N'10000022K', N'DAW2A-Arnau', N'Hortelano', N'Arniches', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (94, N'10000023L', N'ASIX2A-DAW2A-Orlando David', N'Lucero', N'Escobar', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (95, N'10000024O', N'DAW2A-Iván', N'Martín', N'López', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (96, N'10000025P', N'DAW2A-Iván', N'Mesa', N'Martín', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (97, N'10000026G', N'DAW2A-Javier', N'Morales', N'Bosch', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (98, N'10000027H', N'DAW2A-Ismael', N'Morato', N'Fernández', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (99, N'10000028T', N'DAW2A-Helena', N'Mur', N'Martos', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (100, N'10000029W', N'DAW2A-Alejandro', N'Pacheco', N'Torres', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (101, N'10000030T', N'DAW2A-Iván', N'Ramos', N'Charneco', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (102, N'10000031E', N'DAM2A-DAW2A-Sergio', N'Ruiz', N'González', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (103, N'10000032V', N'DAW2A-David', N'Sancho', N'Moreno', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (104, N'10000033R', N'DAW2A-Ferran', N'Tuypens', N'Pellisé', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (105, N'10000034Q', N'DAW2A-Darlene Arely', N'Velásquez', N'Vasquez', N'', N'', N'', N'Alumne')
INSERT [dbo].[persones] ([id], [dni], [nom], [cognom1], [cognom2], [telefon], [correu], [adreca], [tipus]) VALUES (106, N'10000035J', N'DAW1A-Andrea', N'Vico', N'Cintas', N'', N'', N'', N'Alumne')
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

INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (3, N'UF1. Programació estructurada', 1)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (6, N'UF1. Empresa i iniciativa emprenedora', 35)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (7, N'UF2. Disseny modular', 1)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (8, N'UF3. Fonaments de gestió de fitxers', 1)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (9, N'UF1:  Instal·lació, configuració i explotació del sistema informàtic', 4)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (10, N'UF2:  Gestió de la informació i de recursos en una xarxa', 4)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (11, N'UF3:  Implantació de programari específic', 4)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (12, N'UF1. Introducció a les bases de dades', 2)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (13, N'UF2. Llenguatges SQL: DML i DDL', 2)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (14, N'UF3. Llenguatge SQL: DCL i extensió procedimental', 2)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (15, N'UF1. Programació amb XML', 6)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (16, N'UF2. Àmbits d’aplicació de l’XML', 6)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (17, N'UF3. Sistemes de gestió d’informació empresarial', 6)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (18, N'UF1. Incorporació al treball', 34)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (19, N'UF2. Prevenció de riscos laborals', 34)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (21, N'UF1. Desenvolupament de programari', 29)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (22, N'UF2. Optimització del programari', 29)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (23, N'UF3. Introducció al disseny orientat a objectes', 29)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (24, N'UF1. Persistència en fitxers', 7)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (25, N'UF2. Persistència en BDR-BDOR-BDOO', 7)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (26, N'UF3. Persistència en BD natives XML', 7)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (27, N'UF4. Components d’accés a dades', 7)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (31, N'UF1. Disseny i implementació d’interfícies', 30)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (32, N'UF2. Preparació i distribució d’aplicacions', 30)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (33, N'UF1. Sistemes ERP-CRM. Implantació.', 33)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (34, N'UF2. Sistemes ERP-CRM. Explotació i adequació', 33)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (35, N'UF1. Projecte de desenvolupament d’aplicacions multiplataforma', 36)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (36, N'UF4. Bases de dades objecte-relacionals', 53)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (38, N'UF1. Desenvolupament d’aplicacions per dispositius mòbils', 31)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (39, N'UF2. Programació multimèdia', 31)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (41, N'UF3. Desenvolupament de jocs per dispositius mòbils', 31)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (42, N'UF1. Seguretat i criptografia ', 32)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (44, N'UF2. Processos i fils', 32)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (45, N'UF3. Sòcols i serveis', 32)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (46, N'UF4. Programació orientada a objectes. Fonaments', 54)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (47, N'UF5. POO. Llibreries de classes fonamentals', 54)
INSERT [dbo].[ufs] ([id], [nom], [id_modul_prof]) VALUES (48, N'UF6. POO. Introducció a la persistència en BD', 54)
SET IDENTITY_INSERT [dbo].[ufs] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_cicles]    Script Date: 25/02/2015 17:10:53 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK_cicles] ON [dbo].[cicles]
(
	[codi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_cursos_codi]    Script Date: 25/02/2015 17:10:53 ******/
ALTER TABLE [dbo].[cursos] ADD  CONSTRAINT [UK_cursos_codi] UNIQUE NONCLUSTERED 
(
	[codi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_cursos_nom]    Script Date: 25/02/2015 17:10:53 ******/
ALTER TABLE [dbo].[cursos] ADD  CONSTRAINT [UK_cursos_nom] UNIQUE NONCLUSTERED 
(
	[nom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_moduls_prof]    Script Date: 25/02/2015 17:10:53 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_moduls_prof] ON [dbo].[moduls_prof]
(
	[id_curs] ASC,
	[codi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_persones_dni]    Script Date: 25/02/2015 17:10:53 ******/
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
USE [master]
GO
ALTER DATABASE [alexia] SET  READ_WRITE 
GO

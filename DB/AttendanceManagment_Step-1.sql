USE [AttendanceManagement]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 02/05/2018 22:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[uid] [varchar](50) NOT NULL,
	[pass] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_professor]    Script Date: 02/05/2018 22:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_professor](
	[pid] [numeric](18, 0) NOT NULL,
	[pname] [varchar](50) NOT NULL,
	[userid] [varchar](50) NOT NULL,
	[pass] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_course]    Script Date: 02/05/2018 22:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_course](
	[courseid] [numeric](18, 0) NOT NULL,
	[coursename] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[courseid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_subject]    Script Date: 02/05/2018 22:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_subject](
	[subid] [numeric](18, 0) NOT NULL,
	[subname] [varchar](50) NOT NULL,
	[courseid] [numeric](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 02/05/2018 22:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_student](
	[studid] [numeric](18, 0) NOT NULL,
	[studname] [varchar](50) NOT NULL,
	[courseid] [numeric](18, 0) NOT NULL,
	[rollno] [numeric](18, 0) NOT NULL,
	[contactno] [numeric](10, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[studid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_subjectallocation]    Script Date: 02/05/2018 22:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_subjectallocation](
	[alloid] [numeric](18, 0) NOT NULL,
	[subid] [numeric](18, 0) NOT NULL,
	[pid] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_attendance]    Script Date: 02/05/2018 22:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_attendance](
	[attid] [numeric](18, 0) NOT NULL,
	[courseid] [numeric](18, 0) NOT NULL,
	[subid] [numeric](18, 0) NOT NULL,
	[studid] [numeric](18, 0) NOT NULL,
	[date_time] [varchar](50) NOT NULL,
	[attendance] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_tbl_attendance_tbl_course]    Script Date: 02/05/2018 22:29:28 ******/
ALTER TABLE [dbo].[tbl_attendance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_attendance_tbl_course] FOREIGN KEY([courseid])
REFERENCES [dbo].[tbl_course] ([courseid])
GO
ALTER TABLE [dbo].[tbl_attendance] CHECK CONSTRAINT [FK_tbl_attendance_tbl_course]
GO
/****** Object:  ForeignKey [FK_tbl_attendance_tbl_student]    Script Date: 02/05/2018 22:29:28 ******/
ALTER TABLE [dbo].[tbl_attendance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_attendance_tbl_student] FOREIGN KEY([studid])
REFERENCES [dbo].[tbl_student] ([studid])
GO
ALTER TABLE [dbo].[tbl_attendance] CHECK CONSTRAINT [FK_tbl_attendance_tbl_student]
GO
/****** Object:  ForeignKey [FK_tbl_attendance_tbl_subject]    Script Date: 02/05/2018 22:29:28 ******/
ALTER TABLE [dbo].[tbl_attendance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_attendance_tbl_subject] FOREIGN KEY([subid])
REFERENCES [dbo].[tbl_subject] ([subid])
GO
ALTER TABLE [dbo].[tbl_attendance] CHECK CONSTRAINT [FK_tbl_attendance_tbl_subject]
GO
/****** Object:  ForeignKey [FK_tbl_student_tbl_course]    Script Date: 02/05/2018 22:29:28 ******/
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD  CONSTRAINT [FK_tbl_student_tbl_course] FOREIGN KEY([courseid])
REFERENCES [dbo].[tbl_course] ([courseid])
GO
ALTER TABLE [dbo].[tbl_student] CHECK CONSTRAINT [FK_tbl_student_tbl_course]
GO
/****** Object:  ForeignKey [FK_tbl_subject_tbl_course]    Script Date: 02/05/2018 22:29:28 ******/
ALTER TABLE [dbo].[tbl_subject]  WITH CHECK ADD  CONSTRAINT [FK_tbl_subject_tbl_course] FOREIGN KEY([courseid])
REFERENCES [dbo].[tbl_course] ([courseid])
GO
ALTER TABLE [dbo].[tbl_subject] CHECK CONSTRAINT [FK_tbl_subject_tbl_course]
GO
/****** Object:  ForeignKey [FK_tbl_subjectallocation_tbl_professor]    Script Date: 02/05/2018 22:29:28 ******/
ALTER TABLE [dbo].[tbl_subjectallocation]  WITH CHECK ADD  CONSTRAINT [FK_tbl_subjectallocation_tbl_professor] FOREIGN KEY([pid])
REFERENCES [dbo].[tbl_professor] ([pid])
GO
ALTER TABLE [dbo].[tbl_subjectallocation] CHECK CONSTRAINT [FK_tbl_subjectallocation_tbl_professor]
GO
/****** Object:  ForeignKey [FK_tbl_subjectallocation_tbl_subject]    Script Date: 02/05/2018 22:29:28 ******/
ALTER TABLE [dbo].[tbl_subjectallocation]  WITH CHECK ADD  CONSTRAINT [FK_tbl_subjectallocation_tbl_subject] FOREIGN KEY([subid])
REFERENCES [dbo].[tbl_subject] ([subid])
GO
ALTER TABLE [dbo].[tbl_subjectallocation] CHECK CONSTRAINT [FK_tbl_subjectallocation_tbl_subject]
GO

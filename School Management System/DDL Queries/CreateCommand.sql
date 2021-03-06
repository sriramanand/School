USE [School]
GO
/****** Object:  Table [dbo].[achievements]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[achievements](
	[achieve_num] [int] IDENTITY(1,1) NOT NULL,
	[achieve_id]  AS ('ACH'+right('000'+CONVERT([varchar](10),[achieve_num]),(6))) PERSISTED NOT NULL,
	[stud_regnum] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[grade] [varchar](50) NULL,
	[semester] [varchar](50) NULL,
	[academicyear] [varchar](50) NULL,
	[achievefield] [varchar](50) NULL,
	[achievedescription] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin_req]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_req](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[description] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[applicant]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[applicant](
	[appregNo] [int] IDENTITY(1,1) NOT NULL,
	[applicant_id]  AS ('WA'+right('000'+CONVERT([varchar](10),[appregNo]),(6))) PERSISTED NOT NULL,
	[applicant_name] [varchar](50) NULL,
	[admission_grade] [varchar](50) NULL,
	[applicant_contact] [varchar](50) NULL,
	[place_id] [int] NULL,
	[applicant_email] [varchar](50) NULL,
 CONSTRAINT [PK_applicant] PRIMARY KEY CLUSTERED 
(
	[applicant_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApprovedLeave]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApprovedLeave](
	[ID] [varchar](50) NOT NULL,
	[LeaveDate] [date] NOT NULL,
 CONSTRAINT [PK_ApprovedLeave] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[LeaveDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comlab]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comlab](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[quantity] [int] NOT NULL,
	[date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comlab_arc]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comlab_arc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[quantity] [int] NOT NULL,
	[date] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cost]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cost](
	[FacName] [varchar](50) NOT NULL,
	[Descp] [varchar](150) NOT NULL,
	[Nouni] [int] NOT NULL,
	[unico] [int] NOT NULL,
	[tot] [int] NOT NULL,
	[eid] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dayone]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dayone](
	[Time] [time](7) NOT NULL,
	[Description] [varchar](150) NOT NULL,
	[PersonInAction] [varchar](50) NOT NULL,
	[Responsible] [varchar](50) NOT NULL,
	[TeamLeader] [varchar](50) NOT NULL,
	[eid] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[discipline]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[discipline](
	[stud_regno] [varchar](8) NULL,
	[name] [varchar](50) NULL,
	[date_of_incident] [varchar](50) NULL,
	[grade] [int] NULL,
	[teacher_in_charge] [varchar](50) NULL,
	[description] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[donation_fee]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donation_fee](
	[PayregNo] [int] IDENTITY(1,1) NOT NULL,
	[pay_num]  AS ('SD'+right('000'+CONVERT([varchar](10),[PayregNo]),(6))) PERSISTED NOT NULL,
	[applicant_id] [varchar](50) NULL,
	[applicant_name] [varchar](50) NULL,
	[payment_date] [varchar](50) NULL,
	[grade_] [varchar](50) NULL,
	[donation_amt] [varchar](50) NULL,
	[paid_amt] [varchar](50) NULL,
 CONSTRAINT [PK_donation_fee] PRIMARY KEY CLUSTERED 
(
	[pay_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[donetion_ass]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donetion_ass](
	[id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[date] [date] NOT NULL,
	[dividion] [varchar](255) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[quantity] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpAttendance]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmpAttendance](
	[ID] [varchar](10) NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[Day] [date] NOT NULL,
	[Attendant] [varchar](10) NULL,
 CONSTRAINT [PK_EmpAttendance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpLeave]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmpLeave](
	[ID] [varchar](50) NOT NULL,
	[LeaveBalance] [int] NOT NULL,
 CONSTRAINT [PK_EmpLeave] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpLeaveRequest]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmpLeaveRequest](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[ID] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LeaveStartDate] [date] NOT NULL,
	[LeaveEndDate] [date] NOT NULL,
	[NoOfDays] [int] NOT NULL,
	[AvailableBalanceBefore] [int] NOT NULL,
	[AvailableBalanceAfter] [int] NOT NULL,
	[ApplyDate] [date] NOT NULL,
	[Status] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EmpLeaveRequest] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventDe]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventDe](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[Ename] [varchar](50) NOT NULL,
	[EDescription] [varchar](200) NOT NULL,
	[Venue] [varchar](50) NOT NULL,
	[MainOrganizer] [varchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndDate] [date] NOT NULL,
	[EndTime] [time](7) NOT NULL,
 CONSTRAINT [PK_EventDe] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[exFees1]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[exFees1](
	[AdmissionNo] [varchar](50) NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[surname] [varchar](50) NOT NULL,
	[admissionGrade] [int] NOT NULL,
	[address] [varchar](100) NULL,
	[contact] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[examFees] [float] NULL,
	[latePay] [varchar](50) NULL,
	[pay] [varchar](50) NULL,
	[latePaye] [float] NULL,
	[total] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[exreq]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[exreq](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[num] [int] NOT NULL,
	[date] [date] NOT NULL,
	[category] [varchar](255) NOT NULL,
	[amount] [int] NOT NULL,
	[description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[furniture]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[furniture](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[quantity] [int] NOT NULL,
	[date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[furniture_arc]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[furniture_arc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[quantity] [int] NOT NULL,
	[date] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[inex]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[inex](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[num] [int] NOT NULL,
	[date] [date] NOT NULL,
	[category] [varchar](255) NOT NULL,
	[amount] [int] NOT NULL,
	[description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory](
	[ItemCode] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Price] [real] NULL,
	[Descreption] [varchar](100) NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[ItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Issue_books]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Issue_books](
	[EmpIndexAdmissioNum] [varchar](50) NOT NULL,
	[IssuedDate] [varchar](50) NOT NULL,
	[ReturnDate] [varchar](50) NOT NULL,
	[Bk1AccessionNumber] [varchar](50) NOT NULL,
	[Book1Name] [varchar](50) NOT NULL,
	[Bk2AccessionNumber] [varchar](50) NULL,
	[Book2Name] [varchar](50) NULL,
	[Amount] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[krida]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[krida](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[quantity] [int] NOT NULL,
	[date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[krida_arc]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[krida_arc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[quantity] [int] NOT NULL,
	[date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lab]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lab](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[quantity] [int] NOT NULL,
	[date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lab_arc]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lab_arc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcategory] [varchar](255) NOT NULL,
	[itemname] [varchar](255) NOT NULL,
	[quantity] [int] NOT NULL,
	[date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[Role] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LonGT11]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LonGT11](
	[STNo] [varchar](50) NULL,
	[fname] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[Grade] [varchar](50) NULL,
	[Term] [varchar](50) NULL,
	[English] [varchar](50) NULL,
	[Mathematics] [varchar](50) NULL,
	[Creativity] [varchar](50) NULL,
	[Environmental] [varchar](50) NULL,
	[Total] [int] NULL,
	[Average] [float] NULL,
	[Rank] [int] NULL,
	[Religion] [varchar](50) NULL,
	[firstLang] [varchar](50) NULL,
	[Art] [varchar](50) NULL,
	[Science] [varchar](50) NULL,
	[IT] [varchar](50) NULL,
	[ICT] [varchar](50) NULL,
	[History] [varchar](50) NULL,
	[Language] [varchar](50) NULL,
	[healthSci] [varchar](50) NULL,
	[Englit] [varchar](50) NULL,
	[Commerce] [varchar](50) NULL,
	[OLopt1] [varchar](50) NULL,
	[OLopt2] [varchar](50) NULL,
	[OLopt3] [varchar](50) NULL,
	[ALopt1] [varchar](50) NULL,
	[ALopt2] [varchar](50) NULL,
	[ALopt3] [varchar](50) NULL,
	[ALopt4] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LonGTerm1]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LonGTerm1](
	[AdmissionNo] [varchar](8) NULL,
	[fname] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[admissionGrade] [varchar](50) NULL,
	[Term] [varchar](50) NULL,
	[English] [varchar](50) NULL,
	[Mathematics] [varchar](50) NULL,
	[Creativity] [varchar](50) NULL,
	[Environmental] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[firstLang] [varchar](50) NULL,
	[Art] [varchar](50) NULL,
	[Science] [varchar](50) NULL,
	[ICT] [varchar](50) NULL,
	[IT] [varchar](50) NULL,
	[History] [varchar](50) NULL,
	[Language] [varchar](50) NULL,
	[healthSci] [varchar](50) NULL,
	[Englit] [varchar](50) NULL,
	[Commerce] [varchar](50) NULL,
	[OLopt1] [varchar](50) NULL,
	[OLopt2] [varchar](50) NULL,
	[OLopt3] [varchar](50) NULL,
	[ALopt1] [varchar](50) NULL,
	[ALopt2] [varchar](50) NULL,
	[ALopt3] [varchar](50) NULL,
	[ALopt4] [varchar](50) NULL,
	[Total] [int] NULL,
	[Average] [float] NULL,
	[Rank] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LonGTerm2]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LonGTerm2](
	[AdmissionNo] [varchar](8) NULL,
	[fname] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[admissionGrade] [varchar](50) NULL,
	[Term] [varchar](50) NULL,
	[English] [varchar](50) NULL,
	[Mathematics] [varchar](50) NULL,
	[Creativity] [varchar](50) NULL,
	[Environmental] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[firstLang] [varchar](50) NULL,
	[Art] [varchar](50) NULL,
	[Science] [varchar](50) NULL,
	[ICT] [varchar](50) NULL,
	[IT] [varchar](50) NULL,
	[History] [varchar](50) NULL,
	[Language] [varchar](50) NULL,
	[healthSci] [varchar](50) NULL,
	[Englit] [varchar](50) NULL,
	[Commerce] [varchar](50) NULL,
	[OLopt1] [varchar](50) NULL,
	[OLopt2] [varchar](50) NULL,
	[OLopt3] [varchar](50) NULL,
	[ALopt1] [varchar](50) NULL,
	[ALopt2] [varchar](50) NULL,
	[ALopt3] [varchar](50) NULL,
	[ALopt4] [varchar](50) NULL,
	[Total] [int] NULL,
	[Average] [float] NULL,
	[Rank] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LonGTerm3]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LonGTerm3](
	[AdmissionNo] [varchar](8) NULL,
	[fname] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[admissionGrade] [varchar](50) NULL,
	[Term] [varchar](50) NULL,
	[English] [varchar](50) NULL,
	[Mathematics] [varchar](50) NULL,
	[Creativity] [varchar](50) NULL,
	[Environmental] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[firstLang] [varchar](50) NULL,
	[Art] [varchar](50) NULL,
	[Science] [varchar](50) NULL,
	[ICT] [varchar](50) NULL,
	[IT] [varchar](50) NULL,
	[History] [varchar](50) NULL,
	[Language] [varchar](50) NULL,
	[healthSci] [varchar](50) NULL,
	[Englit] [varchar](50) NULL,
	[Commerce] [varchar](50) NULL,
	[OLopt1] [varchar](50) NULL,
	[OLopt2] [varchar](50) NULL,
	[OLopt3] [varchar](50) NULL,
	[ALopt1] [varchar](50) NULL,
	[ALopt2] [varchar](50) NULL,
	[ALopt3] [varchar](50) NULL,
	[ALopt4] [varchar](50) NULL,
	[Total] [int] NULL,
	[Average] [float] NULL,
	[Rank] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[placeExam]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[placeExam](
	[placeID] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Mname] [varchar](50) NULL,
	[Lname] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[DOB] [date] NOT NULL,
	[Religion] [varchar](50) NOT NULL,
	[Nationality] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[LandNo] [varchar](50) NOT NULL,
	[MobNo] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[Grade] [int] NOT NULL,
	[Interview] [int] NOT NULL,
	[Written] [int] NOT NULL,
 CONSTRAINT [PK_placeExam] PRIMARY KEY CLUSTERED 
(
	[placeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profit]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profit](
	[scrname] [varchar](50) NOT NULL,
	[descp] [varchar](150) NOT NULL,
	[nouni] [int] NOT NULL,
	[unico] [int] NOT NULL,
	[tot] [int] NOT NULL,
	[eid] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[OrderNo] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [int] NULL,
	[Name] [varchar](50) NULL,
	[Descreption] [varchar](100) NULL,
	[Quantity] [int] NULL,
	[Price] [real] NULL,
	[SupID] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[OrderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCost]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCost](
	[factorName] [varchar](50) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[noOfUnits] [int] NOT NULL,
	[unitCost] [int] NOT NULL,
	[total] [int] NOT NULL,
	[eid] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReadingBooks]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReadingBooks](
	[BID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Author] [varchar](50) NULL,
	[Publisher] [varchar](50) NULL,
	[Price] [real] NULL,
	[Quantity] [int] NULL,
	[SupplierID] [varchar](50) NULL,
 CONSTRAINT [PK_ReadingBooks] PRIMARY KEY CLUSTERED 
(
	[BID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegEmployee]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegEmployee](
	[no] [int] IDENTITY(1,1) NOT NULL,
	[ID]  AS ('WE'+right('000'+CONVERT([varchar](10),[no]),(6))) PERSISTED NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[LastName] [varchar](max) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [varchar](20) NOT NULL,
	[NIC] [varchar](20) NOT NULL,
	[MartialStatus] [varchar](20) NOT NULL,
	[Religion] [varchar](20) NOT NULL,
	[Mobile] [char](15) NULL,
	[Phone] [char](15) NULL,
	[Email] [varchar](max) NULL,
	[EmployeeType] [varchar](20) NOT NULL,
	[CurrentAddress] [varchar](max) NULL,
	[PermanantAddress] [varchar](max) NULL,
	[Qualifications] [varchar](max) NULL,
	[JoinDate] [date] NULL,
	[Salary] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RegEmployee_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NIC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Register_Books]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Register_Books](
	[number] [int] IDENTITY(1,1) NOT NULL,
	[AccessionNumber]  AS ('ACN'+right('000'+CONVERT([varchar](10),[number]),(6))) PERSISTED NOT NULL,
	[Date] [varchar](50) NULL,
	[Author] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[PublisherName] [varchar](50) NULL,
	[PublishedDate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccessionNumber] ASC,
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Register_Books_BkNo]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Register_Books_BkNo](
	[BookID] [varchar](50) NOT NULL,
	[AccessionNumber] [varchar](50) NOT NULL,
	[Date] [varchar](50) NULL,
	[Author] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[PublisherName] [varchar](50) NULL,
	[PublishedDate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccessionNumber] ASC,
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Register_student]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Register_student](
	[AdmissionNumber] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[TelephoneNumber] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[JoiningDate] [varchar](50) NULL,
	[ExpiryDate] [varchar](50) NULL,
 CONSTRAINT [PK_Register_student] PRIMARY KEY CLUSTERED 
(
	[AdmissionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Return_Books]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Return_Books](
	[ID] [varchar](50) NOT NULL,
	[Book1AccessionNum] [varchar](50) NOT NULL,
	[Book1name] [varchar](50) NOT NULL,
	[book2AccessionNum] [varchar](50) NOT NULL,
	[book2Name] [varchar](50) NOT NULL,
	[IssuedDate] [varchar](50) NOT NULL,
	[ReturnDate] [varchar](50) NOT NULL,
	[CurrentDate] [varchar](50) NOT NULL,
	[Fine] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReturnItems]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReturnItems](
	[ReturnID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [int] NULL,
	[Name] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Date] [date] NULL,
	[Descreption] [varchar](100) NULL,
 CONSTRAINT [PK_ReturnItems] PRIMARY KEY CLUSTERED 
(
	[ReturnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RProfit]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RProfit](
	[sourceName] [varchar](50) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[noOfUnits] [int] NOT NULL,
	[unitCost] [int] NOT NULL,
	[total] [int] NOT NULL,
	[eid] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Salary](
	[SlipNo] [int] IDENTITY(1,1) NOT NULL,
	[Month] [varchar](20) NOT NULL,
	[ID] [varchar](50) NOT NULL,
	[Salary] [float] NOT NULL,
	[EPFDeduction] [float] NOT NULL,
	[NetPay] [float] NOT NULL,
	[EPFcontribution] [nchar](10) NULL,
	[ETFcontribution] [nchar](10) NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[Month] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[semester_fees]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[semester_fees](
	[PayregNo] [int] IDENTITY(1,1) NOT NULL,
	[Payment_num]  AS ('SF'+right('000'+CONVERT([varchar](10),[PayregNo]),(6))) PERSISTED NOT NULL,
	[date_of_payment] [varchar](50) NULL,
	[reg_num] [varchar](50) NULL,
	[academic_year] [varchar](50) NULL,
	[semes_grade] [varchar](50) NULL,
	[semes] [varchar](50) NULL,
	[fees_tobe_paid] [varchar](50) NULL,
	[payment_amount] [varchar](50) NULL,
	[balance] [real] NULL,
	[fine_amt] [varchar](50) NULL,
 CONSTRAINT [PK_semester-fees] PRIMARY KEY CLUSTERED 
(
	[Payment_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Services]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Services](
	[SID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Charge] [real] NULL,
	[Descreption] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sponser]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sponser](
	[SponserName] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Description] [varchar](150) NOT NULL,
	[Contact] [varchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Amount] [int] NOT NULL,
	[eid] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stationary]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stationary](
	[ID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[Price] [real] NULL,
	[Quantity] [int] NULL,
	[SupplierID] [varchar](50) NULL,
 CONSTRAINT [PK_Stationary] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockItems]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockItems](
	[ItemCode] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stud_regis]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stud_regis](
	[regNo] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo]  AS ('WS'+right('000'+CONVERT([varchar](10),[regNo]),(6))) PERSISTED NOT NULL,
	[dateOfReg] [varchar](50) NULL,
	[fname] [varchar](50) NULL,
	[midName] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[admissionGrade] [varchar](50) NULL,
	[fathersName] [varchar](50) NULL,
	[fathersOccu] [varchar](50) NULL,
	[fathersOccuAddress] [varchar](100) NULL,
	[mothersName] [varchar](50) NULL,
	[mothersOccu] [varchar](50) NULL,
	[mothersOccuAddress] [varchar](100) NULL,
	[gender] [varchar](50) NULL,
	[age] [varchar](50) NULL,
	[nationality] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[emerName] [varchar](50) NULL,
	[emerAddress] [varchar](100) NULL,
	[emerContact] [varchar](50) NULL,
	[emerRelationship] [varchar](50) NULL,
	[studImage] [image] NULL,
 CONSTRAINT [PK_stud_regis] PRIMARY KEY CLUSTERED 
(
	[regNo] ASC,
	[AdmissionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[PhoneNo] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[suppliers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[com_name] [varchar](255) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[contact_number] [int] NOT NULL,
	[fax] [int] NULL,
	[web_address] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[yearEnd]    Script Date: 9/19/2016 4:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yearEnd](
	[AdmissionNo] [varchar](8) NULL,
	[fname] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[admissionGrade] [varchar](50) NULL,
	[English] [int] NULL,
	[Mathematics] [int] NULL,
	[Creativity] [int] NULL,
	[Environmental] [int] NULL,
	[Religion] [int] NULL,
	[FirstLang] [int] NULL,
	[Art] [int] NULL,
	[Science] [int] NULL,
	[ICT] [int] NULL,
	[IT] [int] NULL,
	[History] [int] NULL,
	[Language] [int] NULL,
	[HealthSci] [int] NULL,
	[Englit] [int] NULL,
	[Commerce] [int] NULL,
	[OLopt1] [int] NULL,
	[OLopt2] [int] NULL,
	[OLopt3] [int] NULL,
	[ALopt1] [int] NULL,
	[ALopt2] [int] NULL,
	[ALopt3] [int] NULL,
	[ALopt4] [int] NULL,
	[Total] [int] NULL,
	[Average] [int] NULL,
	[Rank] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[applicant]  WITH CHECK ADD  CONSTRAINT [FK_applicant_applicant] FOREIGN KEY([applicant_id])
REFERENCES [dbo].[applicant] ([applicant_id])
GO
ALTER TABLE [dbo].[applicant] CHECK CONSTRAINT [FK_applicant_applicant]
GO
ALTER TABLE [dbo].[Cost]  WITH CHECK ADD  CONSTRAINT [FK_Cost_EventDe] FOREIGN KEY([eid])
REFERENCES [dbo].[EventDe] ([EventID])
GO
ALTER TABLE [dbo].[Cost] CHECK CONSTRAINT [FK_Cost_EventDe]
GO
ALTER TABLE [dbo].[Dayone]  WITH CHECK ADD  CONSTRAINT [FK_Dayone_EventDe] FOREIGN KEY([eid])
REFERENCES [dbo].[EventDe] ([EventID])
GO
ALTER TABLE [dbo].[Dayone] CHECK CONSTRAINT [FK_Dayone_EventDe]
GO
ALTER TABLE [dbo].[Profit]  WITH CHECK ADD  CONSTRAINT [FK_Profit_EventDe] FOREIGN KEY([eid])
REFERENCES [dbo].[EventDe] ([EventID])
GO
ALTER TABLE [dbo].[Profit] CHECK CONSTRAINT [FK_Profit_EventDe]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Inventory] FOREIGN KEY([ItemCode])
REFERENCES [dbo].[Inventory] ([ItemCode])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_Inventory]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Supplier] FOREIGN KEY([SupID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_Supplier]
GO
ALTER TABLE [dbo].[RCost]  WITH CHECK ADD  CONSTRAINT [FK_RCost_EventDe] FOREIGN KEY([eid])
REFERENCES [dbo].[EventDe] ([EventID])
GO
ALTER TABLE [dbo].[RCost] CHECK CONSTRAINT [FK_RCost_EventDe]
GO
ALTER TABLE [dbo].[ReturnItems]  WITH CHECK ADD  CONSTRAINT [FK_ReturnItems_Inventory] FOREIGN KEY([ItemCode])
REFERENCES [dbo].[Inventory] ([ItemCode])
GO
ALTER TABLE [dbo].[ReturnItems] CHECK CONSTRAINT [FK_ReturnItems_Inventory]
GO
ALTER TABLE [dbo].[RProfit]  WITH CHECK ADD  CONSTRAINT [FK_RProfit_EventDe] FOREIGN KEY([eid])
REFERENCES [dbo].[EventDe] ([EventID])
GO
ALTER TABLE [dbo].[RProfit] CHECK CONSTRAINT [FK_RProfit_EventDe]
GO
ALTER TABLE [dbo].[StockItems]  WITH CHECK ADD  CONSTRAINT [FK_StockItems_Inventory] FOREIGN KEY([ItemCode])
REFERENCES [dbo].[Inventory] ([ItemCode])
GO
ALTER TABLE [dbo].[StockItems] CHECK CONSTRAINT [FK_StockItems_Inventory]
GO

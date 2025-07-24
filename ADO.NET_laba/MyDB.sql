USE [MyDB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authbook](
	[id] [int] NULL,
	[idauth] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[idas] [int] NULL,
	[fio] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[id] [int] NULL,
	[idcat] [int] NULL,
	[bname] [varchar](100) NULL,
	[price] [decimal](10, 2) NULL,
	[dateizd] [date] NULL,
	[pages] [int] NULL,
	[langid] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cats](
	[idcat] [int] NULL,
	[catname] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[firma](
	[codf] [int] NULL,
	[fname] [varchar](10) NULL,
	[fio] [varchar](18) NULL,
	[city] [varchar](15) NULL,
 CONSTRAINT [unique_codf] UNIQUE NONCLUSTERED 
(
	[codf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gotov](
	[codgotov] [int] NULL,
	[textgotov] [varchar](10) NULL,
 CONSTRAINT [unique_codgotov] UNIQUE NONCLUSTERED 
(
	[codgotov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t1](
	[f1] [int] NULL,
	[f2] [int] NULL,
	[f3] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t2](
	[f1] [int] NULL,
	[f4] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_task2](
	[id] [int] NULL,
	[value] [float] NULL,
	[created_at] [datetime] NULL,
	[description] [nvarchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_task3_child](
	[id] [int] NULL,
	[description] [nvarchar](50) NULL,
	[details] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_task3_parent](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[info] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fch] [nchar](20) NULL,
	[ff] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zakaz](
	[codz] [int] NULL,
	[codf] [int] NULL,
	[codgotov] [int] NULL,
	[price] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblAttribute](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Source_ID] [int] NULL,
	[Source_LastChgTS] [varbinary](8) NULL,
	[Entity_ID] [int] NOT NULL,
	[MemberType_ID] [tinyint] NOT NULL,
	[DisplayName] [nvarchar](250) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[TableColumn] [sysname] NOT NULL,
	[AttributeType_ID] [tinyint] NOT NULL,
	[DataType_ID] [tinyint] NOT NULL,
	[DataTypeInformation] [int] NULL,
	[InputMask_ID] [int] NOT NULL,
	[DisplayWidth] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[DomainEntity_ID] [int] NULL,
	[ChangeTrackingGroup] [int] NOT NULL,
	[FilterParentAttribute_ID] [int] NULL,
	[FilterHierarchyDetail_ID] [int] NULL,
	[IsCode] [bit] NOT NULL,
	[IsName] [bit] NOT NULL,
	[IsSystem] [bit] NOT NULL,
	[IsReadOnly] [bit] NOT NULL,
	[IsRequired] [bit] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[EnterVersionID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgVersionID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblAttribute] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblAttribute_Entity_ID_MemberType_ID_DisplayName] UNIQUE NONCLUSTERED 
(
	[Entity_ID] ASC,
	[MemberType_ID] ASC,
	[DisplayName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblAttribute_Entity_ID_MemberType_ID_Name] UNIQUE NONCLUSTERED 
(
	[Entity_ID] ASC,
	[MemberType_ID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblAttribute_Entity_ID_MemberType_ID_TableColumn] UNIQUE NONCLUSTERED 
(
	[Entity_ID] ASC,
	[MemberType_ID] ASC,
	[TableColumn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblAttribute_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblAttributeGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Entity_ID] [int] NOT NULL,
	[MemberType_ID] [tinyint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[FreezeNameCode] [bit] NOT NULL,
	[IsSystem] [bit] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[EnterVersionID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgVersionID] [int] NOT NULL,
 CONSTRAINT [pk_tblAttributeGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblAttributeGroup_Entity_ID_MemberType_ID_Name] UNIQUE NONCLUSTERED 
(
	[Entity_ID] ASC,
	[MemberType_ID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblAttributeGroup_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblAttributeGroupDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[AttributeGroup_ID] [int] NOT NULL,
	[Attribute_ID] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[EnterVersionID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgVersionID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblAttributeGroupDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblAttributeGroupDetail_AttributeGroup_ID_Attribute_ID] UNIQUE NONCLUSTERED 
(
	[AttributeGroup_ID] ASC,
	[Attribute_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblAttributeGroupDetail_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblBRBusinessRule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[RuleConditionText] [nvarchar](max) NULL,
	[RuleActionText] [nvarchar](max) NULL,
	[RuleElseActionText] [nvarchar](max) NULL,
	[Entity_ID] [int] NOT NULL,
	[MemberType_ID] [tinyint] NOT NULL,
	[Status_ID] [int] NOT NULL,
	[Priority] [int] NULL,
	[NotificationGroupID] [int] NULL,
	[NotificationUserID] [int] NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_tblBRBusinessRule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblBRBusinessRule_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblBRItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BRLogicalOperatorGroup_ID] [int] NOT NULL,
	[BRItemAppliesTo_ID] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[ItemText] [nvarchar](max) NOT NULL,
	[AnchorName] [nvarchar](250) NULL,
	[AnchorAttributeType] [int] NULL,
	[MUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_tblBRItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblBRItem_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblBRItemProperties](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BRItem_ID] [int] NOT NULL,
	[PropertyType_ID] [int] NOT NULL,
	[PropertyName_ID] [int] NOT NULL,
	[Value] [nvarchar](999) NOT NULL,
	[Sequence] [int] NOT NULL,
	[IsLeftHandSide] [bit] NOT NULL,
	[Parent_ID] [int] NULL,
	[SuppressText] [bit] NULL,
	[MUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_tblBRItemProperties] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblBRItemProperties_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblBRItemTypeAppliesTo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BRItemType_ID] [int] NOT NULL,
	[ApplyTo_ID] [int] NOT NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [pk_tblBRItemTypeAppliesTo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblBRLogicalOperatorGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LogicalOperator_ID] [int] NULL,
	[Parent_ID] [int] NULL,
	[BusinessRule_ID] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_tblBRLogicalOperatorGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblBRLogicalOperatorGroup_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblBRStatusTransition](
	[Action_ID] [int] NOT NULL,
	[CurrentStatus_ID] [int] NOT NULL,
	[NewStatus_ID] [int] NOT NULL,
 CONSTRAINT [pk_tblBRStatusTransition] PRIMARY KEY CLUSTERED 
(
	[Action_ID] ASC,
	[CurrentStatus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblCodeGenInfo](
	[EntityId] [int] NOT NULL,
	[Seed] [int] NOT NULL,
	[LargestCodeValue] [bigint] NULL,
 CONSTRAINT [PK_tblCodeGenInfo] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblDataQualityOperationsState](
	[CreateDTM] [datetime2](3) NOT NULL,
	[OperationId] [uniqueidentifier] NULL,
	[SerializedOperation] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblDBErrors](
	[ID] [int] NOT NULL,
	[Language_ID] [int] NOT NULL,
	[Text] [nvarchar](4000) NOT NULL,
	[Category] [nvarchar](250) NOT NULL,
	[Comment] [nvarchar](4000) NULL,
 CONSTRAINT [pk_tblDBErrors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblDBUpgradeHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DBVersion] [int] NOT NULL,
	[EnterUser] [nvarchar](250) NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
 CONSTRAINT [pk_tblDBUpgradeHistory] PRIMARY KEY CLUSTERED 
(
	[ID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblDerivedHierarchy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Model_ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[AnchorNullRecursions] [bit] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[EnterVersionID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgVersionID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblDerivedHierarchy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblDerivedHierarchy_Model_ID_Name] UNIQUE NONCLUSTERED 
(
	[Model_ID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblDerivedHierarchy_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblDerivedHierarchyDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[DerivedHierarchy_ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[ForeignParent_ID] [int] NULL,
	[Foreign_ID] [int] NULL,
	[ForeignType_ID] [tinyint] NOT NULL,
	[ManyToManyChildAttribute_ID] [int] NULL,
	[Level_ID] [int] NULL,
	[IsVisible] [bit] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[EnterVersionID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgVersionID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblDerivedHierarchyDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ck_tblDerivedHierarchyDetail_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblEntity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Model_ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[EntityTable] [sysname] NOT NULL,
	[HierarchyTable] [sysname] NULL,
	[HierarchyParentTable] [sysname] NULL,
	[CollectionTable] [sysname] NULL,
	[CollectionMemberTable] [sysname] NULL,
	[IsBase] [bit] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[EnterVersionID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgVersionID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
	[StagingBase] [nvarchar](60) NULL,
	[StagingLeafName]  AS ([StagingBase]+'_Leaf'),
	[StagingConsolidatedName]  AS ([StagingBase]+'_Consolidated'),
	[StagingRelationshipName]  AS ([StagingBase]+'_Relationship'),
	[DataCompression] [tinyint] NOT NULL,
	[TransactionLogType] [tinyint] NOT NULL,
	[RequireApproval] [bit] NOT NULL,
 CONSTRAINT [pk_tblEntity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblEntity_Model_ID_Name] UNIQUE NONCLUSTERED 
(
	[Model_ID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblEntity_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblErrorCodesMapping](
	[Bitmask] [int] NOT NULL,
	[UniqueErrorCode] [int] NOT NULL,
 CONSTRAINT [pk_tblErrorCodeMapping] PRIMARY KEY CLUSTERED 
(
	[Bitmask] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblEvent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Version_ID] [int] NULL,
	[Entity_ID] [int] NULL,
	[EventName] [nvarchar](100) NOT NULL,
	[EventStatus_ID] [tinyint] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[ErrorMsg] [nvarchar](max) NULL,
 CONSTRAINT [pk_tblEvent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblExternalSystem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Status_ID] [tinyint] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NULL,
 CONSTRAINT [pk_tblExternalSystem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblFile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Source_ID] [int] NULL,
	[Source_LastChgTS] [varbinary](8) NULL,
	[FileName] [nvarchar](250) NOT NULL,
	[FileContentType] [nvarchar](200) NOT NULL,
	[FileContent] [varbinary](max) NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblFile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblFile_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblHierarchy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Entity_ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsMandatory] [bit] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[EnterVersionID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgVersionID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblHierarchy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblHierarchy_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblHierarchy_Name] UNIQUE NONCLUSTERED 
(
	[Entity_ID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblIndex](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Entity_ID] [int] NOT NULL,
	[SysIndex_ID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsUnique] [bit] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblIndex] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblIndex_Entity_ID_Name] UNIQUE NONCLUSTERED 
(
	[Entity_ID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblIndex_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ListCode] [nvarchar](50) NOT NULL,
	[ListName] [nvarchar](50) NOT NULL,
	[Seq] [int] NOT NULL,
	[ListOption] [nvarchar](250) NOT NULL,
	[OptionID] [int] NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[Group_ID] [int] NOT NULL,
 CONSTRAINT [pk_tblList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblListRelationship](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentListCode] [nvarchar](50) NOT NULL,
	[Parent_ID] [int] NOT NULL,
	[ChildListCode] [nvarchar](50) NOT NULL,
	[Child_ID] [int] NOT NULL,
	[ListRelationshipType_ID] [int] NOT NULL,
 CONSTRAINT [pk_tblListRelationship] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblListRelationshipType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_tblListRelationshipType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblLocalizedStrings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageCode] [int] NOT NULL,
	[ResourceName] [nvarchar](100) NOT NULL,
	[LocalizedValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblLocalizedStrings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[LogRetentionDays] [int] NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblModel_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblModel_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblModelVersion]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblModelVersion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Model_ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Status_ID] [tinyint] NOT NULL,
	[Display_ID] [int] NOT NULL,
	[VersionFlag_ID] [int] NULL,
	[AsOfVersion_ID] [int] NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblModelVersion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblModelVersion_Model_ID_Name] UNIQUE NONCLUSTERED 
(
	[Model_ID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblModelVersion_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblModelVersionFlag]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblModelVersionFlag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Model_ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Status_ID] [tinyint] NOT NULL,
	[CommittedOnly_ID] [tinyint] NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblModelVersionFlag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblModelVersionFlag_Model_ID_Name] UNIQUE NONCLUSTERED 
(
	[Model_ID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblModelVersionFlag_MUID] UNIQUE NONCLUSTERED 
(
	[MUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblNotificationQueue]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblNotificationQueue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationType_ID] [int] NOT NULL,
	[Version_ID] [int] NULL,
	[Model_ID] [int] NULL,
	[Entity_ID] [int] NULL,
	[Member_ID] [int] NULL,
	[MemberType_ID] [tinyint] NULL,
	[Message] [nvarchar](max) NOT NULL,
	[BRBusinessRule_ID] [int] NULL,
	[PriorityRank] [nvarchar](255) NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[DueDTM] [datetime2](3) NULL,
	[SentDTM] [datetime2](3) NULL,
 CONSTRAINT [pk_tblNotificationQueue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblNotificationUsers]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblNotificationUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Notification_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
 CONSTRAINT [pk_tblNotificationUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblSecurityAccessControl]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSecurityAccessControl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PrincipalType_ID] [int] NOT NULL,
	[Principal_ID] [int] NOT NULL,
	[Role_ID] [int] NOT NULL,
	[Description] [nvarchar](110) NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_tblSecurityAccessControl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSecurityObject](
	[ID] [int] IDENTITY(0,1) NOT NULL,
	[Code] [char](6) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[ViewName] [sysname] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [pk_tblSecurityObject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSecurityPrivilege](
	[ID] [int] NOT NULL,
	[Code] [nvarchar](15) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [pk_tblSecurityPrivilege] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSecurityPrivilegeFunctional](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_tblSecurityPrivilegeFunctional] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSecurityRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](115) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
 CONSTRAINT [pk_tblSecurityRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSecurityRoleAccess](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role_ID] [int] NOT NULL,
	[Privilege_ID] [int] NOT NULL,
	[AccessPermission] [tinyint] NOT NULL,
	[Model_ID] [int] NOT NULL,
	[Securable_ID] [int] NOT NULL,
	[Object_ID] [int] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_tblSecurityRoleAccess] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSecurityRoleAccessFunctional](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Role_ID] [int] NOT NULL,
	[FunctionalPrivilege_ID] [tinyint] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
 CONSTRAINT [pk_tblSecurityRoleAccessFunctional] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblSecurityRoleAccessMember]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSecurityRoleAccessMember](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role_ID] [int] NOT NULL,
	[Privilege_ID] [int] NOT NULL,
	[AccessPermission] [tinyint] NOT NULL,
	[Version_ID] [int] NOT NULL,
	[Entity_ID] [int] NOT NULL,
	[HierarchyType_ID] [tinyint] NOT NULL,
	[ExplicitHierarchy_ID] [int] NULL,
	[DerivedHierarchy_ID] [int] NULL,
	[Hierarchy_ID]  AS (case [HierarchyType_ID] when (0) then [ExplicitHierarchy_ID] when (1) then [DerivedHierarchy_ID]  end),
	[MemberType_ID] [tinyint] NOT NULL,
	[Member_ID] [int] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[IsInitialized] [bit] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_tblSecurityRoleAccessMember] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblStgBatch]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblStgBatch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OriginalBatch_ID] [int] NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Entity_ID] [int] NULL,
	[MemberType_ID] [tinyint] NULL,
	[BatchTag] [nvarchar](50) NULL,
	[ExternalSystem_ID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Version_ID] [int] NOT NULL,
	[TotalMemberCount] [int] NULL,
	[ErrorMemberCount] [int] NULL,
	[TotalMemberAttributeCount] [int] NULL,
	[ErrorMemberAttributeCount] [int] NULL,
	[TotalMemberRelationshipCount] [int] NULL,
	[ErrorMemberRelationshipCount] [int] NULL,
	[Status_ID] [tinyint] NOT NULL,
	[LastRunStartDTM] [datetime] NULL,
	[LastRunStartUserID] [int] NULL,
	[LastRunEndDTM] [datetime] NULL,
	[LastRunEndUserID] [int] NULL,
	[LastClearedDTM] [datetime] NULL,
	[LastClearedUserID] [int] NULL,
	[EnterDTM] [datetime] NOT NULL,
	[EnterUserID] [int] NOT NULL,
 CONSTRAINT [pk_tblStgBatch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblStgErrorDetail]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblStgErrorDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Batch_ID] [int] NOT NULL,
	[Code] [nvarchar](250) NULL,
	[AttributeName] [nvarchar](100) NOT NULL,
	[AttributeValue] [nvarchar](2000) NULL,
	[UniqueErrorCode] [int] NOT NULL,
 CONSTRAINT [pk_tblStgErrorDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblSubscriptionView]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSubscriptionView](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Entity_ID] [int] NULL,
	[Model_ID] [int] NOT NULL,
	[DerivedHierarchy_ID] [int] NULL,
	[ViewFormat_ID] [int] NOT NULL,
	[ModelVersion_ID] [int] NULL,
	[ModelVersionFlag_ID] [int] NULL,
	[Name] [sysname] NOT NULL,
	[Levels] [int] NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IncludeSoftDeletedMembers] [bit] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NULL,
	[EnterVersionID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NULL,
	[LastChgVersionID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblSubscriptionView] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblSyncRelationship]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSyncRelationship](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SourceVersion_ID] [int] NOT NULL,
	[SourceEntity_ID] [int] NOT NULL,
	[TargetVersion_ID] [int] NOT NULL,
	[TargetEntity_ID] [int] NOT NULL,
	[TargetEntityNameIsAliased] [bit] NOT NULL,
	[RefreshFrequencyInHours] [int] NULL,
	[LastSuccessfulSyncDTM] [datetime2](7) NULL,
	[LastSuccessfulSyncTimestamp] [varbinary](8) NULL,
	[LastSyncAttemptDTM] [datetime2](7) NULL,
	[LastSyncAttemptStatus] [tinyint] NOT NULL,
	[LastSyncAttemptErrorInfo] [nvarchar](max) NULL,
	[EnterDTM] [datetime2](7) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](7) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[LastChgTS] [timestamp] NOT NULL,
 CONSTRAINT [pk_tblSyncRelationship] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ux_tblSyncRelationship_TargetVersion_ID_TargetEntity_ID] UNIQUE NONCLUSTERED 
(
	[TargetVersion_ID] ASC,
	[TargetEntity_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblSystem]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSystem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SchemaVersion] [nvarchar](250) NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [nvarchar](250) NOT NULL,
	[LastChgUserID] [nvarchar](250) NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
 CONSTRAINT [pk_tblSystem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblSystemSetting]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSystemSetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[SettingName] [nvarchar](100) NOT NULL,
	[SettingValue] [nvarchar](max) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[SettingType_ID] [tinyint] NOT NULL,
	[DataType_ID] [tinyint] NOT NULL,
	[MinValue] [nvarchar](200) NULL,
	[MaxValue] [nvarchar](200) NULL,
	[ListCode] [nvarchar](50) NULL,
	[EnterDTM] [datetime] NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime] NOT NULL,
	[LastChgUserID] [int] NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[SystemSettingGroup_ID] [int] NOT NULL,
	[DisplaySequence] [int] NOT NULL,
 CONSTRAINT [pk_tblSystemSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblSystemSettingGroup]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblSystemSettingGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[DisplaySequence] [int] NOT NULL,
 CONSTRAINT [pk_tblSystemSettingGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblUser]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[Status_ID] [tinyint] NOT NULL,
	[SID] [nvarchar](250) NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[LastLoginDTM] [datetime2](3) NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
 CONSTRAINT [pk_tblUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblUserGroup]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblUserGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[UserGroupType_ID] [tinyint] NOT NULL,
	[Status_ID] [tinyint] NOT NULL,
	[SID] [nvarchar](250) NULL,
	[Name] [nvarchar](355) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
 CONSTRAINT [pk_tblUserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblUserGroupAssignment]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblUserGroupAssignment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUID] [uniqueidentifier] NOT NULL,
	[UserGroup_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
 CONSTRAINT [pk_tblUserGroupAssignment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblUserPreference]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblUserPreference](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[PreferenceName] [nvarchar](100) NOT NULL,
	[PreferenceValue] [nvarchar](max) NOT NULL,
	[EnterDTM] [datetime2](3) NOT NULL,
	[EnterUserID] [int] NOT NULL,
	[LastChgDTM] [datetime2](3) NOT NULL,
	[LastChgUserID] [int] NOT NULL,
 CONSTRAINT [pk_tblUserPreference] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblViwSystemSchemaAttributes]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblViwSystemSchemaAttributes](
	[Model_ID] [int] NULL,
	[Model_MUID] [uniqueidentifier] NULL,
	[Model_Name] [nvarchar](50) NULL,
	[Entity_ID] [int] NULL,
	[Entity_MUID] [uniqueidentifier] NULL,
	[Entity_Name] [nvarchar](50) NULL,
	[Attribute_ID] [int] NULL,
	[Attribute_MUID] [uniqueidentifier] NULL,
	[Attribute_Name] [nvarchar](100) NULL,
	[Attribute_Description] [nvarchar](500) NULL,
	[Attribute_DisplayName] [nvarchar](250) NULL,
	[Attribute_DisplayWidth] [int] NULL,
	[Attribute_ChangeTrackingGroup] [int] NULL,
	[Attribute_Column] [nvarchar](128) NULL,
	[Attribute_IsSystem] [bit] NULL,
	[Attribute_IsReadOnly] [bit] NULL,
	[Attribute_IsCode] [bit] NULL,
	[Attribute_IsName] [bit] NULL,
	[Attribute_MemberType_ID] [tinyint] NULL,
	[Attribute_MemberType_Name] [nvarchar](16) NULL,
	[Attribute_Type_ID] [tinyint] NULL,
	[Attribute_Type_Name] [nvarchar](8) NULL,
	[Attribute_DBAEntity_ID] [int] NULL,
	[Attribute_DBAEntity_MUID] [uniqueidentifier] NULL,
	[Attribute_DBAEntity_Name] [nvarchar](50) NULL,
	[Attribute_DBAEntity_IsHierarchyEnabled] [int] NULL,
	[FilterParentAttribute_ID] [int] NULL,
	[FilterParentAttribute_MUID] [uniqueidentifier] NULL,
	[FilterParentAttribute_Name] [nvarchar](100) NULL,
	[FilterParentHierarchy_ID] [int] NULL,
	[FilterParentHierarchy_MUID] [uniqueidentifier] NULL,
	[FilterParentHierarchy_Name] [nvarchar](50) NULL,
	[FilterParentHierarchy_LevelNumber] [int] NULL,
	[Attribute_DataType_ID] [tinyint] NULL,
	[Attribute_DataType_Name] [nvarchar](8) NULL,
	[Attribute_DataType_Information] [int] NULL,
	[Attribute_DataMask_ID] [int] NULL,
	[Attribute_DataMask_Name] [nvarchar](250) NULL,
	[Entity_PhysicalTableName] [nvarchar](128) NULL,
	[Attribute_SortOrder] [int] NULL,
	[EnteredUser_ID] [int] NULL,
	[EnteredUser_MUID] [uniqueidentifier] NULL,
	[EnteredUser_UserName] [nvarchar](100) NULL,
	[EnteredUser_DTM] [datetime2](3) NULL,
	[LastChgUser_ID] [int] NULL,
	[LastChgUser_MUID] [uniqueidentifier] NULL,
	[LastChgUser_UserName] [nvarchar](100) NULL,
	[LastChgUser_DTM] [datetime2](3) NULL,
	[Attribute_FullyQualifiedName] [nvarchar](1035) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblviwSystemSecurityRole]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblviwSystemSecurityRole](
	[Role_ID] [int] NULL,
	[Model_ID] [int] NULL,
	[Model_PrivilegeID] [int] NULL,
	[Model_AccessPermission] [int] NULL,
	[Model_IsExplicit] [int] NULL,
	[Entity_ID] [int] NULL,
	[Entity_PrivilegeID] [int] NULL,
	[Entity_AccessPermission] [int] NULL,
	[Entity_IsExplicit] [int] NULL,
	[MemberType_ID] [int] NULL,
	[MemberType_PrivilegeID] [int] NULL,
	[MemberType_AccessPermission] [int] NULL,
	[MemberType_IsExplicit] [int] NULL,
	[Attribute_ID] [int] NULL,
	[Attribute_PrivilegeID] [int] NULL,
	[Attribute_AccessPermission] [int] NULL,
	[Attribute_IsExplicit] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblviwSystemSecurityUserAttribute]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblviwSystemSecurityUserAttribute](
	[User_ID] [int] NOT NULL,
	[IsAdmin] [int] NULL,
	[ID] [int] NOT NULL,
	[Privilege_ID] [int] NULL,
	[AccessPermission] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblviwSystemSecurityUserMemberType]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblviwSystemSecurityUserMemberType](
	[User_ID] [int] NOT NULL,
	[IsAdmin] [int] NULL,
	[IsSyncTarget] [int] NULL,
	[Entity_ID] [int] NULL,
	[ID] [int] NOT NULL,
	[Privilege_ID] [int] NULL,
	[AccessPermission] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [mdm].[tblviwSystemSecurityUserRole]    Script Date: 15.04.2025 21:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mdm].[tblviwSystemSecurityUserRole](
	[User_ID] [int] NULL,
	[Role_ID] [int] NOT NULL,
	[IsUserGroupAssignment] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [mdm].[tblAttribute] ADD  CONSTRAINT [df_tblAttribute_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblAttribute] ADD  CONSTRAINT [df_tblAttribute_ChangeTrackingGroup]  DEFAULT ((0)) FOR [ChangeTrackingGroup]
GO
ALTER TABLE [mdm].[tblAttribute] ADD  CONSTRAINT [df_tblAttribute_IsCode]  DEFAULT ((0)) FOR [IsCode]
GO
ALTER TABLE [mdm].[tblAttribute] ADD  CONSTRAINT [df_tblAttribute_IsName]  DEFAULT ((0)) FOR [IsName]
GO
ALTER TABLE [mdm].[tblAttribute] ADD  CONSTRAINT [df_tblAttribute_IsSystem]  DEFAULT ((0)) FOR [IsSystem]
GO
ALTER TABLE [mdm].[tblAttribute] ADD  CONSTRAINT [df_tblAttribute_IsReadOnly]  DEFAULT ((0)) FOR [IsReadOnly]
GO
ALTER TABLE [mdm].[tblAttribute] ADD  CONSTRAINT [df_tblAttribute_IsRequired]  DEFAULT ((0)) FOR [IsRequired]
GO
ALTER TABLE [mdm].[tblAttribute] ADD  CONSTRAINT [df_tblAttribute_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblAttribute] ADD  CONSTRAINT [df_tblAttribute_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblAttributeGroup] ADD  CONSTRAINT [df_tblAttributeGroup_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblAttributeGroup] ADD  CONSTRAINT [df_tblAttributeGroup_FreezeNameCode]  DEFAULT ((0)) FOR [FreezeNameCode]
GO
ALTER TABLE [mdm].[tblAttributeGroup] ADD  CONSTRAINT [df_tblAttributeGroup_IsSystem]  DEFAULT ((0)) FOR [IsSystem]
GO
ALTER TABLE [mdm].[tblAttributeGroup] ADD  CONSTRAINT [df_tblAttributeGroup_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblAttributeGroup] ADD  CONSTRAINT [df_tblAttributeGroup_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblAttributeGroupDetail] ADD  CONSTRAINT [df_tblAttributeGroupDetail_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblAttributeGroupDetail] ADD  CONSTRAINT [df_tblAttributeGroupDetail_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblAttributeGroupDetail] ADD  CONSTRAINT [df_tblAttributeGroupDetail_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblBRBusinessRule] ADD  CONSTRAINT [df_tblBRBusinessRule_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblBRBusinessRule] ADD  CONSTRAINT [df_tblBRBusinessRule_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblBRBusinessRule] ADD  CONSTRAINT [df_tblBRBusinessRule_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblBRItem] ADD  CONSTRAINT [df_tblBRItem_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblBRItemProperties] ADD  CONSTRAINT [df_tblBRItemProperties_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblBRLogicalOperatorGroup] ADD  CONSTRAINT [df_tblBRLogicalOperatorGroup_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblDataQualityOperationsState] ADD  CONSTRAINT [df_tblDataQualityOperationsState_CreateDTM]  DEFAULT (getutcdate()) FOR [CreateDTM]
GO
ALTER TABLE [mdm].[tblDBErrors] ADD  CONSTRAINT [df_tblDBErrors_Language_ID]  DEFAULT ((1033)) FOR [Language_ID]
GO
ALTER TABLE [mdm].[tblDBUpgradeHistory] ADD  CONSTRAINT [df_tblDBUpgradeHistory_EnterUser]  DEFAULT (suser_sname()) FOR [EnterUser]
GO
ALTER TABLE [mdm].[tblDBUpgradeHistory] ADD  CONSTRAINT [df_tblDBUpgradeHistory_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblDerivedHierarchy] ADD  CONSTRAINT [df_tblDerivedHierarchy_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblDerivedHierarchy] ADD  CONSTRAINT [df_tblDerivedHierarchy_AnchorNullRecursions]  DEFAULT ((1)) FOR [AnchorNullRecursions]
GO
ALTER TABLE [mdm].[tblDerivedHierarchy] ADD  CONSTRAINT [df_tblDerivedHierarchy_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblDerivedHierarchy] ADD  CONSTRAINT [df_tblDerivedHierarchy_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblDerivedHierarchyDetail] ADD  CONSTRAINT [df_tblDerivedHierarchyDetail_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblDerivedHierarchyDetail] ADD  CONSTRAINT [df_tblDerivedHierarchyDetail_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblDerivedHierarchyDetail] ADD  CONSTRAINT [df_tblDerivedHierarchyDetail_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblEntity] ADD  CONSTRAINT [df_tblEntity_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblEntity] ADD  CONSTRAINT [df_tblEntity_IsBase]  DEFAULT ((0)) FOR [IsBase]
GO
ALTER TABLE [mdm].[tblEntity] ADD  CONSTRAINT [df_tblEntity_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblEntity] ADD  CONSTRAINT [df_tblEntity_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblEntity] ADD  CONSTRAINT [df_tblEntity_DataCompression]  DEFAULT ((0)) FOR [DataCompression]
GO
ALTER TABLE [mdm].[tblEntity] ADD  CONSTRAINT [df_tblEntity_TransactionLogType]  DEFAULT ((1)) FOR [TransactionLogType]
GO
ALTER TABLE [mdm].[tblEntity] ADD  CONSTRAINT [df_tblEntity_RequireApproval]  DEFAULT ((0)) FOR [RequireApproval]
GO
ALTER TABLE [mdm].[tblEvent] ADD  CONSTRAINT [df_tblEvent_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblEvent] ADD  CONSTRAINT [df_tblEvent_EventStatus_ID]  DEFAULT ((1)) FOR [EventStatus_ID]
GO
ALTER TABLE [mdm].[tblEvent] ADD  CONSTRAINT [df_tblEvent_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblEvent] ADD  CONSTRAINT [df_tblEvent_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblExternalSystem] ADD  CONSTRAINT [df_tblExternalSystem_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblExternalSystem] ADD  CONSTRAINT [df_tblExternalSystem_Status_ID]  DEFAULT ((0)) FOR [Status_ID]
GO
ALTER TABLE [mdm].[tblExternalSystem] ADD  CONSTRAINT [df_tblExternalSystem_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblExternalSystem] ADD  CONSTRAINT [df_tblExternalSystem_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblFile] ADD  CONSTRAINT [df_tblFile_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblFile] ADD  CONSTRAINT [df_tblFile_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblFile] ADD  CONSTRAINT [df_tblFile_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblHierarchy] ADD  CONSTRAINT [df_tblHierarchy_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblHierarchy] ADD  CONSTRAINT [df_tblHierarchy_IsMandatory]  DEFAULT ((1)) FOR [IsMandatory]
GO
ALTER TABLE [mdm].[tblHierarchy] ADD  CONSTRAINT [df_tblHierarchy_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblHierarchy] ADD  CONSTRAINT [df_tblHierarchy_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblIndex] ADD  CONSTRAINT [df_tblIndex_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblIndex] ADD  CONSTRAINT [df_tblIndex_IsUnique]  DEFAULT ((0)) FOR [IsUnique]
GO
ALTER TABLE [mdm].[tblIndex] ADD  CONSTRAINT [df_tblIndex_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblIndex] ADD  CONSTRAINT [df_tblIndex_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblModel] ADD  CONSTRAINT [df_tblModel_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblModel] ADD  CONSTRAINT [df_tblModel_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblModel] ADD  CONSTRAINT [df_tblModel_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblModelVersion] ADD  CONSTRAINT [df_tblModelVersion_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblModelVersion] ADD  CONSTRAINT [df_tblModelVersion_Status_ID]  DEFAULT ((1)) FOR [Status_ID]
GO
ALTER TABLE [mdm].[tblModelVersion] ADD  CONSTRAINT [df_tblModelVersion_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblModelVersion] ADD  CONSTRAINT [df_tblModelVersion_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblModelVersionFlag] ADD  CONSTRAINT [df_tblModelVersionFlag_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblModelVersionFlag] ADD  CONSTRAINT [df_tblModelVersionFlag_Status_ID]  DEFAULT ((1)) FOR [Status_ID]
GO
ALTER TABLE [mdm].[tblModelVersionFlag] ADD  CONSTRAINT [df_tblModelVersionFlag_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblModelVersionFlag] ADD  CONSTRAINT [df_tblModelVersionFlag_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblNotificationQueue] ADD  CONSTRAINT [df_tblNotificationQueue_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSecurityAccessControl] ADD  CONSTRAINT [df_tblSecurityAccessControl_PrincipalType_ID]  DEFAULT ((0)) FOR [PrincipalType_ID]
GO
ALTER TABLE [mdm].[tblSecurityAccessControl] ADD  CONSTRAINT [df_tblSecurityAccessControl_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSecurityAccessControl] ADD  CONSTRAINT [df_tblSecurityAccessControl_EnterUserID]  DEFAULT ((-1)) FOR [EnterUserID]
GO
ALTER TABLE [mdm].[tblSecurityAccessControl] ADD  CONSTRAINT [df_tblSecurityAccessControl_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblSecurityAccessControl] ADD  CONSTRAINT [df_tblSecurityAccessControl_LastChgUserID]  DEFAULT ((-1)) FOR [LastChgUserID]
GO
ALTER TABLE [mdm].[tblSecurityAccessControl] ADD  CONSTRAINT [df_tblSecurityAccessControl_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblSecurityObject] ADD  CONSTRAINT [df_tblSecurityObject_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [mdm].[tblSecurityRole] ADD  CONSTRAINT [df_tblSecurityRole_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblSecurityRole] ADD  CONSTRAINT [df_tblSecurityRole_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSecurityRole] ADD  CONSTRAINT [df_tblSecurityRole_EnterUserID]  DEFAULT ((-1)) FOR [EnterUserID]
GO
ALTER TABLE [mdm].[tblSecurityRole] ADD  CONSTRAINT [df_tblSecurityRole_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblSecurityRole] ADD  CONSTRAINT [df_tblSecurityRole_LastChgUserID]  DEFAULT ((-1)) FOR [LastChgUserID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess] ADD  CONSTRAINT [df_tblSecurityRoleAccess_AccessPermission]  DEFAULT ((0)) FOR [AccessPermission]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess] ADD  CONSTRAINT [df_tblSecurityRoleAccess_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess] ADD  CONSTRAINT [df_tblSecurityRoleAccess_EnterUserID]  DEFAULT ((-1)) FOR [EnterUserID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess] ADD  CONSTRAINT [df_tblSecurityRoleAccess_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess] ADD  CONSTRAINT [df_tblSecurityRoleAccess_LastChgUserID]  DEFAULT ((-1)) FOR [LastChgUserID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess] ADD  CONSTRAINT [df_tblSecurityRoleAccess_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessFunctional] ADD  CONSTRAINT [df_tblSecurityRoleAccessFunctional_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessFunctional] ADD  CONSTRAINT [df_tblSecurityRoleAccessFunctional_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessFunctional] ADD  CONSTRAINT [df_tblSecurityRoleAccessFunctional_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] ADD  CONSTRAINT [df_tblSecurityRoleAccessMember_AccessPermission]  DEFAULT ((0)) FOR [AccessPermission]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] ADD  CONSTRAINT [df_tblSecurityRoleAccessMember_Status_ID]  DEFAULT ((0)) FOR [IsInitialized]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] ADD  CONSTRAINT [df_tblSecurityRoleAccessMember_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] ADD  CONSTRAINT [df_tblSecurityRoleAccessMember_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] ADD  CONSTRAINT [df_tblSecurityRoleAccessMember_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblStgBatch] ADD  CONSTRAINT [df_tblStgBatch_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblStgBatch] ADD  CONSTRAINT [df_tblStgBatch_Status_ID]  DEFAULT ((0)) FOR [Status_ID]
GO
ALTER TABLE [mdm].[tblSubscriptionView] ADD  CONSTRAINT [df_tblSubscriptionView_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblSubscriptionView] ADD  CONSTRAINT [df_tblSubscriptionView_IncludeSoftDeletedMembers]  DEFAULT ((0)) FOR [IncludeSoftDeletedMembers]
GO
ALTER TABLE [mdm].[tblSubscriptionView] ADD  CONSTRAINT [df_tblSubscriptionView_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSubscriptionView] ADD  CONSTRAINT [df_tblSubscriptionView_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblSyncRelationship] ADD  CONSTRAINT [df_tblSyncRelationship_TargetEntityNameIsAliased]  DEFAULT ((0)) FOR [TargetEntityNameIsAliased]
GO
ALTER TABLE [mdm].[tblSyncRelationship] ADD  CONSTRAINT [df_tblSyncRelationship_LastSyncAttemptStatus]  DEFAULT ((0)) FOR [LastSyncAttemptStatus]
GO
ALTER TABLE [mdm].[tblSyncRelationship] ADD  CONSTRAINT [df_tblSyncRelationship_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSyncRelationship] ADD  CONSTRAINT [df_tblSyncRelationship_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblSystem] ADD  CONSTRAINT [df_tblSystem_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSystem] ADD  CONSTRAINT [df_tblSystem_EnterUserID]  DEFAULT (suser_sname()) FOR [EnterUserID]
GO
ALTER TABLE [mdm].[tblSystem] ADD  CONSTRAINT [df_tblSystem_LastChgUserID]  DEFAULT (suser_sname()) FOR [LastChgUserID]
GO
ALTER TABLE [mdm].[tblSystem] ADD  CONSTRAINT [df_tblSystem_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblSystemSetting] ADD  CONSTRAINT [df_tblSystemSetting_SettingType_ID]  DEFAULT ((1)) FOR [SettingType_ID]
GO
ALTER TABLE [mdm].[tblSystemSetting] ADD  CONSTRAINT [df_tblSystemSetting_DataType_ID]  DEFAULT ((1)) FOR [DataType_ID]
GO
ALTER TABLE [mdm].[tblSystemSetting] ADD  CONSTRAINT [df_tblSystemSetting_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblSystemSetting] ADD  CONSTRAINT [df_tblSystemSetting_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblSystemSetting] ADD  CONSTRAINT [df_tblSystemSetting_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblSystemSetting] ADD  CONSTRAINT [df_tblSystemSetting_GroupID]  DEFAULT ((1)) FOR [SystemSettingGroup_ID]
GO
ALTER TABLE [mdm].[tblSystemSetting] ADD  CONSTRAINT [df_tblSystemSetting_DisplaySequence]  DEFAULT ((1)) FOR [DisplaySequence]
GO
ALTER TABLE [mdm].[tblSystemSettingGroup] ADD  CONSTRAINT [df_tblSystemSettingGroup_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblUser] ADD  CONSTRAINT [df_tblUser_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblUser] ADD  CONSTRAINT [df_tblUser_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblUser] ADD  CONSTRAINT [df_tblUser_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblUserGroup] ADD  CONSTRAINT [df_tblUserGroup_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblUserGroup] ADD  CONSTRAINT [df_tblUserGroup_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblUserGroup] ADD  CONSTRAINT [df_tblUserGroup_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblUserGroupAssignment] ADD  CONSTRAINT [df_tblUserGroupAssignment_MUID]  DEFAULT (newid()) FOR [MUID]
GO
ALTER TABLE [mdm].[tblUserGroupAssignment] ADD  CONSTRAINT [df_tblUserGroupAssignment_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblUserGroupAssignment] ADD  CONSTRAINT [df_tblUserGroupAssignment_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [mdm].[tblUserPreference] ADD  CONSTRAINT [df_tblUserPreference_EnterDTM]  DEFAULT (getutcdate()) FOR [EnterDTM]
GO
ALTER TABLE [mdm].[tblUserPreference] ADD  CONSTRAINT [df_tblUserPreference_LastChgDTM]  DEFAULT (getutcdate()) FOR [LastChgDTM]
GO
ALTER TABLE [dbo].[zakaz]  WITH CHECK ADD  CONSTRAINT [fk_codf] FOREIGN KEY([codf])
REFERENCES [dbo].[firma] ([codf])
GO
ALTER TABLE [dbo].[zakaz] CHECK CONSTRAINT [fk_codf]
GO
ALTER TABLE [dbo].[zakaz]  WITH CHECK ADD  CONSTRAINT [fk_codgotov] FOREIGN KEY([codgotov])
REFERENCES [dbo].[gotov] ([codgotov])
GO
ALTER TABLE [dbo].[zakaz] CHECK CONSTRAINT [fk_codgotov]
GO
ALTER TABLE [mdm].[tblAttribute]  WITH CHECK ADD  CONSTRAINT [fk_tblAttribute_tblAttribute_FilterParentAttribute_ID] FOREIGN KEY([FilterParentAttribute_ID])
REFERENCES [mdm].[tblAttribute] ([ID])
GO
ALTER TABLE [mdm].[tblAttribute] CHECK CONSTRAINT [fk_tblAttribute_tblAttribute_FilterParentAttribute_ID]
GO
ALTER TABLE [mdm].[tblAttribute]  WITH CHECK ADD  CONSTRAINT [fk_tblAttribute_tblAttribute_Source_ID] FOREIGN KEY([Source_ID])
REFERENCES [mdm].[tblAttribute] ([ID])
GO
ALTER TABLE [mdm].[tblAttribute] CHECK CONSTRAINT [fk_tblAttribute_tblAttribute_Source_ID]
GO
ALTER TABLE [mdm].[tblAttribute]  WITH CHECK ADD  CONSTRAINT [fk_tblAttribute_tblDerivedHierarchyDetail_FilterHierarchyDetail_ID] FOREIGN KEY([FilterHierarchyDetail_ID])
REFERENCES [mdm].[tblDerivedHierarchyDetail] ([ID])
GO
ALTER TABLE [mdm].[tblAttribute] CHECK CONSTRAINT [fk_tblAttribute_tblDerivedHierarchyDetail_FilterHierarchyDetail_ID]
GO
ALTER TABLE [mdm].[tblAttribute]  WITH CHECK ADD  CONSTRAINT [fk_tblAttribute_tblEntity_DomainEntity_ID] FOREIGN KEY([DomainEntity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
GO
ALTER TABLE [mdm].[tblAttribute] CHECK CONSTRAINT [fk_tblAttribute_tblEntity_DomainEntity_ID]
GO
ALTER TABLE [mdm].[tblAttribute]  WITH CHECK ADD  CONSTRAINT [fk_tblAttribute_tblEntity_Entity_ID] FOREIGN KEY([Entity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
GO
ALTER TABLE [mdm].[tblAttribute] CHECK CONSTRAINT [fk_tblAttribute_tblEntity_Entity_ID]
GO
ALTER TABLE [mdm].[tblAttributeGroup]  WITH CHECK ADD  CONSTRAINT [fk_tblAttributeGroup_tblEntity_Entity_ID] FOREIGN KEY([Entity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblAttributeGroup] CHECK CONSTRAINT [fk_tblAttributeGroup_tblEntity_Entity_ID]
GO
ALTER TABLE [mdm].[tblAttributeGroupDetail]  WITH CHECK ADD  CONSTRAINT [fk_tblAttributeGroupDetail_tblAttribute_AttributeGroup_ID] FOREIGN KEY([AttributeGroup_ID])
REFERENCES [mdm].[tblAttributeGroup] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblAttributeGroupDetail] CHECK CONSTRAINT [fk_tblAttributeGroupDetail_tblAttribute_AttributeGroup_ID]
GO
ALTER TABLE [mdm].[tblAttributeGroupDetail]  WITH CHECK ADD  CONSTRAINT [fk_tblAttributeGroupDetail_tblAttribute_AttributeID] FOREIGN KEY([Attribute_ID])
REFERENCES [mdm].[tblAttribute] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblAttributeGroupDetail] CHECK CONSTRAINT [fk_tblAttributeGroupDetail_tblAttribute_AttributeID]
GO
ALTER TABLE [mdm].[tblBRBusinessRule]  WITH CHECK ADD  CONSTRAINT [fk_tblBRBusinessRule_tblEntity_Entity_ID] FOREIGN KEY([Entity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblBRBusinessRule] CHECK CONSTRAINT [fk_tblBRBusinessRule_tblEntity_Entity_ID]
GO
ALTER TABLE [mdm].[tblBRItem]  WITH CHECK ADD  CONSTRAINT [fk_tblBRItem_tblBRItemTypeAppliesTo_BRItemAppliesTo_ID] FOREIGN KEY([BRItemAppliesTo_ID])
REFERENCES [mdm].[tblBRItemTypeAppliesTo] ([ID])
GO
ALTER TABLE [mdm].[tblBRItem] CHECK CONSTRAINT [fk_tblBRItem_tblBRItemTypeAppliesTo_BRItemAppliesTo_ID]
GO
ALTER TABLE [mdm].[tblBRItem]  WITH CHECK ADD  CONSTRAINT [fk_tblBRItem_tblLogicalOperatorGroup_BRLogicalOperatorGroup_ID] FOREIGN KEY([BRLogicalOperatorGroup_ID])
REFERENCES [mdm].[tblBRLogicalOperatorGroup] ([ID])
GO
ALTER TABLE [mdm].[tblBRItem] CHECK CONSTRAINT [fk_tblBRItem_tblLogicalOperatorGroup_BRLogicalOperatorGroup_ID]
GO
ALTER TABLE [mdm].[tblBRItemProperties]  WITH CHECK ADD  CONSTRAINT [fk_tblBRItemProperties_tblBRItem_BRItem_ID] FOREIGN KEY([BRItem_ID])
REFERENCES [mdm].[tblBRItem] ([ID])
GO
ALTER TABLE [mdm].[tblBRItemProperties] CHECK CONSTRAINT [fk_tblBRItemProperties_tblBRItem_BRItem_ID]
GO
ALTER TABLE [mdm].[tblBRItemTypeAppliesTo]  WITH CHECK ADD  CONSTRAINT [fk_tblBRItemTypeAppliesTo_tblListRelationship_ApplyTo_ID] FOREIGN KEY([ApplyTo_ID])
REFERENCES [mdm].[tblListRelationship] ([ID])
GO
ALTER TABLE [mdm].[tblBRItemTypeAppliesTo] CHECK CONSTRAINT [fk_tblBRItemTypeAppliesTo_tblListRelationship_ApplyTo_ID]
GO
ALTER TABLE [mdm].[tblBRLogicalOperatorGroup]  WITH CHECK ADD  CONSTRAINT [fk_tblBRLogicalOperatorGroup_tblBRBusinessRule_BusinessRule_ID] FOREIGN KEY([BusinessRule_ID])
REFERENCES [mdm].[tblBRBusinessRule] ([ID])
GO
ALTER TABLE [mdm].[tblBRLogicalOperatorGroup] CHECK CONSTRAINT [fk_tblBRLogicalOperatorGroup_tblBRBusinessRule_BusinessRule_ID]
GO
ALTER TABLE [mdm].[tblCodeGenInfo]  WITH CHECK ADD  CONSTRAINT [FK_tblCodeGenInfo_tblEntity] FOREIGN KEY([EntityId])
REFERENCES [mdm].[tblEntity] ([ID])
GO
ALTER TABLE [mdm].[tblCodeGenInfo] CHECK CONSTRAINT [FK_tblCodeGenInfo_tblEntity]
GO
ALTER TABLE [mdm].[tblDerivedHierarchy]  WITH CHECK ADD  CONSTRAINT [fk_tblDerivedHierarchy_tblModel_Model_ID] FOREIGN KEY([Model_ID])
REFERENCES [mdm].[tblModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblDerivedHierarchy] CHECK CONSTRAINT [fk_tblDerivedHierarchy_tblModel_Model_ID]
GO
ALTER TABLE [mdm].[tblDerivedHierarchyDetail]  WITH CHECK ADD  CONSTRAINT [fk_tblDerivedHierarchyDetail_ManyToManyChildAttribute_ID_tblAttribute_ID] FOREIGN KEY([ManyToManyChildAttribute_ID])
REFERENCES [mdm].[tblAttribute] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblDerivedHierarchyDetail] CHECK CONSTRAINT [fk_tblDerivedHierarchyDetail_ManyToManyChildAttribute_ID_tblAttribute_ID]
GO
ALTER TABLE [mdm].[tblDerivedHierarchyDetail]  WITH CHECK ADD  CONSTRAINT [fk_tblDerivedHierarchyDetail_tblDerivedHierarchy_DerivedHierarchy_ID] FOREIGN KEY([DerivedHierarchy_ID])
REFERENCES [mdm].[tblDerivedHierarchy] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblDerivedHierarchyDetail] CHECK CONSTRAINT [fk_tblDerivedHierarchyDetail_tblDerivedHierarchy_DerivedHierarchy_ID]
GO
ALTER TABLE [mdm].[tblEntity]  WITH CHECK ADD  CONSTRAINT [fk_tblEntity_tblModel_Model_ID] FOREIGN KEY([Model_ID])
REFERENCES [mdm].[tblModel] ([ID])
GO
ALTER TABLE [mdm].[tblEntity] CHECK CONSTRAINT [fk_tblEntity_tblModel_Model_ID]
GO
ALTER TABLE [mdm].[tblEvent]  WITH CHECK ADD  CONSTRAINT [fk_tblEvent_Entity_ID] FOREIGN KEY([Entity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblEvent] CHECK CONSTRAINT [fk_tblEvent_Entity_ID]
GO
ALTER TABLE [mdm].[tblEvent]  WITH CHECK ADD  CONSTRAINT [fk_tblEvent_Version_ID] FOREIGN KEY([Version_ID])
REFERENCES [mdm].[tblModelVersion] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblEvent] CHECK CONSTRAINT [fk_tblEvent_Version_ID]
GO
ALTER TABLE [mdm].[tblFile]  WITH CHECK ADD  CONSTRAINT [fk_tblFile_tblFile_Source_ID] FOREIGN KEY([Source_ID])
REFERENCES [mdm].[tblFile] ([ID])
GO
ALTER TABLE [mdm].[tblFile] CHECK CONSTRAINT [fk_tblFile_tblFile_Source_ID]
GO
ALTER TABLE [mdm].[tblHierarchy]  WITH CHECK ADD  CONSTRAINT [fk_tblHierarchy_tblEntity_Entity_ID] FOREIGN KEY([Entity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
GO
ALTER TABLE [mdm].[tblHierarchy] CHECK CONSTRAINT [fk_tblHierarchy_tblEntity_Entity_ID]
GO
ALTER TABLE [mdm].[tblIndex]  WITH CHECK ADD  CONSTRAINT [fk_tblIndex_tblEntity_Entity_ID] FOREIGN KEY([Entity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
GO
ALTER TABLE [mdm].[tblIndex] CHECK CONSTRAINT [fk_tblIndex_tblEntity_Entity_ID]
GO
ALTER TABLE [mdm].[tblListRelationship]  WITH CHECK ADD  CONSTRAINT [fk_tblListRelationship_tblListRelationshipType_ListRelationshipType_ID] FOREIGN KEY([ListRelationshipType_ID])
REFERENCES [mdm].[tblListRelationshipType] ([ID])
GO
ALTER TABLE [mdm].[tblListRelationship] CHECK CONSTRAINT [fk_tblListRelationship_tblListRelationshipType_ListRelationshipType_ID]
GO
ALTER TABLE [mdm].[tblModelVersion]  WITH CHECK ADD  CONSTRAINT [fk_tblModelVersion_tblModel_Model_ID] FOREIGN KEY([Model_ID])
REFERENCES [mdm].[tblModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblModelVersion] CHECK CONSTRAINT [fk_tblModelVersion_tblModel_Model_ID]
GO
ALTER TABLE [mdm].[tblModelVersion]  WITH CHECK ADD  CONSTRAINT [fk_tblModelVersion_tblModelVersionFlag_VersionFlag_ID] FOREIGN KEY([VersionFlag_ID])
REFERENCES [mdm].[tblModelVersionFlag] ([ID])
GO
ALTER TABLE [mdm].[tblModelVersion] CHECK CONSTRAINT [fk_tblModelVersion_tblModelVersionFlag_VersionFlag_ID]
GO
ALTER TABLE [mdm].[tblModelVersionFlag]  WITH CHECK ADD  CONSTRAINT [fk_tblModelVersionFlag_tblModel_Model_ID] FOREIGN KEY([Model_ID])
REFERENCES [mdm].[tblModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblModelVersionFlag] CHECK CONSTRAINT [fk_tblModelVersionFlag_tblModel_Model_ID]
GO
ALTER TABLE [mdm].[tblNotificationQueue]  WITH CHECK ADD  CONSTRAINT [fk_tblNotificationQueue_tblModel_Model_ID] FOREIGN KEY([Model_ID])
REFERENCES [mdm].[tblModel] ([ID])
GO
ALTER TABLE [mdm].[tblNotificationQueue] CHECK CONSTRAINT [fk_tblNotificationQueue_tblModel_Model_ID]
GO
ALTER TABLE [mdm].[tblNotificationQueue]  WITH CHECK ADD  CONSTRAINT [fk_tblNotificationQueue_tblModelVersion_Version_ID] FOREIGN KEY([Version_ID])
REFERENCES [mdm].[tblModelVersion] ([ID])
GO
ALTER TABLE [mdm].[tblNotificationQueue] CHECK CONSTRAINT [fk_tblNotificationQueue_tblModelVersion_Version_ID]
GO
ALTER TABLE [mdm].[tblNotificationUsers]  WITH CHECK ADD  CONSTRAINT [fk_tblNotificationUsers_tblUser_UserID] FOREIGN KEY([User_ID])
REFERENCES [mdm].[tblUser] ([ID])
GO
ALTER TABLE [mdm].[tblNotificationUsers] CHECK CONSTRAINT [fk_tblNotificationUsers_tblUser_UserID]
GO
ALTER TABLE [mdm].[tblSecurityAccessControl]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityAccessControl_tblSecurityRole_Role_ID] FOREIGN KEY([Role_ID])
REFERENCES [mdm].[tblSecurityRole] ([ID])
GO
ALTER TABLE [mdm].[tblSecurityAccessControl] CHECK CONSTRAINT [fk_tblSecurityAccessControl_tblSecurityRole_Role_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccess_tblModel_Model_ID] FOREIGN KEY([Model_ID])
REFERENCES [mdm].[tblModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess] CHECK CONSTRAINT [fk_tblSecurityRoleAccess_tblModel_Model_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccess_tblSecurityPrivilege_Privilege_ID] FOREIGN KEY([Privilege_ID])
REFERENCES [mdm].[tblSecurityPrivilege] ([ID])
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess] CHECK CONSTRAINT [fk_tblSecurityRoleAccess_tblSecurityPrivilege_Privilege_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccess_tblSecurityRole_Role_ID] FOREIGN KEY([Role_ID])
REFERENCES [mdm].[tblSecurityRole] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblSecurityRoleAccess] CHECK CONSTRAINT [fk_tblSecurityRoleAccess_tblSecurityRole_Role_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessFunctional]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccessFunctional_tblSecurityFunctionalPrivilege_FunctionalPrivilege_ID] FOREIGN KEY([FunctionalPrivilege_ID])
REFERENCES [mdm].[tblSecurityPrivilegeFunctional] ([ID])
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessFunctional] CHECK CONSTRAINT [fk_tblSecurityRoleAccessFunctional_tblSecurityFunctionalPrivilege_FunctionalPrivilege_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessFunctional]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccessFunctional_tblSecurityRole_Role_ID] FOREIGN KEY([Role_ID])
REFERENCES [mdm].[tblSecurityRole] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessFunctional] CHECK CONSTRAINT [fk_tblSecurityRoleAccessFunctional_tblSecurityRole_Role_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccessMember_tblEntity_Entity_ID] FOREIGN KEY([Entity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] CHECK CONSTRAINT [fk_tblSecurityRoleAccessMember_tblEntity_Entity_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccessMember_tblHierarchy_DerivedHierarchy_ID] FOREIGN KEY([DerivedHierarchy_ID])
REFERENCES [mdm].[tblDerivedHierarchy] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] CHECK CONSTRAINT [fk_tblSecurityRoleAccessMember_tblHierarchy_DerivedHierarchy_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccessMember_tblHierarchy_ExplicitHierarchy_ID] FOREIGN KEY([ExplicitHierarchy_ID])
REFERENCES [mdm].[tblHierarchy] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] CHECK CONSTRAINT [fk_tblSecurityRoleAccessMember_tblHierarchy_ExplicitHierarchy_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccessMember_tblModelVersion_Version_ID] FOREIGN KEY([Version_ID])
REFERENCES [mdm].[tblModelVersion] ([ID])
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] CHECK CONSTRAINT [fk_tblSecurityRoleAccessMember_tblModelVersion_Version_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccessMember_tblSecurityPrivilege_Privilege_ID] FOREIGN KEY([Privilege_ID])
REFERENCES [mdm].[tblSecurityPrivilege] ([ID])
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] CHECK CONSTRAINT [fk_tblSecurityRoleAccessMember_tblSecurityPrivilege_Privilege_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember]  WITH CHECK ADD  CONSTRAINT [fk_tblSecurityRoleAccessMember_tblSecurityRole_Role_ID] FOREIGN KEY([Role_ID])
REFERENCES [mdm].[tblSecurityRole] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] CHECK CONSTRAINT [fk_tblSecurityRoleAccessMember_tblSecurityRole_Role_ID]
GO
ALTER TABLE [mdm].[tblStgBatch]  WITH CHECK ADD  CONSTRAINT [fk_tblStgBatch_tblEntity_Entity_ID] FOREIGN KEY([Entity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
GO
ALTER TABLE [mdm].[tblStgBatch] CHECK CONSTRAINT [fk_tblStgBatch_tblEntity_Entity_ID]
GO
ALTER TABLE [mdm].[tblSubscriptionView]  WITH CHECK ADD  CONSTRAINT [fk_tblSubscriptionView_tblDerivedHierarchy] FOREIGN KEY([DerivedHierarchy_ID])
REFERENCES [mdm].[tblDerivedHierarchy] ([ID])
GO
ALTER TABLE [mdm].[tblSubscriptionView] CHECK CONSTRAINT [fk_tblSubscriptionView_tblDerivedHierarchy]
GO
ALTER TABLE [mdm].[tblSubscriptionView]  WITH CHECK ADD  CONSTRAINT [fk_tblSubscriptionView_tblEntity] FOREIGN KEY([Entity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
GO
ALTER TABLE [mdm].[tblSubscriptionView] CHECK CONSTRAINT [fk_tblSubscriptionView_tblEntity]
GO
ALTER TABLE [mdm].[tblSubscriptionView]  WITH CHECK ADD  CONSTRAINT [fk_tblSubscriptionView_tblModel] FOREIGN KEY([Model_ID])
REFERENCES [mdm].[tblModel] ([ID])
GO
ALTER TABLE [mdm].[tblSubscriptionView] CHECK CONSTRAINT [fk_tblSubscriptionView_tblModel]
GO
ALTER TABLE [mdm].[tblSubscriptionView]  WITH CHECK ADD  CONSTRAINT [fk_tblSubscriptionView_tblModelVersion] FOREIGN KEY([ModelVersion_ID])
REFERENCES [mdm].[tblModelVersion] ([ID])
GO
ALTER TABLE [mdm].[tblSubscriptionView] CHECK CONSTRAINT [fk_tblSubscriptionView_tblModelVersion]
GO
ALTER TABLE [mdm].[tblSyncRelationship]  WITH CHECK ADD  CONSTRAINT [fk_tblSyncRelationship_tblEntity_SourceEntity_ID] FOREIGN KEY([SourceEntity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
GO
ALTER TABLE [mdm].[tblSyncRelationship] CHECK CONSTRAINT [fk_tblSyncRelationship_tblEntity_SourceEntity_ID]
GO
ALTER TABLE [mdm].[tblSyncRelationship]  WITH CHECK ADD  CONSTRAINT [fk_tblSyncRelationship_tblEntity_TargetEntity_ID] FOREIGN KEY([TargetEntity_ID])
REFERENCES [mdm].[tblEntity] ([ID])
GO
ALTER TABLE [mdm].[tblSyncRelationship] CHECK CONSTRAINT [fk_tblSyncRelationship_tblEntity_TargetEntity_ID]
GO
ALTER TABLE [mdm].[tblSyncRelationship]  WITH CHECK ADD  CONSTRAINT [fk_tblSyncRelationship_tblVersion_SourceVersion_ID] FOREIGN KEY([SourceVersion_ID])
REFERENCES [mdm].[tblModelVersion] ([ID])
GO
ALTER TABLE [mdm].[tblSyncRelationship] CHECK CONSTRAINT [fk_tblSyncRelationship_tblVersion_SourceVersion_ID]
GO
ALTER TABLE [mdm].[tblSyncRelationship]  WITH CHECK ADD  CONSTRAINT [fk_tblSyncRelationship_tblVersion_TargetVersion_ID] FOREIGN KEY([TargetVersion_ID])
REFERENCES [mdm].[tblModelVersion] ([ID])
GO
ALTER TABLE [mdm].[tblSyncRelationship] CHECK CONSTRAINT [fk_tblSyncRelationship_tblVersion_TargetVersion_ID]
GO
ALTER TABLE [mdm].[tblSystemSetting]  WITH CHECK ADD  CONSTRAINT [fk_tblSystemSetting_tblSystemSettingGroup] FOREIGN KEY([SystemSettingGroup_ID])
REFERENCES [mdm].[tblSystemSettingGroup] ([ID])
GO
ALTER TABLE [mdm].[tblSystemSetting] CHECK CONSTRAINT [fk_tblSystemSetting_tblSystemSettingGroup]
GO
ALTER TABLE [mdm].[tblUserGroupAssignment]  WITH CHECK ADD  CONSTRAINT [fk_tblUserGroupAssignment_tblUser_UserID] FOREIGN KEY([User_ID])
REFERENCES [mdm].[tblUser] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblUserGroupAssignment] CHECK CONSTRAINT [fk_tblUserGroupAssignment_tblUser_UserID]
GO
ALTER TABLE [mdm].[tblUserGroupAssignment]  WITH CHECK ADD  CONSTRAINT [fk_tblUserGroupAssignment_tblUserGroup_UserGroupID] FOREIGN KEY([UserGroup_ID])
REFERENCES [mdm].[tblUserGroup] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblUserGroupAssignment] CHECK CONSTRAINT [fk_tblUserGroupAssignment_tblUserGroup_UserGroupID]
GO
ALTER TABLE [mdm].[tblUserPreference]  WITH CHECK ADD  CONSTRAINT [fk_tblUserPreference_tblUserPreference_User_ID] FOREIGN KEY([User_ID])
REFERENCES [mdm].[tblUser] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [mdm].[tblUserPreference] CHECK CONSTRAINT [fk_tblUserPreference_tblUserPreference_User_ID]
GO
ALTER TABLE [mdm].[tblAttribute]  WITH CHECK ADD  CONSTRAINT [ck_tblAttribute_AttributeType_ID] CHECK  (([AttributeType_ID]>=(1) AND [AttributeType_ID]<=(4)))
GO
ALTER TABLE [mdm].[tblAttribute] CHECK CONSTRAINT [ck_tblAttribute_AttributeType_ID]
GO
ALTER TABLE [mdm].[tblAttribute]  WITH CHECK ADD  CONSTRAINT [ck_tblAttribute_DataType_ID] CHECK  (([DataType_ID]>=(0) AND [DataType_ID]<=(7)))
GO
ALTER TABLE [mdm].[tblAttribute] CHECK CONSTRAINT [ck_tblAttribute_DataType_ID]
GO
ALTER TABLE [mdm].[tblAttributeGroup]  WITH CHECK ADD  CONSTRAINT [ck_tblAttributeGroup_MemberType_ID] CHECK  (([MemberType_ID]>=(1) AND [MemberType_ID]<=(3)))
GO
ALTER TABLE [mdm].[tblAttributeGroup] CHECK CONSTRAINT [ck_tblAttributeGroup_MemberType_ID]
GO
ALTER TABLE [mdm].[tblDerivedHierarchyDetail]  WITH CHECK ADD  CONSTRAINT [ck_tblDerivedHierarchyDetail_ForeignType_ID] CHECK  (([ForeignType_ID]>=(0) AND [ForeignType_ID]<=(5)))
GO
ALTER TABLE [mdm].[tblDerivedHierarchyDetail] CHECK CONSTRAINT [ck_tblDerivedHierarchyDetail_ForeignType_ID]
GO
ALTER TABLE [mdm].[tblEvent]  WITH CHECK ADD  CONSTRAINT [ck_tblEvent_EventStatus_ID] CHECK  (([EventStatus_ID]>=(1) AND [EventStatus_ID]<=(3)))
GO
ALTER TABLE [mdm].[tblEvent] CHECK CONSTRAINT [ck_tblEvent_EventStatus_ID]
GO
ALTER TABLE [mdm].[tblExternalSystem]  WITH CHECK ADD  CONSTRAINT [ck_tblExternalSystem_Status_ID] CHECK  (([Status_ID]>=(0) AND [Status_ID]<=(6)))
GO
ALTER TABLE [mdm].[tblExternalSystem] CHECK CONSTRAINT [ck_tblExternalSystem_Status_ID]
GO
ALTER TABLE [mdm].[tblModelVersion]  WITH CHECK ADD  CONSTRAINT [ck_tblModelVersion_Status_ID] CHECK  (([Status_ID]>=(1) AND [Status_ID]<=(3)))
GO
ALTER TABLE [mdm].[tblModelVersion] CHECK CONSTRAINT [ck_tblModelVersion_Status_ID]
GO
ALTER TABLE [mdm].[tblModelVersionFlag]  WITH CHECK ADD  CONSTRAINT [ck_tblModelVersionFlag_CommittedOnly_ID] CHECK  (([CommittedOnly_ID]>=(0) AND [CommittedOnly_ID]<=(2)))
GO
ALTER TABLE [mdm].[tblModelVersionFlag] CHECK CONSTRAINT [ck_tblModelVersionFlag_CommittedOnly_ID]
GO
ALTER TABLE [mdm].[tblModelVersionFlag]  WITH CHECK ADD  CONSTRAINT [ck_tblModelVersionFlag_Status_ID] CHECK  (([Status_ID]>=(1) AND [Status_ID]<=(3)))
GO
ALTER TABLE [mdm].[tblModelVersionFlag] CHECK CONSTRAINT [ck_tblModelVersionFlag_Status_ID]
GO
ALTER TABLE [mdm].[tblSecurityAccessControl]  WITH CHECK ADD  CONSTRAINT [ck_tblSecurityAccessControl_PrincipalType_ID] CHECK  (([PrincipalType_ID]>=(0) AND [PrincipalType_ID]<=(2)))
GO
ALTER TABLE [mdm].[tblSecurityAccessControl] CHECK CONSTRAINT [ck_tblSecurityAccessControl_PrincipalType_ID]
GO
ALTER TABLE [mdm].[tblSecurityObject]  WITH CHECK ADD  CONSTRAINT [ck_tblSecurityObject_Code] CHECK  ((len(ltrim(rtrim([Code])))=(6)))
GO
ALTER TABLE [mdm].[tblSecurityObject] CHECK CONSTRAINT [ck_tblSecurityObject_Code]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember]  WITH CHECK ADD  CONSTRAINT [ck_tblSecurityRoleAccessMember_HierarchyType_ID] CHECK  (([HierarchyType_ID]=(1) OR [HierarchyType_ID]=(0)))
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] CHECK CONSTRAINT [ck_tblSecurityRoleAccessMember_HierarchyType_ID]
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember]  WITH CHECK ADD  CONSTRAINT [ck_tblSecurityRoleAccessMember_MemberType_ID] CHECK  (([MemberType_ID]=(2) OR [MemberType_ID]=(1)))
GO
ALTER TABLE [mdm].[tblSecurityRoleAccessMember] CHECK CONSTRAINT [ck_tblSecurityRoleAccessMember_MemberType_ID]
GO
ALTER TABLE [mdm].[tblStgBatch]  WITH CHECK ADD  CONSTRAINT [ck_tblStgBatch_Status_ID] CHECK  (([Status_ID]>=(0) AND [Status_ID]<=(7)))
GO
ALTER TABLE [mdm].[tblStgBatch] CHECK CONSTRAINT [ck_tblStgBatch_Status_ID]
GO
ALTER TABLE [mdm].[tblSystem]  WITH CHECK ADD  CONSTRAINT [ck_tblSystem_ID] CHECK  (([ID]=(1)))
GO
ALTER TABLE [mdm].[tblSystem] CHECK CONSTRAINT [ck_tblSystem_ID]
GO
ALTER TABLE [mdm].[tblUser]  WITH CHECK ADD  CONSTRAINT [ck_tblUser_Status_ID] CHECK  (([Status_ID]>=(1) AND [Status_ID]<=(3)))
GO
ALTER TABLE [mdm].[tblUser] CHECK CONSTRAINT [ck_tblUser_Status_ID]
GO
ALTER TABLE [mdm].[tblUserGroup]  WITH CHECK ADD  CONSTRAINT [ck_tblUserGroup_Status_ID] CHECK  (([Status_ID]>=(1) AND [Status_ID]<=(3)))
GO
ALTER TABLE [mdm].[tblUserGroup] CHECK CONSTRAINT [ck_tblUserGroup_Status_ID]
GO

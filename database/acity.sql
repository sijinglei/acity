USE [ACity]
GO
/****** Object:  Table [dbo].[dt_user_groups]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[grade] [int] NULL,
	[upgrade_exp] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[discount] [int] NULL,
	[is_default] [tinyint] NULL,
	[is_upgrade] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_USER_GROUPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员等级值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'upgrade_exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否注册用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动升级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_upgrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups'
GO
SET IDENTITY_INSERT [dbo].[dt_user_groups] ON
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (1, N'普通会员', 1, 0, CAST(1.00 AS Decimal(9, 2)), 10, 100, 1, 1, 0)
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (2, N'VIP会员', 2, 1000, CAST(0.00 AS Decimal(9, 2)), 0, 99, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[dt_user_groups] OFF
/****** Object:  Table [dbo].[dt_user_group_price]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_group_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[group_id] [int] NULL,
	[price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DT_USER_GROUP_PRICE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price'
GO
/****** Object:  Table [dbo].[dt_user_point_log]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_point_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[value] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_POINT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
SET IDENTITY_INSERT [dbo].[dt_user_point_log] ON
INSERT [dbo].[dt_user_point_log] ([id], [user_id], [user_name], [value], [remark], [add_time]) VALUES (1, 1, N'sijinglei', 10, N'注册赠送积分', CAST(0x0000A38B00F47B36 AS DateTime))
INSERT [dbo].[dt_user_point_log] ([id], [user_id], [user_name], [value], [remark], [add_time]) VALUES (2, 2, N'test123', 10, N'注册赠送积分', CAST(0x0000A38B00F6F682 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_user_point_log] OFF
/****** Object:  Table [dbo].[dt_user_oauth_app]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth_app](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[app_id] [nvarchar](100) NULL,
	[app_key] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_USER_OAUTH_APP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app'
GO
SET IDENTITY_INSERT [dbo].[dt_user_oauth_app] ON
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (1, N'用QQ帐号登录', N'/upload/201301/22/201301222356267017.png', N'API Key', N'Secret Key', N'QQ互联开放平台', 99, 0, N'qq')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (2, N'用新浪微博登录', N'/upload/201301/22/201301222358108990.png', N'API Key', N'Secret Key', N'新浪微博开放平台', 100, 0, N'sina')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (3, N'用淘宝账号登录', N'/upload/201301/22/201301222359116140.png', N'API Key', N'Secret Key', N'淘宝开放平台', 101, 0, N'taobao')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (4, N'用开心网帐号登录', N'/upload/201301/22/201301222359597445.png', N'API Key', N'Secret Key', N'开心网开放平台', 102, 0, N'kaixin')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (5, N'用人人网帐号登录', N'/upload/201301/23/201301230000421311.png', N'API Key', N'Secret Key', N'人人网开放平台', 103, 0, N'renren')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (6, N'用飞信账号登录', N'/upload/201301/23/201301230001220360.png', N'API Key', N'Secret Key', N'中国移动飞信开放平台', 104, 0, N'feixin')
SET IDENTITY_INSERT [dbo].[dt_user_oauth_app] OFF
/****** Object:  Table [dbo].[dt_user_oauth]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[oauth_name] [nvarchar](50) NOT NULL,
	[oauth_access_token] [nvarchar](500) NULL,
	[oauth_openid] [nvarchar](255) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_OAUTH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开放平台名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'access_token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth授权用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth'
GO
/****** Object:  Table [dbo].[dt_user_message]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [tinyint] NULL,
	[post_user_name] [nvarchar](100) NULL,
	[accept_user_name] [nvarchar](100) NULL,
	[is_read] [tinyint] NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[post_time] [datetime] NOT NULL,
	[read_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_MESSAGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息类型0系统消息1收件箱2发件箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'accept_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否查看0未阅1已阅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'is_read'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'read_time'
GO
SET IDENTITY_INSERT [dbo].[dt_user_message] ON
INSERT [dbo].[dt_user_message] ([id], [type], [post_user_name], [accept_user_name], [is_read], [title], [content], [post_time], [read_time]) VALUES (1, 1, N'', N'sijinglei', 0, N'欢迎您成为本站会员', N'欢迎你成为本站会员！', CAST(0x0000A38B00F47B43 AS DateTime), NULL)
INSERT [dbo].[dt_user_message] ([id], [type], [post_user_name], [accept_user_name], [is_read], [title], [content], [post_time], [read_time]) VALUES (2, 1, N'', N'test123', 0, N'欢迎您成为本站会员', N'欢迎你成为本站会员！', CAST(0x0000A38B00F6F683 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[dt_user_message] OFF
/****** Object:  Table [dbo].[dt_navigation]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_navigation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nav_type] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[sub_title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[remark] [nvarchar](500) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[channel_id] [int] NULL,
	[action_type] [nvarchar](500) NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_NAVIGATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'nav_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏0显示1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属父导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限资源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统导航菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation'
GO
SET IDENTITY_INSERT [dbo].[dt_navigation] ON
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (1, N'System', N'sys_contents', N'内容管理', N'内容', N'', 99, 0, N'', 0, N',1,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (2, N'System', N'sys_users', N'会员管理', N'会员', N'', 100, 1, N'系统默认导航，不可更改导航ID', 0, N',2,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (3, N'System', N'sys_orders', N'订单管理', N'订单', N'', 101, 1, N'系统默认导航，不可修改导航ID', 0, N',3,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (4, N'System', N'sys_design', N'界面管理', N'界面', N'', 102, 0, N'系统默认导航，不可更改导航ID', 0, N',4,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (5, N'System', N'sys_controller', N'控制面板', N'控制面板', N'', 103, 0, N'系统默认导航，不可修改导航ID', 0, N',5,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (6, N'System', N'sys_plugins', N'插件管理', N'插件管理', N'', 999, 0, N'系统默认导航，不可修改导航ID', 1, N',1,6,', 2, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (7, N'System', N'user_manage', N'会员管理', N'', N'', 99, 0, N'', 2, N',2,7,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (8, N'System', N'user_log', N'会员日志', N'', N'', 100, 0, N'', 2, N',2,8,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (9, N'System', N'user_settings', N'会员设置', N'', N'', 101, 0, N'', 2, N',2,9,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (10, N'System', N'order_manage', N'订单管理', N'', N'', 99, 0, N'', 3, N',3,10,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (11, N'System', N'order_settings', N'订单设置', N'', N'', 100, 0, N'', 3, N',3,11,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (12, N'System', N'app_manage', N'应用管理', N'', N'', 99, 0, N'', 4, N',4,12,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (13, N'System', N'site_manage', N'系统管理', N'', N'', 99, 0, N'', 5, N',5,13,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (14, N'System', N'sys_manager', N'系统用户', N'', N'', 101, 0, N'', 5, N',5,14,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (15, N'System', N'user_audit', N'审核会员', N'', N'users/user_audit.aspx', 99, 0, N'', 7, N',2,7,15,', 3, 0, N'Show,View,Audit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (16, N'System', N'user_list', N'所有会员', N'', N'users/user_list.aspx', 100, 0, N'', 7, N',2,7,16,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (17, N'System', N'user_group', N'会员组别', N'', N'users/group_list.aspx', 101, 0, N'', 7, N',2,7,17,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (18, N'System', N'user_sms', N'发送短信', N'', N'users/user_sms.aspx', 99, 0, N'', 8, N',2,8,18,', 3, 0, N'Show,View,Add', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (19, N'System', N'user_message', N'站内消息', N'', N'users/message_list.aspx', 100, 0, N'', 8, N',2,8,19,', 3, 0, N'Show,View,Add,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (20, N'System', N'user_point_log', N'积分记录', N'', N'users/point_log.aspx', 101, 0, N'', 8, N',2,8,20,', 3, 0, N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (21, N'System', N'user_amount_log', N'消费记录', N'', N'users/amount_log.aspx', 102, 0, N'', 8, N',2,8,21,', 3, 0, N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (22, N'System', N'user_config', N'参数设置', N'', N'users/user_config.aspx', 99, 0, N'', 9, N',2,9,22,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (23, N'System', N'user_sms_template', N'短信模板', N'', N'users/sms_template_list.aspx', 100, 0, N'', 9, N',2,9,23,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (24, N'System', N'user_mail_template', N'邮件模板', N'', N'users/mail_template_list.aspx', 101, 0, N'', 9, N',2,9,24,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (25, N'System', N'user_oauth', N'OAuth设置', N'', N'users/oauth_app_list.aspx', 102, 0, N'', 9, N',2,9,25,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (26, N'System', N'order_confirm', N'待确认订单', N'', N'order/order_confirm.aspx', 99, 0, N'', 10, N',3,10,26,', 3, 0, N'Show,View,Confirm', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (27, N'System', N'order_list', N'全部订单', N'', N'order/order_list.aspx', 100, 0, N'', 10, N',3,10,27,', 3, 0, N'Show,View,Add,Edit,Delete,Confirm,Cancel,Invalid', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (28, N'System', N'order_config', N'订单参数设置', N'', N'order/order_config.aspx', 99, 0, N'', 11, N',3,11,28,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (29, N'System', N'order_payment', N'支付方式设置', N'', N'order/payment_list.aspx', 100, 0, N'', 11, N',3,11,29,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (30, N'System', N'order_express', N'配送方式设置', N'', N'order/express_list.aspx', 101, 0, N'', 11, N',3,11,30,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (31, N'System', N'app_templet_list', N'网站模板管理', N'', N'settings/templet_list.aspx', 99, 0, N'', 12, N',4,12,31,', 3, 0, N'Show,View,Add,Edit,Delete,Build', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (32, N'System', N'app_plugin_list', N'插件安装配置', N'', N'settings/plugin_list.aspx', 100, 0, N'', 12, N',4,12,32,', 3, 0, N'Show,View,Build,Instal,Unload', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (33, N'System', N'app_builder_html', N'生成静态页面', N'', N'settings/builder_html.aspx', 101, 0, N'', 12, N',4,12,33,', 3, 0, N'Show,View,Build', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (34, N'System', N'app_navigation_list', N'后台导航管理', N'', N'settings/nav_list.aspx', 102, 0, N'', 12, N',4,12,34,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (35, N'System', N'site_config', N'系统设置', N'', N'settings/sys_config.aspx', 99, 0, N'', 13, N',5,13,35,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (36, N'System', N'site_url_rewrite', N'URL配置', N'', N'settings/url_rewrite_list.aspx', 100, 0, N'', 13, N',5,13,36,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (37, N'System', N'site_channel_list', N'频道管理', N'', N'channel/channel_list.aspx', 101, 0, N'', 13, N',5,13,37,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (38, N'System', N'site_channel_category', N'频道分类', N'', N'channel/category_list.aspx', 102, 0, N'', 13, N',5,13,38,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (39, N'System', N'site_channel_field', N'扩展字段', N'', N'channel/attribute_field_list.aspx', 103, 0, N'', 13, N',5,13,39,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (40, N'System', N'manager_list', N'管理员管理', N'', N'manager/manager_list.aspx', 99, 0, N'', 14, N',5,14,40,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (41, N'System', N'manager_role', N'角色管理', N'', N'manager/role_list.aspx', 100, 0, N'', 14, N',5,14,41,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (42, N'System', N'manager_log', N'管理日志', N'', N'manager/manager_log.aspx', 101, 0, N'', 14, N',5,14,42,', 3, 0, N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (43, N'System', N'channel_main', N'默认站点', N'', N'', 99, 0, N'', 1, N',1,43,', 2, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (44, N'System', N'channel_news', N'编程开发', N'', N'', 99, 0, N'', 43, N',1,43,44,', 3, 1, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (45, N'System', N'channel_news_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 44, N',1,43,44,45,', 4, 1, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (46, N'System', N'channel_news_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 44, N',1,43,44,46,', 4, 1, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (47, N'System', N'channel_news_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 44, N',1,43,44,47,', 4, 1, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (48, N'System', N'channel_goods', N'美食专享', N'', N'', 100, 0, N'', 43, N',1,43,48,', 3, 2, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (49, N'System', N'channel_goods_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 48, N',1,43,48,49,', 4, 2, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (50, N'System', N'channel_goods_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 48, N',1,43,48,50,', 4, 2, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (51, N'System', N'channel_goods_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 48, N',1,43,48,51,', 4, 2, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (52, N'System', N'channel_photo', N'影音娱乐', N'', N'', 101, 0, N'', 43, N',1,43,52,', 3, 3, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (53, N'System', N'channel_photo_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 52, N',1,43,52,53,', 4, 3, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (54, N'System', N'channel_photo_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 52, N',1,43,52,54,', 4, 3, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (55, N'System', N'channel_photo_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 52, N',1,43,52,55,', 4, 3, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (56, N'System', N'channel_down', N'资源下载', N'', N'', 99, 0, N'', 43, N',1,43,56,', 3, 4, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (57, N'System', N'channel_down_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 56, N',1,43,56,57,', 4, 4, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (58, N'System', N'channel_down_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 56, N',1,43,56,58,', 4, 4, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (59, N'System', N'channel_down_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 56, N',1,43,56,59,', 4, 4, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (60, N'System', N'channel_content', N'单页内容', N'', N'', 103, 0, N'', 43, N',1,43,60,', 3, 5, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (61, N'System', N'channel_content_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 60, N',1,43,60,61,', 4, 5, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (62, N'System', N'channel_content_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 60, N',1,43,60,62,', 4, 5, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (63, N'System', N'channel_content_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 60, N',1,43,60,63,', 4, 5, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (64, N'System', N'plugin_link', N'链接管理', N'', N'/plugins/link/admin/index.aspx', 99, 0, N'', 6, N',1,6,64,', 3, 0, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (65, N'System', N'plugin_feedback', N'留言管理', N'', N'/plugins/feedback/admin/index.aspx', 99, 0, N'', 6, N',1,6,65,', 3, 0, N'Show,View,Delete,Audit,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (66, N'System', N'plugin_advert', N'广告管理', N'', N'', 99, 0, N'', 6, N',1,6,66,', 3, 0, N'Show,View', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (67, N'System', N'plugin_advert_adv', N'广告位管理', N'', N'/plugins/advert/admin/index.aspx', 99, 0, N'', 66, N',1,6,66,67,', 4, 0, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (68, N'System', N'plugin_advert_bar', N'广告内容管理', N'', N'/plugins/advert/admin/bar_list.aspx', 99, 0, N'', 66, N',1,6,66,68,', 4, 0, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (69, N'System', N'plugin_baseback', N'数据库维护', N'', N'/plugins/baseback/admin/index.aspx', 99, 0, N'', 6, N',1,6,69,', 3, 0, N'Show,View,Delete,Back,Restore,Replace', 1)
SET IDENTITY_INSERT [dbo].[dt_navigation] OFF
/****** Object:  Table [dbo].[dt_mail_template]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_mail_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[maill_title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MAIL_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'maill_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template'
GO
SET IDENTITY_INSERT [dbo].[dt_mail_template] ON
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (1, N'会员注册链接邮件', N'registerlink', N'新用户注册链接(请勿回复此邮件)', N'<p>
	欢迎您成为{webname}会员用户，请点击如下的网址继续注册：
</p>
<p>
	<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (2, N'注册激活账户邮件', N'regverify', N'激活注册账户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 欢迎您成为{webname}会员用户，请点击如下的网址进行激活您的会员账户：
</p>
<p>
	&nbsp;&nbsp;&nbsp; <a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (3, N'用户取回密码', N'getpassword', N'找回密码提示(请勿回复此邮件)', N'<strong>{username}，您好：</strong><br />
<p>
	您在<span style="color:#FF0000;">{webname}</span>点击了“忘记密码”找回申请，故系统自动为您发送了这封邮件。您可以点击以下链接修改您的密码：<br />
<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行修改。如果您不需要修改密码，或者您从未点击过“忘记密码”按钮，请忽略本邮件。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (4, N'欢迎新用户邮件', N'welcomemsg', N'欢迎新用户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 您已成功注册并正式成为{webname}会员用户，请您注意保管好个人账户信息，防止丢失或泄漏。
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (5, N'订单确认通知', N'order_confirm', N'订单确认通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货，请您耐心等待，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (6, N'订单发货通知', N'order_express', N'订单发货通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已经发货，订单号为：{orderno}，共计{amount}元，请您注意查收，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (7, N'订单完成通知', N'order_complete', N'订单完成通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单交易完成，订单号为：{orderno}，共计{amount}元，期待您下次光临，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
SET IDENTITY_INSERT [dbo].[dt_mail_template] OFF
/****** Object:  Table [dbo].[dt_link]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[site_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[is_image] [int] NOT NULL,
	[sort_id] [int] NOT NULL,
	[is_red] [tinyint] NOT NULL,
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK__dt_link__34E8D562] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_link] ON
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (1, N'搜狐IT', N'', N'', N'', N'http://it.sohu.com', N'', 0, 99, 1, 0, CAST(0x0000A11001162A28 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (2, N'百度贴吧', N'', N'', N'', N'http://tieba.baidu.com', N'', 0, 99, 1, 0, CAST(0x0000A110011649CC AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (3, N'中华网科技', N'', N'', N'', N'http://tech.china.com', N'', 0, 99, 1, 1, CAST(0x0000A11001166268 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (4, N'鞭牛士', N'', N'', N'', N'http://www.bianews.com', N'', 0, 99, 1, 1, CAST(0x0000A11001168338 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (22, N'站长之家', N'', N'', N'', N'http://www.chinaz.com', N'', 0, 99, 1, 0, CAST(0x0000A1100118CBFC AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (35, N'联图网', N'', N'', N'', N'http://www.liantu.com/', N'', 0, 99, 1, 0, CAST(0x0000A3DC00F1B346 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (36, N'鬼哥Csdn免积分在线下载器v10.0-网页版', N'', N'', N'', N'http://csdn.juming.com/', N'', 0, 99, 0, 0, CAST(0x0000A3DC00F26D8C AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (37, N'一起记', N'', N'', N'', N'http://letji.com/', N'', 0, 99, 1, 0, CAST(0x0000A45A00ABBBD5 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (38, N'爱编程', N'', N'', N'', N'http://www.w2bc.com', N'', 0, 99, 0, 0, CAST(0x0000A46400DDB190 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_link] OFF
/****** Object:  Table [dbo].[dt_feedback]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](30) NULL,
	[user_qq] [nvarchar](30) NULL,
	[user_email] [nvarchar](100) NULL,
	[add_time] [datetime] NOT NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
	[is_lock] [tinyint] NOT NULL,
 CONSTRAINT [PK__dt_feedback__3F6663D5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_feedback] ON
INSERT [dbo].[dt_feedback] ([id], [title], [content], [user_name], [user_tel], [user_qq], [user_email], [add_time], [reply_content], [reply_time], [is_lock]) VALUES (1, N'第一条留言非我莫属啦！', N'看来第一条留言非我莫属啦！<br />沙发！！！', N'一些事情', N'13800138000', N'932235529', N'joxie@qq.com', CAST(0x0000A11001201B78 AS DateTime), N'', NULL, 0)
INSERT [dbo].[dt_feedback] ([id], [title], [content], [user_name], [user_tel], [user_qq], [user_email], [add_time], [reply_content], [reply_time], [is_lock]) VALUES (2, N'向前排靠齐', N'能有些表情多好。', N'test', N'', N'', NULL, CAST(0x0000A11100816B40 AS DateTime), N'aa', CAST(0x0000A38C009A3E34 AS DateTime), 1)
INSERT [dbo].[dt_feedback] ([id], [title], [content], [user_name], [user_tel], [user_qq], [user_email], [add_time], [reply_content], [reply_time], [is_lock]) VALUES (3, N'留言标题test', N'啊啊啊啊啊啊啊啊啊啊啊啊啊啊', N'司惊雷', N'13421365591', N'645001895', N'645001895@qq.com', CAST(0x0000A38C009A17A8 AS DateTime), N'aaa', CAST(0x0000A38C009A55BB AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[dt_feedback] OFF
/****** Object:  Table [dbo].[dt_express]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[express_code] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[website] [nvarchar](255) NULL,
	[remark] [ntext] NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_EXPRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否不显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流快递' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express'
GO
SET IDENTITY_INSERT [dbo].[dt_express] ON
INSERT [dbo].[dt_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (1, N'顺丰快递', N'shunfeng', CAST(20.00 AS Decimal(9, 2)), N'http://www.sf-express.com', N'顺丰快递<br />换行啦！', 99, 0)
INSERT [dbo].[dt_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (2, N'韵达快递', N'yunda', CAST(14.00 AS Decimal(9, 2)), N'http://www.yundaex.com', N'韵达快递', 100, 0)
SET IDENTITY_INSERT [dbo].[dt_express] OFF
/****** Object:  Table [dbo].[dt_channel_category]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[build_path] [nvarchar](100) NULL,
	[templet_path] [nvarchar](100) NULL,
	[domain] [nvarchar](255) NULL,
	[is_default] [tinyint] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'build_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'templet_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绑定域名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category'
GO
SET IDENTITY_INSERT [dbo].[dt_channel_category] ON
INSERT [dbo].[dt_channel_category] ([id], [title], [build_path], [templet_path], [domain], [is_default], [sort_id]) VALUES (1, N'默认站点', N'main', N'acity', N'', 1, 99)
SET IDENTITY_INSERT [dbo].[dt_channel_category] OFF
/****** Object:  Table [dbo].[dt_manager_role]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) NULL,
	[role_type] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统默认0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role'
GO
SET IDENTITY_INSERT [dbo].[dt_manager_role] ON
INSERT [dbo].[dt_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (1, N'超级管理组', 1, 1)
INSERT [dbo].[dt_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (2, N'系统管理组', 2, 0)
SET IDENTITY_INSERT [dbo].[dt_manager_role] OFF
/****** Object:  Table [dbo].[dt_manager_log]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[user_ip] [nvarchar](30) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log'
GO
SET IDENTITY_INSERT [dbo].[dt_manager_log] ON
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (1, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A38B00F343EF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (2, 1, N'admin', N'Build', N'生成模板:red', N'127.0.0.1', CAST(0x0000A38B00F3967D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (3, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B00F4281D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (4, 1, N'admin', N'Build', N'生成模板:red', N'127.0.0.1', CAST(0x0000A38B00F43263 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (5, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B00F4C3DE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (6, 1, N'admin', N'Build', N'生成模板:red', N'127.0.0.1', CAST(0x0000A38B00F4CB43 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (7, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B00F552E4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (8, 1, N'admin', N'Build', N'生成模板:red', N'127.0.0.1', CAST(0x0000A38B00F558A1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (9, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B00F59BA8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (10, 1, N'admin', N'Build', N'生成模板:red', N'127.0.0.1', CAST(0x0000A38B00F5A0CB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (11, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B00F66BB3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (12, 1, N'admin', N'Build', N'生成模板:red', N'127.0.0.1', CAST(0x0000A38B00F682A0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (13, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B00FA6DB4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (14, 1, N'admin', N'Build', N'生成模板:red', N'127.0.0.1', CAST(0x0000A38B00FA7407 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (15, 1, N'admin', N'Edit', N'修改news频道内容:超级黑客Comex离开苹果', N'127.0.0.1', CAST(0x0000A38B00FACA8D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (16, 1, N'admin', N'Add', N'添加频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B010794B9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (17, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B01082833 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (18, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B01083363 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (19, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38B010D98AC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (20, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B010E0C4D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (21, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B010E6935 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (22, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B010E6EB3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (23, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B010FB471 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (24, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B011008DF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (25, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B0110E38A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (26, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B011154C8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (27, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B01125E15 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (28, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38B0112681C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (29, 1, N'admin', N'Add', N'添加en_news频道栏目分类:test', N'127.0.0.1', CAST(0x0000A38B01132C6B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (30, 1, N'admin', N'Add', N'添加频道分类:英文', N'127.0.0.1', CAST(0x0000A38B01136345 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (31, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B01138125 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (32, 1, N'admin', N'Edit', N'修改频道分类:英文', N'127.0.0.1', CAST(0x0000A38B01142C46 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (33, 1, N'admin', N'Edit', N'修改频道分类:英文', N'127.0.0.1', CAST(0x0000A38B01145C8A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (34, 1, N'admin', N'Build', N'生成模板:red(en)', N'127.0.0.1', CAST(0x0000A38B01147FD3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (35, 1, N'admin', N'Build', N'生成模板:red(en)', N'127.0.0.1', CAST(0x0000A38B011497EF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (36, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B0115A977 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (37, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38B0115B729 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (38, 1, N'admin', N'Edit', N'修改频道分类:默认站点', N'127.0.0.1', CAST(0x0000A38B0115C89B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (39, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38B0115E8E0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (40, 1, N'admin', N'Edit', N'修改频道分类:默认站点', N'127.0.0.1', CAST(0x0000A38B011619AE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (41, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38B0116E4C8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (42, 1, N'admin', N'Build', N'生成模板:red(en)', N'127.0.0.1', CAST(0x0000A38B0117353B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (43, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A38B011DD931 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (44, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38B011DDFC3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (45, 1, N'admin', N'Edit', N'修改频道分类:默认站点', N'127.0.0.1', CAST(0x0000A38B011EE5A8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (46, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B0121E92D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (47, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A38B01221459 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (48, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38B01221E3C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (49, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38B01222580 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (50, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38B01223B1B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (51, 1, N'admin', N'Build', N'生成模板:red(en)', N'127.0.0.1', CAST(0x0000A38B0122436E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (52, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38B0123C6E7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (53, 1, N'admin', N'Edit', N'修改频道分类:英文', N'127.0.0.1', CAST(0x0000A38B01240C14 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (54, 1, N'admin', N'Edit', N'修改频道分类:英文', N'127.0.0.1', CAST(0x0000A38B0125591E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (55, 1, N'admin', N'Edit', N'修改频道分类:英文', N'127.0.0.1', CAST(0x0000A38B01256815 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (56, 1, N'admin', N'Edit', N'修改频道分类:默认站点', N'127.0.0.1', CAST(0x0000A38B01262472 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (57, 1, N'admin', N'Edit', N'修改频道分类:英文', N'127.0.0.1', CAST(0x0000A38B012627E5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (58, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'127.0.0.1', CAST(0x0000A38B01267B8A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (59, 1, N'admin', N'Build', N'生成模板:red(en)', N'127.0.0.1', CAST(0x0000A38B01268834 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (60, 1, N'admin', N'Add', N'添加en_news频道内容:testetwtasteat', N'127.0.0.1', CAST(0x0000A38B0126C53F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (61, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A38C0099B1BA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (62, 1, N'admin', N'Audit', N'审核留言插件内容', N'127.0.0.1', CAST(0x0000A38C009A2D2E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (63, 1, N'admin', N'Reply', N'回复留言插件内容：向前排靠齐', N'127.0.0.1', CAST(0x0000A38C009A3E43 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (64, 1, N'admin', N'Reply', N'回复留言插件内容：留言标题test', N'127.0.0.1', CAST(0x0000A38C009A55BF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (65, 1, N'admin', N'Edit', N'修改频道分类:默认站点', N'127.0.0.1', CAST(0x0000A38C00EC09DD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (66, 1, N'admin', N'Edit', N'修改频道分类:默认站点', N'127.0.0.1', CAST(0x0000A38C00EC13EA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (67, 1, N'admin', N'Edit', N'修改频道分类:英文', N'127.0.0.1', CAST(0x0000A38C00EC1810 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (68, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A38C0123023B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (69, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A38C0124A8DC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (70, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A38D00B77C77 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (71, 1, N'admin', N'Delete', N'删除频道分类成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00B79EC1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (72, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00B7BAD2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (73, 1, N'admin', N'Build', N'生成模板:red(cn)', N'127.0.0.1', CAST(0x0000A38D00C0A8D4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (74, 1, N'admin', N'Delete', N'删除频道分类成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C0CEBB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (75, 1, N'admin', N'Delete', N'删除频道分类成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C0DA42 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (76, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C0E0B5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (77, 1, N'admin', N'Delete', N'删除URL配置信息', N'127.0.0.1', CAST(0x0000A38D00C0F1B5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (78, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C0F71E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (79, 1, N'admin', N'Delete', N'删除频道分类成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C132B7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (80, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38D00C148BC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (81, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C14C2C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (82, 1, N'admin', N'Edit', N'修改频道英文新闻首页', N'127.0.0.1', CAST(0x0000A38D00C15A7D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (83, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C16533 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (84, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C1D4F0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (85, 1, N'admin', N'Delete', N'删除频道分类成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C8CB0E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (86, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C8D925 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (87, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C8E252 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (88, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C93DE4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (89, 1, N'admin', N'Delete', N'删除管理日志0条', N'127.0.0.1', CAST(0x0000A38D00C9694D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (90, 1, N'admin', N'Delete', N'删除管理日志0条', N'127.0.0.1', CAST(0x0000A38D00C96EDA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (91, 1, N'admin', N'Delete', N'删除管理日志0条', N'127.0.0.1', CAST(0x0000A38D00C98F2A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (92, 1, N'admin', N'Delete', N'删除管理日志0条', N'127.0.0.1', CAST(0x0000A38D00C995DC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (93, 1, N'admin', N'Delete', N'删除频道分类成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00C9BA3A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (94, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'127.0.0.1', CAST(0x0000A38D00CA892B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (95, 1, N'admin', N'Edit', N'删除en_news频道内容成功1条，失败0条', N'127.0.0.1', CAST(0x0000A38D00CAA1ED AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (96, 1, N'admin', N'Edit', N'删除en_news频道栏目分类数据', N'127.0.0.1', CAST(0x0000A38D00CAA991 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (97, 1, N'admin', N'Delete', N'删除频道成功1条，失败0条', N'127.0.0.1', CAST(0x0000A38D00CAC25D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (98, 1, N'admin', N'Delete', N'删除频道分类成功1条，失败0条', N'127.0.0.1', CAST(0x0000A38D00CAC970 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (99, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A38E009D1D7D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (100, 1, N'admin', N'Add', N'修改导航信息:资源下载', N'127.0.0.1', CAST(0x0000A38E009D6E1F AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (101, 1, N'admin', N'Add', N'修改导航信息:会员管理', N'127.0.0.1', CAST(0x0000A38E009D7992 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (102, 1, N'admin', N'Add', N'修改导航信息:订单管理', N'127.0.0.1', CAST(0x0000A38E009D8821 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (103, 1, N'admin', N'Edit', N'修改频道视频图片', N'127.0.0.1', CAST(0x0000A38E009E2EA8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (104, 1, N'admin', N'Edit', N'修改频道单页内容', N'127.0.0.1', CAST(0x0000A38E009E5F7C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (105, 1, N'admin', N'Add', N'修改导航信息:图片分享', N'127.0.0.1', CAST(0x0000A38E009E9474 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (106, 1, N'admin', N'Delete', N'删除友情链接成功1条，失败0条', N'127.0.0.1', CAST(0x0000A38E009EAB1F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (107, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A38E009F3145 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (108, 1, N'admin', N'Add', N'修改导航信息:图片分享', N'127.0.0.1', CAST(0x0000A38E00A3F81A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (109, 1, N'admin', N'Edit', N'修改频道视频图片', N'127.0.0.1', CAST(0x0000A38E00A45479 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (110, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38E00A4AAED AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (111, 1, N'admin', N'Add', N'修改导航信息:购物商城', N'127.0.0.1', CAST(0x0000A38E00A52DE1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (112, 1, N'admin', N'Add', N'修改导航信息:购物商城', N'127.0.0.1', CAST(0x0000A38E00A5353B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (113, 1, N'admin', N'Add', N'修改导航信息:视频图片', N'127.0.0.1', CAST(0x0000A38E00A54643 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (114, 1, N'admin', N'Edit', N'修改频道购物商城', N'127.0.0.1', CAST(0x0000A38E00A56702 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (115, 1, N'admin', N'Edit', N'修改频道视频图片', N'127.0.0.1', CAST(0x0000A38E00A573F7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (116, 1, N'admin', N'Edit', N'修改频道视频图片', N'127.0.0.1', CAST(0x0000A38E00A5B945 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (117, 1, N'admin', N'Edit', N'修改content频道栏目分类:关于我们', N'127.0.0.1', CAST(0x0000A38E00A61C86 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (118, 1, N'admin', N'Edit', N'修改content频道内容:公司简介', N'127.0.0.1', CAST(0x0000A38E00A63B07 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (119, 1, N'admin', N'Add', N'添加content频道内容:人才招聘', N'127.0.0.1', CAST(0x0000A38E00AED089 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (120, 1, N'admin', N'Edit', N'修改模板文件:Default.html', N'127.0.0.1', CAST(0x0000A38E00F26A59 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (121, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A38F00F8AAA2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (122, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F00FE0712 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (123, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F00FF36CD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (124, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F00FFB8ED AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (125, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F00FFF121 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (126, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F01007ABC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (127, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F01072780 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (128, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F01077E9A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (129, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F01079CC1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (130, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0108A5DE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (131, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F01090116 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (132, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0109C5F3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (133, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0109F562 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (134, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010A4581 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (135, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010AD699 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (136, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010B10CD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (137, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010B39F4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (138, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010B5463 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (139, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010B915A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (140, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010BC9FC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (141, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010C32BA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (142, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010C880E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (143, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010CADB6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (144, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010DE026 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (145, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010E0110 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (146, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010E39A1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (147, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F010EA75F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (148, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F01107D67 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (149, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0110E756 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (150, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0111208C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (151, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0111A3C8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (152, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0111B505 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (153, 1, N'admin', N'Edit', N'修改news频道内容:超级黑客Comex离开苹果', N'127.0.0.1', CAST(0x0000A38F0112AF71 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (154, 1, N'admin', N'Edit', N'修改news频道内容:全球仅此一台！雷蛇星战版Blade游戏本', N'127.0.0.1', CAST(0x0000A38F0112C0FA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (155, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F011450B7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (156, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A38F01149817 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (157, 1, N'admin', N'Edit', N'修改news频道内容:超级黑客Comex离开苹果', N'127.0.0.1', CAST(0x0000A38F0114AA79 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (158, 1, N'admin', N'Edit', N'修改news频道内容:全球仅此一台！雷蛇星战版Blade游戏本', N'127.0.0.1', CAST(0x0000A38F0114B2F0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (159, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0114CDAC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (160, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A38F0115E743 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (161, 1, N'admin', N'Edit', N'修改content频道内容:人才招聘', N'127.0.0.1', CAST(0x0000A38F011DE137 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (162, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F011E479F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (163, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F011E6BEB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (164, 1, N'admin', N'Add', N'添加content频道栏目分类:业务资源', N'127.0.0.1', CAST(0x0000A38F011EF125 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (165, 1, N'admin', N'Add', N'添加content频道栏目分类:业务', N'127.0.0.1', CAST(0x0000A38F011F06AF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (166, 1, N'admin', N'Add', N'添加content频道栏目分类:资源', N'127.0.0.1', CAST(0x0000A38F011F129F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (167, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F011F4507 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (168, 1, N'admin', N'Add', N'添加content频道内容:节目', N'127.0.0.1', CAST(0x0000A38F012330AB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (169, 1, N'admin', N'Add', N'添加content频道内容:广告', N'127.0.0.1', CAST(0x0000A38F0123C82C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (170, 1, N'admin', N'Add', N'添加content频道内容:企业', N'127.0.0.1', CAST(0x0000A38F012409EC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (171, 1, N'admin', N'Add', N'添加content频道内容:个人', N'127.0.0.1', CAST(0x0000A38F01243AB6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (172, 1, N'admin', N'Edit', N'修改content频道内容:节目', N'127.0.0.1', CAST(0x0000A38F01246D7E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (173, 1, N'admin', N'Add', N'添加content频道内容:演唱会', N'127.0.0.1', CAST(0x0000A38F0124BDDA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (174, 1, N'admin', N'Add', N'添加content频道内容:活动', N'127.0.0.1', CAST(0x0000A38F0124DAD8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (175, 1, N'admin', N'Add', N'添加content频道内容:专题片', N'127.0.0.1', CAST(0x0000A38F01251763 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (176, 1, N'admin', N'Edit', N'修改content频道内容:大型活动', N'127.0.0.1', CAST(0x0000A38F01251E0D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (177, 1, N'admin', N'Add', N'添加content频道内容:孩子资源', N'127.0.0.1', CAST(0x0000A38F0125B49D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (178, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0125CC34 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (179, 1, N'admin', N'Edit', N'修改photo频道栏目分类:节目', N'127.0.0.1', CAST(0x0000A38F012718A8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (180, 1, N'admin', N'Edit', N'修改photo频道栏目分类:企业客户', N'127.0.0.1', CAST(0x0000A38F0127429A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (181, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0127CB55 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (182, 1, N'admin', N'Edit', N'修改news频道栏目分类:公司新闻', N'127.0.0.1', CAST(0x0000A38F012921FB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (183, 1, N'admin', N'Edit', N'修改news频道栏目分类:行业新闻', N'127.0.0.1', CAST(0x0000A38F01292DF7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (184, 1, N'admin', N'Edit', N'修改content频道内容:节目', N'127.0.0.1', CAST(0x0000A38F01295180 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (185, 1, N'admin', N'Edit', N'修改content频道内容:广告', N'127.0.0.1', CAST(0x0000A38F01295BD5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (186, 1, N'admin', N'Edit', N'修改content频道内容:企业', N'127.0.0.1', CAST(0x0000A38F0129660F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (187, 1, N'admin', N'Edit', N'修改content频道内容:个人', N'127.0.0.1', CAST(0x0000A38F01296DB9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (188, 1, N'admin', N'Edit', N'修改content频道内容:演唱会', N'127.0.0.1', CAST(0x0000A38F01297731 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (189, 1, N'admin', N'Edit', N'修改content频道内容:大型活动', N'127.0.0.1', CAST(0x0000A38F01297E90 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (190, 1, N'admin', N'Edit', N'修改content频道内容:专题片', N'127.0.0.1', CAST(0x0000A38F012985D3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (191, 1, N'admin', N'Edit', N'修改content频道内容:孩子资源', N'127.0.0.1', CAST(0x0000A38F01298F90 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (192, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0129B7B7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (193, 1, N'admin', N'Edit', N'修改photo频道栏目分类:节目', N'127.0.0.1', CAST(0x0000A38F012AA124 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (194, 1, N'admin', N'Edit', N'修改photo频道栏目分类:企业客户', N'127.0.0.1', CAST(0x0000A38F012AA911 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (195, 1, N'admin', N'Edit', N'修改photo频道栏目分类:节目', N'127.0.0.1', CAST(0x0000A38F012AAD71 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (196, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F012C66E9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (197, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F012D2957 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (198, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F012DA4FD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (199, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F012E8362 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (200, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F012F2162 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (201, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F012FC052 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (202, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0130192A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (203, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F013050DB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (204, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0133DA45 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (205, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F0135A6AA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (206, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F01374F9E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (207, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F013809AC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (208, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A38F01392F55 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (209, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A39200A0A579 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (210, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200A0FD91 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (211, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200A14357 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (212, 1, N'admin', N'Edit', N'删除photo频道内容成功3条，失败0条', N'127.0.0.1', CAST(0x0000A39200A8A4A6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (213, 1, N'admin', N'Edit', N'删除photo频道内容成功5条，失败0条', N'127.0.0.1', CAST(0x0000A39200A8AC4A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (214, 1, N'admin', N'Edit', N'删除photo频道内容成功6条，失败0条', N'127.0.0.1', CAST(0x0000A39200A8B1D5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (215, 1, N'admin', N'Edit', N'删除photo频道栏目分类数据', N'127.0.0.1', CAST(0x0000A39200A8BBE2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (216, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200A8D10A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (217, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200AD1C50 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (218, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200AD53F1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (219, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200ADA16A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (220, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200ADF69A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (221, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200AF1A7D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (222, 1, N'admin', N'Build', N'生成插件模板', N'127.0.0.1', CAST(0x0000A39200AF7E1D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (223, 1, N'admin', N'Instal', N'安装插件', N'127.0.0.1', CAST(0x0000A39200AF9EBF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (224, 1, N'admin', N'Build', N'生成插件模板', N'127.0.0.1', CAST(0x0000A39200B0247C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (225, 1, N'admin', N'Instal', N'安装插件', N'127.0.0.1', CAST(0x0000A39200B02854 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (226, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200B9995D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (227, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200BB2831 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (228, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200BBE340 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (229, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200BC4039 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (230, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200BC6A1C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (231, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200BC9E63 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (232, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200BCCE69 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (233, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200BCDDBC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (234, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200BE0DB9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (235, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C40671 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (236, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C41B67 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (237, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C45595 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (238, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C56894 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (239, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C58A60 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (240, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C6151C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (241, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C63BEB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (242, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C65DB2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (243, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C7B663 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (244, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200C7E058 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (245, 1, N'admin', N'Edit', N'删除news频道栏目分类数据', N'127.0.0.1', CAST(0x0000A39200C84864 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (246, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200E767DA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (247, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200E78310 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (248, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200E7AB15 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (249, 1, N'admin', N'Build', N'生成插件模板', N'127.0.0.1', CAST(0x0000A39200E7FBC4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (250, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200EA433B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (251, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200EAC391 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (252, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200EAEBB9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (253, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200EB5661 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (254, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200EBCDB0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (255, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200EC37DD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (256, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200EE51D8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (257, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200EEA4BA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (258, 1, N'admin', N'Edit', N'删除news频道栏目分类数据', N'127.0.0.1', CAST(0x0000A39200EEFF08 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (259, 1, N'admin', N'Edit', N'删除news频道栏目分类数据', N'127.0.0.1', CAST(0x0000A39200EF0504 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (260, 1, N'admin', N'Edit', N'修改news频道内容:需求疲软 4GB DDR3内存纷纷跌破百元大关', N'127.0.0.1', CAST(0x0000A39200EF1A2C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (261, 1, N'admin', N'Edit', N'修改news频道内容:历史性时刻：ARM首次成功模拟运行x86', N'127.0.0.1', CAST(0x0000A39200EF1E26 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (262, 1, N'admin', N'Edit', N'修改news频道内容:超级黑客Comex离开苹果', N'127.0.0.1', CAST(0x0000A39200EF2354 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (263, 1, N'admin', N'Edit', N'修改news频道内容:超级黑客Comex离开苹果', N'127.0.0.1', CAST(0x0000A39200EF4524 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (264, 1, N'admin', N'Edit', N'修改news频道内容:799元360特供机：“海尔小潜艇”下周限量发售', N'127.0.0.1', CAST(0x0000A39200EF4A9A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (265, 1, N'admin', N'Edit', N'修改news频道内容:技术宅拯救世界：用纸糊一辆自行车', N'127.0.0.1', CAST(0x0000A39200EF5046 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (266, 1, N'admin', N'Edit', N'修改news频道内容:iPad Mini 23日登场', N'127.0.0.1', CAST(0x0000A39200EF54EB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (267, 1, N'admin', N'Edit', N'修改news频道内容:Win8，最后的Windows操作系统', N'127.0.0.1', CAST(0x0000A39200EF591C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (268, 1, N'admin', N'Edit', N'修改news频道内容:华为神秘新机Ascend Mate曝光：6.1英寸+四核', N'127.0.0.1', CAST(0x0000A39200EF5CD8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (269, 1, N'admin', N'Edit', N'修改news频道内容:微软宣布Office365大学生版：十个理由让你爱她', N'127.0.0.1', CAST(0x0000A39200EF6116 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (270, 1, N'admin', N'Edit', N'修改news频道内容:微软哪个部门最赚钱？', N'127.0.0.1', CAST(0x0000A39200EF703B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (271, 1, N'admin', N'Edit', N'修改news频道内容:听第一位进入Google数据中心的记者爆料', N'127.0.0.1', CAST(0x0000A39200EF7DBF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (272, 1, N'admin', N'Edit', N'修改news频道内容:Surface英国/加拿大也火爆 但微软喜忧参半', N'127.0.0.1', CAST(0x0000A39200EF83CE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (273, 1, N'admin', N'Edit', N'修改news频道内容:王府井苹果店正式开业 粉丝连夜排队', N'127.0.0.1', CAST(0x0000A39200EF903F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (274, 1, N'admin', N'Edit', N'修改news频道内容:意大利最高法院判决：手机致人患脑瘤', N'127.0.0.1', CAST(0x0000A39200EF9A20 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (275, 1, N'admin', N'Edit', N'修改news频道内容:网友曝光微信密码漏洞 马化腾账号遭入侵', N'127.0.0.1', CAST(0x0000A39200EFA40E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (276, 1, N'admin', N'Edit', N'修改news频道内容:Google乌龙：财报提前泄漏 股价暴跌', N'127.0.0.1', CAST(0x0000A39200EFA9C0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (277, 1, N'admin', N'Edit', N'修改news频道内容:法官拒绝苹果封存财务文件的请求', N'127.0.0.1', CAST(0x0000A39200EFB0B2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (278, 1, N'admin', N'Edit', N'修改news频道内容:联通4G频率规划曝光：与3G共用可平滑过渡', N'127.0.0.1', CAST(0x0000A39200EFB973 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (279, 1, N'admin', N'Edit', N'修改news频道内容:双核就如大白菜 刷机精灵698元新机来了', N'127.0.0.1', CAST(0x0000A39200EFC053 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (280, 1, N'admin', N'Edit', N'删除news频道内容成功10条，失败0条', N'127.0.0.1', CAST(0x0000A39200EFC9B9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (281, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200F0446D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (282, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200F0BD9C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (283, 1, N'admin', N'Add', N'添加content频道内容:团队文化', N'127.0.0.1', CAST(0x0000A39200F293EB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (284, 1, N'admin', N'Edit', N'修改content频道内容:团队文化', N'127.0.0.1', CAST(0x0000A39200F2FED7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (285, 1, N'admin', N'Edit', N'修改content频道内容:公司简介', N'127.0.0.1', CAST(0x0000A39200F3631B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (286, 1, N'admin', N'Edit', N'修改content频道内容:团队文化', N'127.0.0.1', CAST(0x0000A39200F39358 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (287, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39200F3DA55 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (288, 1, N'admin', N'Edit', N'保存content频道内容排序', N'127.0.0.1', CAST(0x0000A39200F3F966 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (289, 1, N'admin', N'Edit', N'修改content频道内容:联系我们', N'127.0.0.1', CAST(0x0000A39200F4C22F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (290, 1, N'admin', N'Edit', N'修改content频道内容:联系我们', N'127.0.0.1', CAST(0x0000A39200F520EC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (291, 1, N'admin', N'Edit', N'修改content频道内容:联系我们', N'127.0.0.1', CAST(0x0000A39200F53505 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (292, 1, N'admin', N'Edit', N'修改photo频道内容:宝贝赖上大明星', N'127.0.0.1', CAST(0x0000A39200F6752A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (293, 1, N'admin', N'Edit', N'修改photo频道内容:饭没了秀', N'127.0.0.1', CAST(0x0000A39200F6CBBD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (294, 1, N'admin', N'Edit', N'修改photo频道内容:魔力宝宝找妈妈', N'127.0.0.1', CAST(0x0000A39200F708F0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (295, 1, N'admin', N'Edit', N'修改photo频道内容:小心00后', N'127.0.0.1', CAST(0x0000A39200F733BE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (296, 1, N'admin', N'Edit', N'修改photo频道内容:中国少年梦', N'127.0.0.1', CAST(0x0000A39200F7651F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (297, 1, N'admin', N'Edit', N'删除photo频道内容成功4条，失败0条', N'127.0.0.1', CAST(0x0000A39200F7B03E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (298, 1, N'admin', N'Edit', N'修改photo频道内容:深圳万科中秋晚会', N'127.0.0.1', CAST(0x0000A39200FB6F62 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (299, 1, N'admin', N'Edit', N'修改photo频道内容:深圳万科中秋晚会', N'127.0.0.1', CAST(0x0000A39200FB87A1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (300, 1, N'admin', N'Edit', N'修改photo频道内容:2013年《中国少年梦》暑期逆袭档宣传片', N'127.0.0.1', CAST(0x0000A39200FC3A29 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (301, 1, N'admin', N'Edit', N'修改photo频道内容:2013年《中国少年梦》宣传片', N'127.0.0.1', CAST(0x0000A39200FC7ACE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (302, 1, N'admin', N'Edit', N'修改photo频道内容:2013年《中国少年梦》宣传片', N'127.0.0.1', CAST(0x0000A39200FC9C28 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (303, 1, N'admin', N'Edit', N'修改photo频道内容:2013年《中国少年梦》8月4日宣传片', N'127.0.0.1', CAST(0x0000A39200FD2875 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (304, 1, N'admin', N'Edit', N'修改photo频道内容:2011年《心愿你懂得》宣传片', N'127.0.0.1', CAST(0x0000A39200FD8501 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (305, 1, N'admin', N'Add', N'添加content频道内容:合作资源', N'127.0.0.1', CAST(0x0000A39200FE87D9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (306, 1, N'admin', N'Edit', N'修改content频道内容:孩子资源', N'127.0.0.1', CAST(0x0000A39200FEB7E2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (307, 1, N'admin', N'Edit', N'修改content频道内容:合作资源', N'127.0.0.1', CAST(0x0000A39200FED48D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (308, 1, N'admin', N'Add', N'添加content频道内容:媒体资源', N'127.0.0.1', CAST(0x0000A39200FF1242 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (309, 1, N'admin', N'Edit', N'修改content频道内容:媒体资源', N'127.0.0.1', CAST(0x0000A39200FF1D30 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (310, 1, N'admin', N'Add', N'添加content频道内容:明星资源', N'127.0.0.1', CAST(0x0000A39200FF597A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (311, 1, N'admin', N'Add', N'添加content频道内容:团队资源', N'127.0.0.1', CAST(0x0000A39200FF8B71 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (312, 1, N'admin', N'Add', N'添加content频道内容:演艺资源', N'127.0.0.1', CAST(0x0000A39200FFA8EE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (313, 1, N'admin', N'Add', N'添加content频道内容:硬件资源', N'127.0.0.1', CAST(0x0000A39200FFC79A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (314, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A3920100520A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (315, 1, N'admin', N'Edit', N'修改content频道内容:媒体资源', N'127.0.0.1', CAST(0x0000A3920101811C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (316, 1, N'admin', N'Edit', N'修改content频道内容:媒体资源', N'127.0.0.1', CAST(0x0000A3920101E692 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (317, 1, N'admin', N'Edit', N'修改content频道内容:合作资源', N'127.0.0.1', CAST(0x0000A39201024695 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (318, 1, N'admin', N'Edit', N'修改content频道内容:人才招聘', N'127.0.0.1', CAST(0x0000A39201038734 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (319, 1, N'admin', N'Edit', N'修改content频道内容:人才招聘', N'127.0.0.1', CAST(0x0000A3920103B23B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (320, 1, N'admin', N'Edit', N'修改content频道内容:人才招聘', N'127.0.0.1', CAST(0x0000A3920103C61F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (321, 1, N'admin', N'Edit', N'修改content频道内容:人才招聘', N'127.0.0.1', CAST(0x0000A3920103E19B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (322, 1, N'admin', N'Edit', N'修改content频道内容:团队资源', N'127.0.0.1', CAST(0x0000A3920105991E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (323, 1, N'admin', N'Edit', N'修改content频道内容:明星资源', N'127.0.0.1', CAST(0x0000A3920105B7EB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (324, 1, N'admin', N'Edit', N'修改content频道内容:明星资源', N'127.0.0.1', CAST(0x0000A3920105CEFD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (325, 1, N'admin', N'Edit', N'修改content频道内容:孩子资源', N'127.0.0.1', CAST(0x0000A3920105F7E2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (326, 1, N'admin', N'Edit', N'修改content频道内容:孩子资源', N'127.0.0.1', CAST(0x0000A39201060E47 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (327, 1, N'admin', N'Edit', N'修改content频道内容:演艺资源', N'127.0.0.1', CAST(0x0000A39201062C10 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (328, 1, N'admin', N'Add', N'添加content频道内容:社会资源', N'127.0.0.1', CAST(0x0000A39201065C75 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (329, 1, N'admin', N'Edit', N'修改content频道内容:合作资源', N'127.0.0.1', CAST(0x0000A39201067440 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (330, 1, N'admin', N'Edit', N'修改content频道内容:媒体资源', N'127.0.0.1', CAST(0x0000A3920106A844 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (331, 1, N'admin', N'Edit', N'修改content频道内容:媒体资源', N'127.0.0.1', CAST(0x0000A3920106B873 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (332, 1, N'admin', N'Edit', N'修改content频道内容:社会资源', N'127.0.0.1', CAST(0x0000A3920106DE01 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (333, 1, N'admin', N'Edit', N'修改content频道内容:媒体资源', N'127.0.0.1', CAST(0x0000A39201070623 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (334, 1, N'admin', N'Edit', N'修改content频道内容:社会资源', N'127.0.0.1', CAST(0x0000A39201071B67 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (335, 1, N'admin', N'Edit', N'修改content频道内容:媒体资源', N'127.0.0.1', CAST(0x0000A392010744A0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (336, 1, N'admin', N'Edit', N'修改content频道内容:媒体资源', N'127.0.0.1', CAST(0x0000A39201076AD5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (337, 1, N'admin', N'Edit', N'修改content频道内容:合作资源', N'127.0.0.1', CAST(0x0000A39201078266 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (338, 1, N'admin', N'Edit', N'修改photo频道内容:2013年《中国少年梦》8月4日宣传片', N'127.0.0.1', CAST(0x0000A3920107F4C7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (339, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39201083B4D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (340, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A3920109082E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (341, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A392010A0EBC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (342, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A392010A2867 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (343, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A392010A4F8E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (344, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A392010C7D06 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (345, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A392010CCEAB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (346, 1, N'admin', N'Build', N'生成插件模板', N'127.0.0.1', CAST(0x0000A392010D825E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (347, 1, N'admin', N'Build', N'生成插件模板', N'127.0.0.1', CAST(0x0000A392010D9DE3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (348, 1, N'admin', N'Build', N'生成插件模板', N'127.0.0.1', CAST(0x0000A392010DBB5F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (349, 1, N'admin', N'Build', N'生成插件模板', N'127.0.0.1', CAST(0x0000A392010E3CC0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (350, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A392010E421F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (351, 1, N'admin', N'Build', N'生成插件模板', N'127.0.0.1', CAST(0x0000A392010F0E83 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (352, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A392010F1536 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (353, 1, N'admin', N'Build', N'生成插件模板', N'127.0.0.1', CAST(0x0000A392010F5DE1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (354, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A392011014EF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (355, 1, N'admin', N'Edit', N'修改content频道内容:节目', N'127.0.0.1', CAST(0x0000A39201108B7A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (356, 1, N'admin', N'Edit', N'修改content频道内容:广告', N'127.0.0.1', CAST(0x0000A3920110A0A8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (357, 1, N'admin', N'Edit', N'修改content频道内容:企业', N'127.0.0.1', CAST(0x0000A3920110B2D2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (358, 1, N'admin', N'Edit', N'修改content频道内容:个人', N'127.0.0.1', CAST(0x0000A3920110C43F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (359, 1, N'admin', N'Edit', N'修改content频道内容:演唱会', N'127.0.0.1', CAST(0x0000A3920110D81B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (360, 1, N'admin', N'Edit', N'修改content频道内容:大型活动', N'127.0.0.1', CAST(0x0000A3920110EF20 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (361, 1, N'admin', N'Edit', N'修改content频道内容:专题片', N'127.0.0.1', CAST(0x0000A39201110F36 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (362, 1, N'admin', N'Edit', N'修改content频道内容:大型活动', N'127.0.0.1', CAST(0x0000A39201111F10 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (363, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39201119EEE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (364, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3920112A8EC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (365, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3920112CAE0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (366, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A3920113C701 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (367, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39201219BE1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (368, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A39301269877 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (369, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A3930126A077 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (370, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A39301279AA7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (371, 1, N'admin', N'Edit', N'删除photo频道内容成功6条，失败0条', N'127.0.0.1', CAST(0x0000A3930127F9B1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (372, 1, N'admin', N'Edit', N'删除photo频道内容成功3条，失败0条', N'127.0.0.1', CAST(0x0000A39301280506 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (373, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A39301284C4F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (374, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A393012B6846 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (375, 1, N'admin', N'Edit', N'修改管理角色:系统管理组', N'127.0.0.1', CAST(0x0000A393012C929A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (376, 1, N'admin', N'Add', N'添加管理员:fjteam', N'127.0.0.1', CAST(0x0000A393012CE4A6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (377, 2, N'fjteam', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A393012CF5B7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (378, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A393012D534E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (379, 1, N'admin', N'Edit', N'修改管理角色:系统管理组', N'127.0.0.1', CAST(0x0000A393012D63F2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (380, 2, N'fjteam', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A393012D6EE4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (381, 2, N'fjteam', N'Edit', N'修改news频道内容:超级黑客Comex离开苹果', N'127.0.0.1', CAST(0x0000A393013EA857 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (382, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A39400A81429 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (383, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A39400A82300 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (384, 1, N'admin', N'Add', N'添加news频道栏目分类:aaa', N'127.0.0.1', CAST(0x0000A39400B5A3FF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (385, 1, N'admin', N'Add', N'添加news频道栏目分类:bbb', N'127.0.0.1', CAST(0x0000A39400B5A87E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (386, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A39400B71284 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (387, 1, N'admin', N'Edit', N'删除news频道栏目分类数据', N'127.0.0.1', CAST(0x0000A39400B72BC3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (388, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39401291DE5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (389, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A394012E8075 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (390, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A39401313994 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (391, 1, N'admin', N'Edit', N'修改news频道内容:超级黑客Comex离开苹果', N'127.0.0.1', CAST(0x0000A39401314DD7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (392, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39401366B63 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (393, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A39500EE4CD2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (394, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39500EE5665 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (395, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39500EED97A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (396, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A39500EF1BFD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (397, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A39600B5DE4A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (398, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A39900DBB5BB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (399, 1, N'admin', N'Edit', N'修改photo频道内容:中国少年梦', N'127.0.0.1', CAST(0x0000A39900DBD014 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (400, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3B500B3F19A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (401, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A3B500B3F99D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (402, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3B50131E158 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (403, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A3B50131EE12 AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (404, 1, N'admin', N'Build', N'生成模板:media', N'127.0.0.1', CAST(0x0000A3B501324146 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (405, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3C300A4DEB1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (406, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3CC01196901 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (407, 1, N'admin', N'Add', N'修改导航信息:新闻资讯', N'127.0.0.1', CAST(0x0000A3CC011A194A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (408, 1, N'admin', N'Add', N'修改导航信息:新闻资讯', N'127.0.0.1', CAST(0x0000A3CC011A3378 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (409, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3CC011DA3AE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (410, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3CC011F0B59 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (411, 1, N'admin', N'Add', N'修改导航信息:新闻资讯', N'127.0.0.1', CAST(0x0000A3CC011F9111 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (412, 1, N'admin', N'Add', N'修改导航信息:新闻资讯', N'127.0.0.1', CAST(0x0000A3CC01241346 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (413, 1, N'admin', N'Add', N'修改导航信息:新闻资讯', N'127.0.0.1', CAST(0x0000A3CC01264761 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (414, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3CC012A85CE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (415, 1, N'admin', N'Add', N'修改导航信息:新闻资讯', N'127.0.0.1', CAST(0x0000A3CC012C4AA5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (416, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3CD00FAD4AF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (417, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3CD00FC19CC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (418, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3CD00FC6CC3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (419, 1, N'admin', N'Edit', N'修改频道编程开发', N'127.0.0.1', CAST(0x0000A3CD00FEFE98 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (420, 1, N'admin', N'Edit', N'修改频道美食专享', N'127.0.0.1', CAST(0x0000A3CD0100B288 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (421, 1, N'admin', N'Edit', N'修改频道影音娱乐', N'127.0.0.1', CAST(0x0000A3CD0100CD5B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (422, 1, N'admin', N'Edit', N'修改频道资源下载', N'127.0.0.1', CAST(0x0000A3CD0100D24C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (423, 1, N'admin', N'Add', N'修改导航信息:资源下载', N'127.0.0.1', CAST(0x0000A3CD0100E31E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (424, 1, N'admin', N'Add', N'修改导航信息:美食专享', N'127.0.0.1', CAST(0x0000A3CD0100E99D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (425, 1, N'admin', N'Edit', N'删除goods频道栏目分类数据', N'127.0.0.1', CAST(0x0000A3CD0107B120 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (426, 1, N'admin', N'Edit', N'删除goods频道栏目分类数据', N'127.0.0.1', CAST(0x0000A3CD0107B95A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (427, 1, N'admin', N'Edit', N'删除goods频道栏目分类数据', N'127.0.0.1', CAST(0x0000A3CD0107C460 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (428, 1, N'admin', N'Edit', N'修改goods频道栏目分类:宅男专享', N'127.0.0.1', CAST(0x0000A3CD0107E371 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (429, 1, N'admin', N'Edit', N'修改goods频道栏目分类:萌女专享', N'127.0.0.1', CAST(0x0000A3CD01080F03 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (430, 1, N'admin', N'Edit', N'修改goods频道栏目分类:萌女专享', N'127.0.0.1', CAST(0x0000A3CD01081AF0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (431, 1, N'admin', N'Edit', N'删除goods频道栏目分类数据', N'127.0.0.1', CAST(0x0000A3CD01084A61 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (432, 1, N'admin', N'Edit', N'修改photo频道栏目分类:音乐', N'127.0.0.1', CAST(0x0000A3CD0108A7D1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (433, 1, N'admin', N'Edit', N'修改photo频道栏目分类:热门电影', N'127.0.0.1', CAST(0x0000A3CD0108C3F8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (434, 1, N'admin', N'Edit', N'删除content频道栏目分类数据', N'127.0.0.1', CAST(0x0000A3CD0108D4C6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (435, 1, N'admin', N'Edit', N'修改content频道栏目分类:关于博主', N'127.0.0.1', CAST(0x0000A3CD0108E94E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (436, 1, N'admin', N'Edit', N'修改news频道栏目分类:C#', N'127.0.0.1', CAST(0x0000A3CD01090B08 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (437, 1, N'admin', N'Edit', N'修改news频道栏目分类:ASP.NET', N'127.0.0.1', CAST(0x0000A3CD010923F3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (438, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3CD013929A2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (439, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3CF0127EFA3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (440, 1, N'admin', N'Add', N'添加news频道栏目分类:JS', N'127.0.0.1', CAST(0x0000A3CF0128B492 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (441, 1, N'admin', N'Add', N'添加news频道栏目分类:Html5+CSS3', N'127.0.0.1', CAST(0x0000A3CF0128ED1A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (442, 1, N'admin', N'Edit', N'修改news频道栏目分类:Html5+CSS3', N'127.0.0.1', CAST(0x0000A3CF0128F541 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (443, 1, N'admin', N'Edit', N'修改news频道栏目分类:JS', N'127.0.0.1', CAST(0x0000A3CF0128FAC6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (444, 1, N'admin', N'Edit', N'删除news频道内容成功10条，失败0条', N'127.0.0.1', CAST(0x0000A3CF01290C64 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (445, 1, N'admin', N'Edit', N'删除news频道内容成功10条，失败0条', N'127.0.0.1', CAST(0x0000A3CF01290F87 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (446, 1, N'admin', N'Add', N'添加news频道内容:省市联动(ASP.NET + XML)', N'127.0.0.1', CAST(0x0000A3CF012B756C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (447, 1, N'admin', N'Edit', N'修改频道编程开发', N'127.0.0.1', CAST(0x0000A3CF012B854E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (448, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3CF012BE4EC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (449, 1, N'admin', N'Edit', N'修改news频道内容:省市联动(ASP.NET + XML)', N'127.0.0.1', CAST(0x0000A3CF012D7262 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (450, 1, N'admin', N'Edit', N'修改news频道内容:省市联动(ASP.NET + XML)', N'127.0.0.1', CAST(0x0000A3CF012DA9AA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (451, 1, N'admin', N'Edit', N'修改news频道内容:省市联动(ASP.NET + XML)', N'127.0.0.1', CAST(0x0000A3CF013088EE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (452, 1, N'admin', N'Edit', N'删除goods频道内容成功10条，失败0条', N'127.0.0.1', CAST(0x0000A3CF01317EBD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (453, 1, N'admin', N'Edit', N'删除goods频道内容成功10条，失败0条', N'127.0.0.1', CAST(0x0000A3CF01318143 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (454, 1, N'admin', N'Edit', N'删除goods频道内容成功6条，失败0条', N'127.0.0.1', CAST(0x0000A3CF0131840C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (455, 1, N'admin', N'Edit', N'删除photo频道内容成功10条，失败0条', N'127.0.0.1', CAST(0x0000A3CF01318B6E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (456, 1, N'admin', N'Edit', N'删除content频道内容成功9条，失败0条', N'127.0.0.1', CAST(0x0000A3CF0131A485 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (457, 1, N'admin', N'Edit', N'删除content频道内容成功9条，失败0条', N'127.0.0.1', CAST(0x0000A3CF0131AA92 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (458, 1, N'admin', N'Edit', N'修改content频道内容:公司简介', N'127.0.0.1', CAST(0x0000A3CF0131B420 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (459, 1, N'admin', N'Edit', N'修改content频道内容:关于博主', N'127.0.0.1', CAST(0x0000A3CF0131C35F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (460, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF01386BD1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (461, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF0138991D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (462, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF0138CEEA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (463, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF01393C28 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (464, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF013A0813 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (465, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3CF013A40F0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (466, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF013A47D2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (467, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF013B13D9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (468, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF013B33D8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (469, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF013B769A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (470, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF013BAD3F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (471, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF013BD84E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (472, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3CF014140E1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (473, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3D100A66BEE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (474, 1, N'admin', N'Add', N'添加news频道栏目分类:网络安全', N'127.0.0.1', CAST(0x0000A3D100A6C6CE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (475, 1, N'admin', N'Add', N'添加news频道内容:为什么谷歌现在打不开了和解决办法', N'127.0.0.1', CAST(0x0000A3D100A87030 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (476, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D100ADD99A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (477, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D100B502D5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (478, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D100B69839 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (479, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D100B820B0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (480, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D100B8B1A3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (481, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D100B9CE4D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (482, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3D100C2F60F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (483, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D100C2FA45 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (484, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3D100F8AA61 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (485, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D100F8B071 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (486, 1, N'admin', N'Edit', N'修改news频道内容:为什么谷歌现在打不开了和解决办法', N'127.0.0.1', CAST(0x0000A3D100FAA8EA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (487, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101029F6B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (488, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101032B01 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (489, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101036CB8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (490, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101056C8E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (491, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10105C961 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (492, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1010665CA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (493, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1010731FE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (494, 1, N'admin', N'Edit', N'修改news频道内容:为什么谷歌现在打不开了和解决办法', N'127.0.0.1', CAST(0x0000A3D101075346 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (495, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101085208 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (496, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101092AA3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (497, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101096369 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (498, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10109740F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (499, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10109966F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (500, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101142E57 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (501, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10115CCED AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (502, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10115E012 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (503, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10116C66C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (504, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101171782 AS DateTime))
GO
print 'Processed 500 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (505, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1011812C2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (506, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101183F31 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (507, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10118D2AF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (508, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10118F624 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (509, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101195931 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (510, 1, N'admin', N'Edit', N'修改news频道内容:为什么谷歌现在打不开了和解决办法', N'127.0.0.1', CAST(0x0000A3D10119D1AC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (511, 1, N'admin', N'Edit', N'修改news频道内容:为什么谷歌现在打不开了和解决办法', N'127.0.0.1', CAST(0x0000A3D10119EB5A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (512, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1011B3636 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (513, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1011B6B7D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (514, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1011BA400 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (515, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1011C2B46 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (516, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1011C6E35 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (517, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1011F6289 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (518, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10121AF2A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (519, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10121F13E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (520, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012299D3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (521, 1, N'admin', N'Add', N'添加goods频道内容:西红柿炒鸡蛋', N'127.0.0.1', CAST(0x0000A3D101262650 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (522, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10126E97D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (523, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012763CD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (524, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012B0FE0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (525, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012B4D7B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (526, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012B7C44 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (527, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012BEADE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (528, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012C6897 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (529, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012CFB88 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (530, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012D14E8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (531, 1, N'admin', N'Edit', N'修改goods频道内容:西红柿炒鸡蛋', N'127.0.0.1', CAST(0x0000A3D1012D5F84 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (532, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012EE1D5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (533, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012F7471 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (534, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D1012FAA29 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (535, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D101300DB3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (536, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10131886A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (537, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10132A835 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (538, 1, N'admin', N'Edit', N'修改goods频道内容:西红柿炒鸡蛋', N'127.0.0.1', CAST(0x0000A3D10132EB9F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (539, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10133F090 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (540, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D10134174E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (541, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3D200A7E6A3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (542, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200A7EBE6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (543, 1, N'admin', N'Add', N'添加news频道内容:C#中抽象类和接口的区别', N'127.0.0.1', CAST(0x0000A3D200AD4DD3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (544, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200AD543D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (545, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200AE490F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (546, 1, N'admin', N'Edit', N'修改news频道内容:C#中抽象类和接口的区别', N'127.0.0.1', CAST(0x0000A3D200B08134 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (547, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200B4A1E4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (548, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200B68957 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (549, 1, N'admin', N'Add', N'添加news频道内容:Asp.NET 获取当前网页地址信息', N'127.0.0.1', CAST(0x0000A3D200BA46EE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (550, 1, N'admin', N'Edit', N'修改news频道内容:Asp.NET 获取当前网页地址信息', N'127.0.0.1', CAST(0x0000A3D200BA606E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (551, 1, N'admin', N'Edit', N'修改news频道内容:Asp.NET 获取当前网页地址信息', N'127.0.0.1', CAST(0x0000A3D200BB0CA6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (552, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200C3D4B5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (553, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200C48D5E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (554, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200C7EA95 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (555, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200C844D9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (556, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200C8E849 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (557, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200CAA6DF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (558, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200CB49ED AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (559, 1, N'admin', N'Add', N'添加photo频道内容:轻轻音乐', N'127.0.0.1', CAST(0x0000A3D200D5013B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (560, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200D779E3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (561, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200D82A0F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (562, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200D9ACA6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (563, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200DA5130 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (564, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200DE1DE6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (565, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200DE8C0B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (566, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200E50A3C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (567, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200E54C25 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (568, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200E71EB6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (569, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200E758EA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (570, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200E7C47D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (571, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200E7FBD8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (572, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200E81BBA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (573, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200E83C4A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (574, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200EC98E8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (575, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200F8A8FF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (576, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200F95AF3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (577, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200F98DFE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (578, 1, N'admin', N'Edit', N'修改URL配置信息:photo', N'127.0.0.1', CAST(0x0000A3D200FAC2DF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (579, 1, N'admin', N'Edit', N'修改URL配置信息:photo_list', N'127.0.0.1', CAST(0x0000A3D200FAD7AF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (580, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200FADE77 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (581, 1, N'admin', N'Edit', N'修改URL配置信息:photo', N'127.0.0.1', CAST(0x0000A3D200FB44B0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (582, 1, N'admin', N'Edit', N'修改URL配置信息:photo_list', N'127.0.0.1', CAST(0x0000A3D200FB5250 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (583, 1, N'admin', N'Edit', N'修改URL配置信息:photo_show', N'127.0.0.1', CAST(0x0000A3D200FB5DDC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (584, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200FB6280 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (585, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200FDAE83 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (586, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200FDF721 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (587, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D200FEFC83 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (588, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20100965F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (589, 1, N'admin', N'Edit', N'修改photo频道内容:轻轻音乐', N'127.0.0.1', CAST(0x0000A3D2010556F9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (590, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201067009 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (591, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20106C57E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (592, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20106DE2A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (593, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20106F7A1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (594, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201071361 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (595, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20107D437 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (596, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20107FEF9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (597, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20108433E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (598, 1, N'admin', N'Edit', N'修改photo频道内容:轻轻音乐', N'127.0.0.1', CAST(0x0000A3D20108AD8D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (599, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20108FBBE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (600, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201094BB4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (601, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201097F63 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (602, 1, N'admin', N'Edit', N'修改photo频道内容:去大理（电影《心花路放》插曲）', N'127.0.0.1', CAST(0x0000A3D20109E0A1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (603, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2010A3E0A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (604, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2010A5557 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (605, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2010A6620 AS DateTime))
GO
print 'Processed 600 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (606, 1, N'admin', N'Edit', N'修改photo频道内容:去大理（电影《心花路放》插曲）', N'127.0.0.1', CAST(0x0000A3D2010C6492 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (607, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2010C6AA9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (608, 1, N'admin', N'Edit', N'修改photo频道内容:去大理（电影《心花路放》插曲）', N'127.0.0.1', CAST(0x0000A3D2010FDB71 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (609, 1, N'admin', N'Add', N'添加photo频道内容:邓紫棋《泡沫》', N'127.0.0.1', CAST(0x0000A3D20111A446 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (610, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201121E1A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (611, 1, N'admin', N'Add', N'添加扩展字段:音乐地址', N'127.0.0.1', CAST(0x0000A3D20113237F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (612, 1, N'admin', N'Edit', N'修改频道影音娱乐', N'127.0.0.1', CAST(0x0000A3D201133389 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (613, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'127.0.0.1', CAST(0x0000A3D20113455C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (614, 1, N'admin', N'Edit', N'修改photo频道内容:去大理（电影《心花路放》插曲）', N'127.0.0.1', CAST(0x0000A3D201134D05 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (615, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20115B17A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (616, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20115E441 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (617, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201165829 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (618, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201173166 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (619, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201177F59 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (620, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2011B0753 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (621, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2011B2E1E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (622, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2011C2908 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (623, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2011C5D1F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (624, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2011CAEA9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (625, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2011D94C8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (626, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2011DC568 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (627, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D2011E2A0F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (628, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'127.0.0.1', CAST(0x0000A3D2011EB77D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (629, 1, N'admin', N'Edit', N'修改goods频道内容:西红柿炒鸡蛋', N'127.0.0.1', CAST(0x0000A3D2011F673D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (630, 1, N'admin', N'Edit', N'修改goods频道内容:西红柿炒鸡蛋', N'127.0.0.1', CAST(0x0000A3D2011FA0D4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (631, 1, N'admin', N'Edit', N'修改goods频道内容:西红柿炒鸡蛋', N'127.0.0.1', CAST(0x0000A3D2011FD97B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (632, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20120F002 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (633, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201213719 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (634, 1, N'admin', N'Add', N'添加photo频道内容:心花路放', N'127.0.0.1', CAST(0x0000A3D20121B1C5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (635, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'127.0.0.1', CAST(0x0000A3D20121EF1E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (636, 1, N'admin', N'Edit', N'修改photo频道内容:去大理（电影《心花路放》插曲）', N'127.0.0.1', CAST(0x0000A3D20122007A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (637, 1, N'admin', N'Add', N'添加photo频道内容:绣春刀', N'127.0.0.1', CAST(0x0000A3D2012243D8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (638, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201226834 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (639, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20122A367 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (640, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20122DEAC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (641, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20123539D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (642, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201239E91 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (643, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201242500 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (644, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201245A00 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (645, 1, N'admin', N'Add', N'修改扩展字段:播放地址', N'127.0.0.1', CAST(0x0000A3D20124CAA7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (646, 1, N'admin', N'Edit', N'修改photo频道内容:心花路放', N'127.0.0.1', CAST(0x0000A3D20125CF28 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (647, 1, N'admin', N'Edit', N'修改photo频道内容:绣春刀', N'127.0.0.1', CAST(0x0000A3D20126F9F5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (648, 1, N'admin', N'Edit', N'修改photo频道内容:绣春刀', N'127.0.0.1', CAST(0x0000A3D201270608 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (649, 1, N'admin', N'Edit', N'修改photo频道内容:心花路放', N'127.0.0.1', CAST(0x0000A3D201270D58 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (650, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D201278ECA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (651, 1, N'admin', N'Build', N'生成模板:acity', N'127.0.0.1', CAST(0x0000A3D20128934C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (652, 1, N'admin', N'Edit', N'修改content频道内容:关于博主', N'127.0.0.1', CAST(0x0000A3D2012AF62F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (653, 1, N'admin', N'Edit', N'修改content频道内容:关于博主', N'127.0.0.1', CAST(0x0000A3D2012D84E5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (654, 1, N'admin', N'Login', N'用户登录', N'113.110.223.24', CAST(0x0000A3D20136056A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (655, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.24', CAST(0x0000A3D2013610D7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (656, 1, N'admin', N'Edit', N'修改系统配置信息', N'113.110.223.24', CAST(0x0000A3D201362322 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (657, 1, N'admin', N'Login', N'用户登录', N'14.127.65.43', CAST(0x0000A3D2017A85AF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (658, 1, N'admin', N'Edit', N'修改模板文件:_share3.html', N'14.127.65.43', CAST(0x0000A3D20180FAB0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (659, 1, N'admin', N'Build', N'生成模板:acity', N'14.127.65.43', CAST(0x0000A3D201810090 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (660, 1, N'admin', N'Edit', N'修改模板文件:_share3.html', N'116.24.251.181', CAST(0x0000A3D2018235BD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (661, 1, N'admin', N'Build', N'生成模板:acity', N'116.24.251.181', CAST(0x0000A3D2018239E5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (662, 1, N'admin', N'Edit', N'修改模板文件:_share3.html', N'116.24.251.181', CAST(0x0000A3D2018336A2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (663, 1, N'admin', N'Build', N'生成模板:acity', N'116.24.251.181', CAST(0x0000A3D2018340A2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (664, 1, N'admin', N'Delete', N'删除友情链接成功2条，失败0条', N'14.127.65.43', CAST(0x0000A3D20184FE83 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (665, 1, N'admin', N'Delete', N'删除友情链接成功1条，失败0条', N'14.127.65.43', CAST(0x0000A3D201850B4B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (666, 1, N'admin', N'Edit', N'修改news频道内容:为什么谷歌现在打不开了和解决办法', N'14.127.65.43', CAST(0x0000A3D201870C43 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (667, 1, N'admin', N'Edit', N'修改news频道内容:省市联动(ASP.NET + XML)', N'14.127.65.43', CAST(0x0000A3D201871998 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (668, 1, N'admin', N'Login', N'用户登录', N'113.110.223.24', CAST(0x0000A3D3009DC944 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (669, 1, N'admin', N'Login', N'用户登录', N'113.110.223.24', CAST(0x0000A3D3009DC985 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (670, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.24', CAST(0x0000A3D3009E1DCE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (671, 1, N'admin', N'Edit', N'修改模板文件:_footer.html', N'113.110.223.217', CAST(0x0000A3D300B727D1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (672, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.217', CAST(0x0000A3D300B72CBE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (673, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.217', CAST(0x0000A3D300BBD151 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (674, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.217', CAST(0x0000A3D300C65A67 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (675, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.217', CAST(0x0000A3D300C662F4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (676, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.217', CAST(0x0000A3D300CF3366 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (677, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.217', CAST(0x0000A3D300D4352D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (678, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.217', CAST(0x0000A3D300D48776 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (679, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.217', CAST(0x0000A3D300D60697 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (680, 1, N'admin', N'Build', N'生成模板:acity', N'113.110.223.217', CAST(0x0000A3D300D66F33 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (681, 1, N'admin', N'Login', N'用户登录', N'113.97.91.22', CAST(0x0000A3D400AC430C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (682, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D400BABA8A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (683, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D400C0C12A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (684, 1, N'admin', N'Login', N'用户登录', N'113.97.91.22', CAST(0x0000A3D400FDA629 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (685, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D400FDF48C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (686, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'113.97.91.22', CAST(0x0000A3D400FE0B1B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (687, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D400FE0F97 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (688, 1, N'admin', N'Add', N'添加news频道栏目分类:SQLServer', N'113.97.91.22', CAST(0x0000A3D400FE3B7B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (689, 1, N'admin', N'Add', N'添加news频道内容:把相同分类下的某个字段放到一列中，用逗号分开', N'113.97.91.22', CAST(0x0000A3D40100055B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (690, 1, N'admin', N'Edit', N'修改news频道栏目分类:SQLServer', N'113.97.91.22', CAST(0x0000A3D40100CDB1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (691, 1, N'admin', N'Edit', N'修改news频道内容:把相同分类下的某个字段放到一列中，用逗号分开', N'113.97.91.22', CAST(0x0000A3D40103870C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (692, 1, N'admin', N'Add', N'添加photo频道内容:GALA-Young For You', N'113.97.91.22', CAST(0x0000A3D4010A1FB8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (693, 1, N'admin', N'Edit', N'修改photo频道内容:GALA-Young For You', N'113.97.91.22', CAST(0x0000A3D4010A3F4A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (694, 1, N'admin', N'Edit', N'保存news频道栏目分类排序', N'113.97.91.22', CAST(0x0000A3D4010AB336 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (695, 1, N'admin', N'Edit', N'修改news频道栏目分类:JQuery', N'113.97.91.22', CAST(0x0000A3D4010ACB2E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (696, 1, N'admin', N'Edit', N'修改news频道栏目分类:JQuery', N'113.97.91.22', CAST(0x0000A3D4010AD053 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (697, 1, N'admin', N'Login', N'用户登录', N'14.28.139.199', CAST(0x0000A3D401203620 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (698, 1, N'admin', N'Login', N'用户登录', N'14.28.139.199', CAST(0x0000A3D4012059D5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (699, 1, N'admin', N'Add', N'添加goods频道内容:酸辣土豆丝', N'14.28.139.199', CAST(0x0000A3D40120D010 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (700, 1, N'admin', N'Edit', N'修改goods频道内容:酸辣土豆丝', N'14.28.139.199', CAST(0x0000A3D40123015B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (701, 1, N'admin', N'Login', N'用户登录', N'14.28.139.199', CAST(0x0000A3D40123693B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (702, 1, N'admin', N'Edit', N'修改goods频道内容:酸辣土豆丝', N'14.28.139.199', CAST(0x0000A3D401237E5C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (703, 1, N'admin', N'Login', N'用户登录', N'14.28.139.199', CAST(0x0000A3D401249BC9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (704, 1, N'admin', N'Edit', N'修改goods频道内容:酸辣土豆丝', N'14.28.139.199', CAST(0x0000A3D40124B6D5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (705, 1, N'admin', N'Login', N'用户登录', N'14.28.139.199', CAST(0x0000A3D40124F992 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (706, 1, N'admin', N'Edit', N'修改goods频道内容:酸辣土豆丝', N'14.28.139.199', CAST(0x0000A3D40125099D AS DateTime))
GO
print 'Processed 700 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (707, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D40127C889 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (708, 1, N'admin', N'Add', N'添加photo频道栏目分类:麻辣隔壁', N'113.97.91.22', CAST(0x0000A3D40127DAFA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (709, 1, N'admin', N'Edit', N'保存photo频道栏目分类排序', N'113.97.91.22', CAST(0x0000A3D40127DF3E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (710, 1, N'admin', N'Add', N'添加扩展字段:图片高度（px）', N'113.97.91.22', CAST(0x0000A3D401284663 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (711, 1, N'admin', N'Edit', N'修改频道影音娱乐', N'113.97.91.22', CAST(0x0000A3D401284F8A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (712, 1, N'admin', N'Add', N'添加photo频道内容:请善待身边的每一个胖纸！', N'113.97.91.22', CAST(0x0000A3D4012861A6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (713, 1, N'admin', N'Add', N'添加photo频道内容:“本大爷的话你可听好啦！”', N'113.97.91.22', CAST(0x0000A3D40128C9EE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (714, 1, N'admin', N'Edit', N'删除photo频道内容成功1条，失败0条', N'113.97.91.22', CAST(0x0000A3D401321088 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (715, 1, N'admin', N'Add', N'添加photo频道内容:根本就停不下来！！', N'113.97.91.22', CAST(0x0000A3D401322A71 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (716, 1, N'admin', N'Add', N'添加photo频道内容:一位国外网友发现有只松鼠常到他家院里逛，于是他设计了一个小小的障碍，松鼠通过后就能吃到松子，每天一点点增大难度。结果根本难不倒它，两个礼拜后松鼠已然变成了特工！', N'113.97.91.22', CAST(0x0000A3D401326D05 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (717, 1, N'admin', N'Edit', N'修改photo频道内容:一位国外网友发现有只松鼠常到他家院里逛，于是他设计了一个小小的障碍，松鼠通过后就能吃到松子，每天一点点增大难度。结果根本难不倒它，两个礼拜后松鼠已然变成了特工！', N'113.97.91.22', CAST(0x0000A3D401328182 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (718, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D40135730B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (719, 1, N'admin', N'Add', N'添加photo频道内容:千万别让老爸看孩子啊！！！', N'113.97.91.22', CAST(0x0000A3D401362225 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (720, 1, N'admin', N'Login', N'用户登录', N'113.97.91.22', CAST(0x0000A3D500A108C9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (721, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'113.97.91.22', CAST(0x0000A3D500A13475 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (722, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D500A13961 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (723, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D500A745EC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (724, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'113.97.91.22', CAST(0x0000A3D500A874D0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (725, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D500A87AF8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (726, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D500A92D88 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (727, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'113.97.91.22', CAST(0x0000A3D500A95A80 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (728, 1, N'admin', N'Edit', N'修改模板文件:search.html', N'113.97.91.22', CAST(0x0000A3D500AA09B2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (729, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D500AA0EBC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (730, 1, N'admin', N'Build', N'生成模板:acity', N'113.97.91.22', CAST(0x0000A3D500AE06C4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (731, 1, N'admin', N'Edit', N'修改友情链接：读科技', N'113.97.91.22', CAST(0x0000A3D500AE9267 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (732, 1, N'admin', N'Edit', N'修改友情链接：支付宝', N'113.97.91.22', CAST(0x0000A3D500AE98E7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (733, 1, N'admin', N'Edit', N'修改友情链接：财付通', N'113.97.91.22', CAST(0x0000A3D500AE9C25 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (734, 1, N'admin', N'Edit', N'修改友情链接：站长中国', N'113.97.91.22', CAST(0x0000A3D500AE9F1C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (735, 1, N'admin', N'Edit', N'修改友情链接：动软卓越', N'113.97.91.22', CAST(0x0000A3D500AEA1B1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (736, 1, N'admin', N'Edit', N'修改友情链接：驱动人生', N'113.97.91.22', CAST(0x0000A3D500AEA491 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (737, 1, N'admin', N'Edit', N'修改友情链接：驱动之家', N'113.97.91.22', CAST(0x0000A3D500AEA6AC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (738, 1, N'admin', N'Edit', N'修改友情链接：站长网', N'113.97.91.22', CAST(0x0000A3D500AEACC0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (739, 1, N'admin', N'Edit', N'修改友情链接：电玩巴士', N'113.97.91.22', CAST(0x0000A3D500AEB188 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (740, 1, N'admin', N'Edit', N'修改友情链接：雷锋网', N'113.97.91.22', CAST(0x0000A3D500AEB67E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (741, 1, N'admin', N'Edit', N'修改友情链接：酷6科技', N'113.97.91.22', CAST(0x0000A3D500AEBB08 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (742, 1, N'admin', N'Edit', N'修改友情链接：IT茶馆', N'113.97.91.22', CAST(0x0000A3D500AEBEF8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (743, 1, N'admin', N'Edit', N'修改友情链接：计世网', N'113.97.91.22', CAST(0x0000A3D500AEC43A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (744, 1, N'admin', N'Edit', N'修改友情链接：雨林木风', N'113.97.91.22', CAST(0x0000A3D500AEC78F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (745, 1, N'admin', N'Edit', N'修改友情链接：移动站长', N'113.97.91.22', CAST(0x0000A3D500AECC48 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (746, 1, N'admin', N'Edit', N'修改友情链接：IT之家', N'113.97.91.22', CAST(0x0000A3D500AED127 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (747, 1, N'admin', N'Edit', N'修改友情链接：Discuz社区', N'113.97.91.22', CAST(0x0000A3D500AED8DD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (748, 1, N'admin', N'Edit', N'修改友情链接：手机之家', N'113.97.91.22', CAST(0x0000A3D500AEDD42 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (749, 1, N'admin', N'Edit', N'修改友情链接：淘宝数码', N'113.97.91.22', CAST(0x0000A3D500AEE25E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (750, 1, N'admin', N'Edit', N'修改友情链接：牛华网', N'113.97.91.22', CAST(0x0000A3D500AEE6B5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (751, 1, N'admin', N'Edit', N'修改友情链接：科技讯', N'113.97.91.22', CAST(0x0000A3D500AEEB44 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (752, 1, N'admin', N'Edit', N'修改友情链接：鞭牛士', N'113.97.91.22', CAST(0x0000A3D500AEEFD7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (753, 1, N'admin', N'Edit', N'修改友情链接：中国IT实验室', N'113.97.91.22', CAST(0x0000A3D500AEF6C8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (754, 1, N'admin', N'Edit', N'修改友情链接：中华网科技', N'113.97.91.22', CAST(0x0000A3D500AEFD02 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (755, 1, N'admin', N'Edit', N'修改友情链接：ckplayer视频播放器', N'113.97.91.22', CAST(0x0000A3D500AF1992 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (756, 1, N'admin', N'Edit', N'修改友情链接：麻省理工科技创业', N'113.97.91.22', CAST(0x0000A3D500AF20DC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (757, 1, N'admin', N'Login', N'用户登录', N'119.136.72.231', CAST(0x0000A3D5010F8F2D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (758, 1, N'admin', N'Login', N'用户登录', N'14.153.233.196', CAST(0x0000A3DB00ABB605 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (759, 1, N'admin', N'Add', N'添加news频道内容:.NET小常识', N'14.153.233.196', CAST(0x0000A3DB00AC63AD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (760, 1, N'admin', N'Add', N'添加news频道内容:.NET小常识', N'14.153.233.196', CAST(0x0000A3DB00AC63E5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (761, 1, N'admin', N'Edit', N'修改news频道内容:.NET小常识', N'14.153.233.196', CAST(0x0000A3DB00AC8A88 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (762, 1, N'admin', N'Edit', N'删除news频道内容成功1条，失败0条', N'14.153.233.196', CAST(0x0000A3DB00AC99EE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (763, 1, N'admin', N'Login', N'用户登录', N'14.153.233.196', CAST(0x0000A3DC00F197CF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (764, 1, N'admin', N'Add', N'添加友情链接：联图网', N'14.153.233.196', CAST(0x0000A3DC00F1B362 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (765, 1, N'admin', N'Add', N'添加友情链接：鬼哥Csdn免积分在线下载器v10.0-网页版', N'14.153.233.196', CAST(0x0000A3DC00F26D8C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (766, 1, N'admin', N'Login', N'用户登录', N'14.153.233.196', CAST(0x0000A3DC0108F440 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (767, 1, N'admin', N'Build', N'生成模板:acity', N'14.153.233.196', CAST(0x0000A3DC0108FB64 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (768, 1, N'admin', N'Edit', N'修改news频道内容:省市联动(ASP.NET + XML)', N'14.153.233.196', CAST(0x0000A3DC010D3850 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (769, 1, N'admin', N'Edit', N'修改news频道内容:省市联动(ASP.NET + XML)', N'14.153.233.196', CAST(0x0000A3DC010D8480 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (770, 1, N'admin', N'Edit', N'修改news频道内容:省市联动(ASP.NET + XML)', N'14.153.233.196', CAST(0x0000A3DC010DCE91 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (771, 1, N'admin', N'Edit', N'修改news频道内容:省市联动(ASP.NET + XML)', N'14.153.233.196', CAST(0x0000A3DC01107D08 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (772, 1, N'admin', N'Login', N'用户登录', N'116.30.1.216', CAST(0x0000A3DD00A8DC86 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (773, 1, N'admin', N'Edit', N'修改news频道内容:省市联动(ASP.NET + XML)', N'116.30.1.216', CAST(0x0000A3DD00A9C2C8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (774, 1, N'admin', N'Login', N'用户登录', N'116.30.1.216', CAST(0x0000A3DD012B18E6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (775, 1, N'admin', N'Login', N'用户登录', N'14.153.234.180', CAST(0x0000A3E00103A1F7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (776, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'14.153.234.180', CAST(0x0000A3E0010454E1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (777, 1, N'admin', N'Build', N'生成模板:acity', N'14.153.234.180', CAST(0x0000A3E001045D10 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (778, 1, N'admin', N'Build', N'生成模板:acity', N'14.153.234.180', CAST(0x0000A3E00104BCCA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (779, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'14.153.234.180', CAST(0x0000A3E00104DC65 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (780, 1, N'admin', N'Build', N'生成模板:acity', N'14.153.234.180', CAST(0x0000A3E00104E123 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (781, 1, N'admin', N'Login', N'用户登录', N'116.25.88.177', CAST(0x0000A3E200A45C64 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (782, 1, N'admin', N'Edit', N'修改news频道栏目分类:技术相关', N'116.25.88.177', CAST(0x0000A3E200A52351 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (783, 1, N'admin', N'Add', N'添加news频道内容:微软宣布.NET开发环境将开源 支持三大操作系统', N'116.25.88.177', CAST(0x0000A3E200A86383 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (784, 1, N'admin', N'Edit', N'修改news频道内容:微软宣布.NET开发环境将开源 支持三大操作系统', N'116.25.88.177', CAST(0x0000A3E200A9D021 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (785, 1, N'admin', N'Edit', N'修改news频道内容:微软宣布.NET开发环境将开源 支持三大操作系统', N'116.25.88.177', CAST(0x0000A3E200AA5455 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (786, 1, N'admin', N'Login', N'用户登录', N'116.30.2.123', CAST(0x0000A3E700FCC8C7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (787, 1, N'admin', N'Edit', N'修改系统配置信息', N'116.30.2.123', CAST(0x0000A3E700FE9AF2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (788, 1, N'admin', N'Build', N'生成模板:acity', N'116.30.2.123', CAST(0x0000A3E700FEA6F5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (789, 1, N'admin', N'Build', N'生成模板:acity', N'116.30.2.123', CAST(0x0000A3E700FED950 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (790, 1, N'admin', N'Edit', N'修改系统配置信息', N'116.30.2.123', CAST(0x0000A3E700FF0B93 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (791, 1, N'admin', N'Build', N'生成模板:acity', N'116.30.2.123', CAST(0x0000A3E700FF61B0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (792, 1, N'admin', N'Build', N'生成模板:acity', N'116.30.2.123', CAST(0x0000A3E70103AF5C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (793, 1, N'admin', N'Login', N'用户登录', N'116.30.2.123', CAST(0x0000A3E7010AFF73 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (794, 1, N'admin', N'Build', N'生成模板:acity', N'116.30.2.123', CAST(0x0000A3E7010B0630 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (795, 1, N'admin', N'Login', N'用户登录', N'116.30.2.123', CAST(0x0000A3E800F24F12 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (796, 1, N'admin', N'Login', N'用户登录', N'14.155.21.179', CAST(0x0000A3F000AAEA72 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (797, 1, N'admin', N'Add', N'添加news频道内容:SQL', N'14.155.21.179', CAST(0x0000A3F000AAFBBF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (798, 1, N'admin', N'Edit', N'修改news频道内容:SQL语句中case when的日常用法', N'14.155.21.179', CAST(0x0000A3F000AFE302 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (799, 1, N'admin', N'Edit', N'修改news频道内容:SQL语句中case when的日常用法', N'14.155.21.179', CAST(0x0000A3F000B030D9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (800, 1, N'admin', N'Edit', N'修改news频道内容:SQL语句中case when的日常用法', N'14.155.21.179', CAST(0x0000A3F000B12BA6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (801, 1, N'admin', N'Edit', N'修改news频道内容:SQL语句中case when的日常用法', N'14.155.21.179', CAST(0x0000A3F000B13DCB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (802, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'14.155.21.179', CAST(0x0000A3F000B19A72 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (803, 1, N'admin', N'Build', N'生成模板:acity', N'14.155.21.179', CAST(0x0000A3F000B1A00C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (804, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'14.155.21.179', CAST(0x0000A3F000B1CF4A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (805, 1, N'admin', N'Build', N'生成模板:acity', N'14.155.21.179', CAST(0x0000A3F000B1D2DC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (806, 1, N'admin', N'Edit', N'修改news频道内容:SQL语句中case when的日常用法', N'14.155.21.179', CAST(0x0000A3F000B1E5A5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (807, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'14.155.21.179', CAST(0x0000A3F000B24BF2 AS DateTime))
GO
print 'Processed 800 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (808, 1, N'admin', N'Build', N'生成模板:acity', N'14.155.21.179', CAST(0x0000A3F000B5A2FF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (809, 1, N'admin', N'Login', N'用户登录', N'14.155.21.179', CAST(0x0000A3F000BC2E56 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (810, 1, N'admin', N'Edit', N'修改news频道内容:SQL语句中case when的日常用法', N'14.155.21.179', CAST(0x0000A3F000BDA007 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (811, 1, N'admin', N'Login', N'用户登录', N'14.155.21.139', CAST(0x0000A3F7010B139F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (812, 1, N'admin', N'Build', N'生成模板:acity', N'14.155.21.139', CAST(0x0000A3F7010B18A8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (813, 1, N'admin', N'Login', N'用户登录', N'183.37.121.62', CAST(0x0000A3FB00DC744B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (814, 1, N'admin', N'Instal', N'安装插件', N'183.37.121.62', CAST(0x0000A3FB00DC7B7D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (815, 1, N'admin', N'Build', N'生成插件模板', N'183.37.121.62', CAST(0x0000A3FB00DC8484 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (816, 1, N'admin', N'Build', N'生成插件模板', N'183.37.121.62', CAST(0x0000A3FB00DC886F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (817, 1, N'admin', N'Login', N'用户登录', N'119.136.76.175', CAST(0x0000A3FB00E5BF20 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (818, 1, N'admin', N'Instal', N'安装插件', N'119.136.76.175', CAST(0x0000A3FB00E5C53E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (819, 1, N'admin', N'Back', N'备份数据库文件:E:\wwwroot\acity\back\201412081403186282.bak', N'119.136.76.175', CAST(0x0000A3FB00E7A2C8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (820, 1, N'admin', N'Login', N'用户登录', N'183.37.122.204', CAST(0x0000A40A00AE2916 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (821, 1, N'admin', N'Delete', N'删除管理员1条，失败0条', N'183.37.122.204', CAST(0x0000A40A00AE3A02 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (822, 1, N'admin', N'Edit', N'修改管理员:admin', N'183.37.122.204', CAST(0x0000A40A00AE5854 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (823, 1, N'admin', N'Edit', N'修改news频道栏目分类:JQuery/js', N'183.37.122.204', CAST(0x0000A40A00AE853F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (824, 1, N'admin', N'Add', N'添加news频道内容:js实现加入收藏夹通用代码', N'183.37.122.204', CAST(0x0000A40A00AEEAF1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (825, 1, N'admin', N'Edit', N'修改模板文件:content.html', N'183.37.122.204', CAST(0x0000A40A00AF5EAF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (826, 1, N'admin', N'Build', N'生成模板:acity', N'183.37.122.204', CAST(0x0000A40A00AF63A1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (827, 1, N'admin', N'Login', N'用户登录', N'183.13.222.105', CAST(0x0000A4160098C0DA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (828, 1, N'admin', N'Login', N'用户登录', N'183.13.222.105', CAST(0x0000A416009C1815 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (829, 1, N'admin', N'Edit', N'修改模板文件:_footer.html', N'183.13.222.105', CAST(0x0000A416009C396D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (830, 1, N'admin', N'Build', N'生成模板:acity', N'183.13.222.105', CAST(0x0000A416009C3E3E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (831, 1, N'admin', N'Login', N'用户登录', N'116.30.1.208', CAST(0x0000A41900F0BFE5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (832, 1, N'admin', N'Add', N'添加news频道内容:未能加载文件或程序集“FredCK.FCKeditorV2, Version=2.2.2396.27828, Culture=neutral, PublicKeyToken....=', N'116.30.1.208', CAST(0x0000A41900F1F3D7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (833, 1, N'admin', N'Login', N'用户登录', N'113.110.221.22', CAST(0x0000A41A00F45C1E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (834, 1, N'admin', N'Add', N'添加news频道内容:js', N'113.110.221.22', CAST(0x0000A41A00F468CA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (835, 1, N'admin', N'Edit', N'修改news频道内容:js实现彩票排列组合方法', N'113.110.221.22', CAST(0x0000A41A00F5126B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (836, 1, N'admin', N'Add', N'添加news频道内容:ASP.NET jquery.uploadify.js上传插件(带进度条)', N'113.110.221.22', CAST(0x0000A41A00F9FFDF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (837, 1, N'admin', N'Edit', N'修改news频道内容:ASP.NET jquery.uploadify.js上传插件(带进度条)', N'113.110.221.22', CAST(0x0000A41A00FA250F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (838, 1, N'admin', N'Edit', N'修改news频道内容:ASP.NET jquery.uploadify.js上传插件(带进度条)', N'113.110.221.22', CAST(0x0000A41A00FA3A0F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (839, 1, N'admin', N'Edit', N'修改down频道内容:jQuery焦点全屏广告图', N'113.110.221.22', CAST(0x0000A41A00FD33ED AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (840, 1, N'admin', N'Edit', N'删除down频道内容成功4条，失败0条', N'113.110.221.22', CAST(0x0000A41A00FD802C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (841, 1, N'admin', N'Login', N'用户登录', N'116.25.91.200', CAST(0x0000A45A00AB1F91 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (842, 1, N'admin', N'Add', N'添加友情链接：一起记', N'116.25.91.200', CAST(0x0000A45A00ABBBD4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (843, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'116.25.91.200', CAST(0x0000A45A00ACF6BC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (844, 1, N'admin', N'Build', N'生成模板:acity', N'116.25.91.200', CAST(0x0000A45A00ACFDF8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (845, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'116.25.91.200', CAST(0x0000A45A00AD2603 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (846, 1, N'admin', N'Build', N'生成模板:acity', N'116.25.91.200', CAST(0x0000A45A00AD2A19 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (847, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'116.25.91.200', CAST(0x0000A45A00AD7307 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (848, 1, N'admin', N'Build', N'生成模板:acity', N'116.25.91.200', CAST(0x0000A45A00AD7699 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (849, 1, N'admin', N'Login', N'用户登录', N'116.25.91.200', CAST(0x0000A45A00B13C34 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (850, 1, N'admin', N'Add', N'添加news频道内容:.NET 页面间传值的几种方法', N'116.25.91.200', CAST(0x0000A45A00B290AC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (851, 1, N'admin', N'Edit', N'修改news频道内容:.NET 页面间传值的几种方法', N'116.25.91.200', CAST(0x0000A45A00B5CD84 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (852, 1, N'admin', N'Edit', N'修改news频道内容:.NET 页面间传值的几种方法', N'116.25.91.200', CAST(0x0000A45A00B64078 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (853, 1, N'admin', N'Login', N'用户登录', N'113.92.228.133', CAST(0x0000A4630155DEE3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (854, 1, N'admin', N'Edit', N'修改模板文件:_footer.html', N'113.92.230.40', CAST(0x0000A4630155FB45 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (855, 1, N'admin', N'Build', N'生成模板:acity', N'113.92.228.133', CAST(0x0000A4630155FF8E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (856, 1, N'admin', N'Login', N'用户登录', N'113.110.140.164', CAST(0x0000A46400DD7A02 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (857, 1, N'admin', N'Add', N'添加友情链接：爱编程', N'113.110.140.164', CAST(0x0000A46400DDB190 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (858, 1, N'admin', N'Login', N'用户登录', N'113.110.140.164', CAST(0x0000A46400E1E2CC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (859, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'113.110.140.164', CAST(0x0000A46400E20AEA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (860, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'113.110.140.164', CAST(0x0000A46400E25C12 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (861, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'113.110.140.164', CAST(0x0000A46400E2BD51 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (862, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'113.110.140.164', CAST(0x0000A46400E32CAE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (863, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'113.110.140.164', CAST(0x0000A46400E3EF0C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (864, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'113.110.140.164', CAST(0x0000A46400E40F4B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (865, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'113.110.140.164', CAST(0x0000A46400E45F33 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (866, 1, N'admin', N'Edit', N'修改photo频道内容:邓紫棋《泡沫》', N'113.110.140.164', CAST(0x0000A46400E4BA50 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (867, 1, N'admin', N'Login', N'用户登录', N'112.95.172.42', CAST(0x0000A46800BEC5E9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (868, 1, N'admin', N'Add', N'添加news频道内容:C#中拼接JSON字符串', N'112.95.172.43', CAST(0x0000A46800BEF187 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (869, 1, N'admin', N'Edit', N'修改news频道内容:C#中拼接JSON字符串', N'112.95.172.42', CAST(0x0000A46800C04BFB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (870, 1, N'admin', N'Login', N'用户登录', N'112.95.172.42', CAST(0x0000A46C00BDF065 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (871, 1, N'admin', N'Login', N'用户登录', N'112.95.172.44', CAST(0x0000A46C00E81181 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (872, 1, N'admin', N'Login', N'用户登录', N'112.95.172.43', CAST(0x0000A47600A0F1CB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (873, 1, N'admin', N'Login', N'用户登录', N'116.25.162.43', CAST(0x0000A49100B9205F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (874, 1, N'admin', N'Login', N'用户登录', N'218.18.3.203', CAST(0x0000A4CF00E7D1B9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (875, 1, N'admin', N'Delete', N'删除友情链接成功5条，失败0条', N'218.18.3.203', CAST(0x0000A4CF00EE934A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (876, 1, N'admin', N'Delete', N'删除友情链接成功4条，失败0条', N'218.18.3.203', CAST(0x0000A4CF00EE9DE8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (877, 1, N'admin', N'Delete', N'删除友情链接成功1条，失败0条', N'218.18.3.203', CAST(0x0000A4CF00EEA309 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (878, 1, N'admin', N'Delete', N'删除友情链接成功5条，失败0条', N'218.18.3.203', CAST(0x0000A4CF00EEAD53 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (879, 1, N'admin', N'Delete', N'删除友情链接成功5条，失败0条', N'218.18.3.203', CAST(0x0000A4CF00EEB870 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (880, 1, N'admin', N'Delete', N'删除友情链接成功5条，失败0条', N'218.18.3.203', CAST(0x0000A4CF00EEC046 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (881, 1, N'admin', N'Login', N'用户登录', N'218.18.251.35', CAST(0x0000A541013D399E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (882, 1, N'admin', N'Login', N'用户登录', N'113.118.137.110', CAST(0x0000A60800BB95B6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (883, 1, N'admin', N'Back', N'备份数据库文件:E:\wwwroot\acity\back\201605161123451702.bak', N'113.118.137.110', CAST(0x0000A60800BBCD99 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (884, 1, N'admin', N'Add', N'添加goods频道内容:大拌菜', N'113.118.137.110', CAST(0x0000A60800C0145E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (885, 1, N'admin', N'Edit', N'修改goods频道内容:大拌菜', N'113.118.137.110', CAST(0x0000A60800C113B9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (886, 1, N'admin', N'Edit', N'修改goods频道内容:大拌菜', N'113.118.137.110', CAST(0x0000A60800C1223E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (887, 1, N'admin', N'Login', N'用户登录', N'119.136.98.76', CAST(0x0000A61700FEAD07 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (888, 1, N'admin', N'Login', N'用户登录', N'218.18.1.174', CAST(0x0000A6270113FA58 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (889, 1, N'admin', N'Login', N'用户登录', N'218.18.3.51', CAST(0x0000A67C00A27982 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (890, 1, N'admin', N'Edit', N'修改系统配置信息', N'218.18.3.51', CAST(0x0000A67C00A2AAF8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (891, 1, N'admin', N'Login', N'用户登录', N'113.118.137.238', CAST(0x0000A68A010AA35B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (892, 1, N'admin', N'Login', N'用户登录', N'113.116.78.174', CAST(0x0000A68A010ADBF9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (893, 1, N'admin', N'Login', N'用户登录', N'113.118.137.238', CAST(0x0000A68A01100124 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (894, 1, N'admin', N'Login', N'用户登录', N'113.118.137.238', CAST(0x0000A68A01105F54 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (895, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'113.118.137.238', CAST(0x0000A68A0110A733 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (896, 1, N'admin', N'Build', N'生成模板:acity', N'113.118.137.238', CAST(0x0000A68A0110AD2B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (897, 1, N'admin', N'Login', N'用户登录', N'218.18.1.88', CAST(0x0000A68C00AF983E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (898, 1, N'admin', N'Login', N'用户登录', N'119.136.99.128', CAST(0x0000A69F00FD5E67 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (899, 1, N'admin', N'Build', N'生成模板:acity', N'119.136.99.128', CAST(0x0000A69F00FD66B5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (900, 1, N'admin', N'Login', N'用户登录', N'113.118.137.55', CAST(0x0000A6B1016BBE20 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (901, 1, N'admin', N'Edit', N'修改模板文件:~$share3.html', N'113.118.137.55', CAST(0x0000A6B1016BFEBE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (902, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'113.118.137.55', CAST(0x0000A6B1016D3856 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (903, 1, N'admin', N'Build', N'生成模板:acity', N'113.118.137.55', CAST(0x0000A6B1016D3DA5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (904, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'113.118.137.55', CAST(0x0000A6B1016D729E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (905, 1, N'admin', N'Build', N'生成模板:acity', N'113.118.137.55', CAST(0x0000A6B1016D7711 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (906, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'113.118.137.55', CAST(0x0000A6B1016D9121 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (907, 1, N'admin', N'Build', N'生成模板:acity', N'113.118.137.55', CAST(0x0000A6B1016D9493 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (908, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'113.118.137.55', CAST(0x0000A6B1016E0525 AS DateTime))
GO
print 'Processed 900 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (909, 1, N'admin', N'Build', N'生成模板:acity', N'113.118.137.55', CAST(0x0000A6B1016E0A02 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (910, 1, N'admin', N'Edit', N'修改模板文件:index.html', N'113.118.137.55', CAST(0x0000A6B1016E64B8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (911, 1, N'admin', N'Build', N'生成模板:acity', N'113.118.137.55', CAST(0x0000A6B1016E699D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (912, 1, N'admin', N'Login', N'用户登录', N'183.60.162.226', CAST(0x0000A6C200E96BFD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (913, 1, N'admin', N'Add', N'添加news频道栏目分类:NodeJs', N'183.60.162.226', CAST(0x0000A6C200E983E1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (914, 1, N'admin', N'Add', N'添加news频道内容:node.js基于express框架搭建一个简单的注册登录Web功能', N'183.60.162.226', CAST(0x0000A6C200EA055D AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_manager_log] OFF
/****** Object:  Table [dbo].[dt_user_amount_log]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_amount_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](50) NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[value] [decimal](9, 2) NULL,
	[remark] [nvarchar](500) NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_AMOUNT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号但保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
SET IDENTITY_INSERT [dbo].[dt_user_amount_log] ON
INSERT [dbo].[dt_user_amount_log] ([id], [user_id], [user_name], [type], [order_no], [trade_no], [payment_id], [value], [remark], [status], [add_time], [complete_time]) VALUES (1, 1, N'sijinglei', N'SysGive', N'', N'', 0, CAST(1.00 AS Decimal(9, 2)), N'注册赠送金额', 1, CAST(0x0000A38B00F47B3F AS DateTime), CAST(0x0000A38B00F47B3F AS DateTime))
INSERT [dbo].[dt_user_amount_log] ([id], [user_id], [user_name], [type], [order_no], [trade_no], [payment_id], [value], [remark], [status], [add_time], [complete_time]) VALUES (2, 2, N'test123', N'SysGive', N'', N'', 0, CAST(1.00 AS Decimal(9, 2)), N'注册赠送金额', 1, CAST(0x0000A38B00F6F683 AS DateTime), CAST(0x0000A38B00F6F683 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_user_amount_log] OFF
/****** Object:  Table [dbo].[dt_sms_template]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_sms_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_SMS_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机短信模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template'
GO
SET IDENTITY_INSERT [dbo].[dt_sms_template] ON
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (1, N'会员验证码短信', N'usercode', N'您的验证码为：{code}，{valid}分钟内有效。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (2, N'欢迎新用户短信', N'welcomemsg', N'欢迎成为{webname}会员，你的用户名为：{username}，注意保管好您的账户信息。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (3, N'订单确认通知', N'order_confirm', N'尊敬的{username}，您在{webname}的订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (4, N'订单发货通知', N'order_express', N'尊敬的{username}，您在{webname}的订单已发货，订单号为：{orderno}，请注意查收。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (5, N'订单完成通知', N'order_complete', N'尊敬的{username}，您在{webname}的一笔订单交易完成，订单号为：{orderno}，期待下次光临，祝您购物愉快。', 1)
SET IDENTITY_INSERT [dbo].[dt_sms_template] OFF
/****** Object:  Table [dbo].[dt_payment]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[type] [tinyint] NULL,
	[poundage_type] [tinyint] NULL,
	[poundage_amount] [decimal](9, 2) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](100) NULL,
 CONSTRAINT [PK_DT_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型1线上2线下' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费类型1百分比2固定金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment'
GO
SET IDENTITY_INSERT [dbo].[dt_payment] ON
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (1, N'货到付款', N'', N'收到商品后进行支付，支持现金和刷卡服务。', 2, 2, CAST(0.00 AS Decimal(9, 2)), 99, 0, N'')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (2, N'账户余额', N'', N'账户余额是客户在您网站上的账户虚拟资金', 1, 2, CAST(0.00 AS Decimal(9, 2)), 100, 0, N'balance')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (3, N'支付宝', N'', N'付款后立即到账，无预付/年费，单笔费率阶梯最低0.7%，无流量限制。<a href="https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C433530444855584111X&market_type=from_agent_contract&pro_codes=61F99645EC0DC4380ADE569DD132AD7A" target="_blank">立即申请</a>', 1, 2, CAST(0.00 AS Decimal(9, 2)), 101, 0, N'alipay')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (4, N'财付通', N'', N'费率最低至<span style="color:#FF0000;font-weight: bold;">0.61%</span>，并赠送价值千元企业QQ。<a href="http://union.tenpay.com/mch/mch_register.shtml?sp_suggestuser=1202822001" target="_blank">中小商家签约入口</a>', 1, 2, CAST(0.00 AS Decimal(9, 2)), 102, 0, N'tenpay')
SET IDENTITY_INSERT [dbo].[dt_payment] OFF
/****** Object:  Table [dbo].[dt_orders]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[payment_fee] [decimal](9, 2) NULL,
	[payment_status] [tinyint] NULL,
	[payment_time] [datetime] NULL,
	[express_id] [int] NULL,
	[express_no] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[express_status] [tinyint] NULL,
	[express_time] [datetime] NULL,
	[accept_name] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[mobile] [nvarchar](20) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[message] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[payable_amount] [decimal](9, 2) NULL,
	[real_amount] [decimal](9, 2) NULL,
	[order_amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[confirm_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ORDERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号担保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付手续费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付状态1未支付2已支付' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货状态1未发货2已发货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属省市区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payable_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'real_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态1生成订单,2确认订单,3完成订单,4取消订单,5作废订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'confirm_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders'
GO
/****** Object:  Table [dbo].[dt_article_attribute_field]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[control_type] [nvarchar](50) NULL,
	[data_type] [nvarchar](50) NULL,
	[data_length] [int] NULL,
	[data_place] [tinyint] NULL,
	[item_option] [ntext] NULL,
	[default_value] [ntext] NULL,
	[is_required] [tinyint] NULL,
	[is_password] [tinyint] NULL,
	[is_html] [tinyint] NULL,
	[editor_type] [tinyint] NULL,
	[valid_tip_msg] [nvarchar](255) NULL,
	[valid_error_msg] [nvarchar](255) NULL,
	[valid_pattern] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'control_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小数点位数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'item_option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'default_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否必填0非必填1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否密码框' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许HTML' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_html'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑器类型0标准型1简洁型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'editor_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_tip_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证失败提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_error_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证正则表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_pattern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field'
GO
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] ON
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (1, N'sub_title', N'副标题', N'single-text', N'nvarchar(255)', 255, 0, N'', N'', 0, 0, 0, 0, N'可为空，最多255个字符', N'', N's0-255', 99, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (2, N'source', N'信息来源', N'single-text', N'nvarchar(50)', 50, 0, N'', N'本站', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 100, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (3, N'author', N'文章作者', N'single-text', N'nvarchar(50)', 50, 0, N'', N'', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 101, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (4, N'goods_no', N'商品货号', N'single-text', N'nvarchar(100)', 100, 0, N'', N'', 0, 0, 0, 0, N'允许字母、下划线，100个字符内', N'', N's0-100', 103, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (5, N'stock_quantity', N'库存数量', N'number', N'int', 0, 0, N'', N'0', 1, 0, 0, 0, N'库存数量为0时显示缺货状态', N'', N'n', 104, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (6, N'market_price', N'市场价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 0, 0, 0, 0, N'市场的参与价格，不参与计算', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 105, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (7, N'sell_price', N'销售价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 1, 0, 0, 0, N'*出售的实际交易价格', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 106, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (8, N'point', N'交易积分', N'number', N'int', 0, 0, N'', N'0', 0, 0, 0, 0, N'*正为返还，负为消费积分', N'', N'n', 107, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (9, N'mp3_url', N'播放地址', N'single-text', N'nvarchar(500)', 500, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (10, N'img_h', N'图片高度（px）', N'number', N'int', 0, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0)
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] OFF
/****** Object:  Table [dbo].[dt_article_attach]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[file_name] [nvarchar](100) NULL,
	[file_path] [nvarchar](255) NULL,
	[file_size] [int] NULL,
	[file_ext] [nvarchar](20) NULL,
	[down_num] [int] NULL,
	[point] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTACH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小(字节)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'down_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分(正赠送负消费)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach'
GO
SET IDENTITY_INSERT [dbo].[dt_article_attach] ON
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (12, 121, N'Province.xml', N'/upload/201411/07/201411071632042187.xml', 17488, N'xml', 0, 0, CAST(0x0000A3DC01107CF5 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (13, 102, N'jquery带位置图标按钮全屏广告图.rar', N'/upload/201501/08/201501081521104423.rar', 698424, N'rar', 10, 0, CAST(0x0000A41A00FD33ED AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_attach] OFF
/****** Object:  Table [dbo].[dt_article_albums]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[thumb_path] [nvarchar](255) NULL,
	[original_path] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ALBUMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'thumb_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'original_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片相册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums'
GO
SET IDENTITY_INSERT [dbo].[dt_article_albums] ON
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (378, 123, N'/upload/201410/27/thumb_201410271817132203.jpg', N'/upload/201410/27/201410271817132203.jpg', N'', CAST(0x0000A3D1012D5F7F AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (379, 148, N'/upload/201605/16/thumb_201605161142488733.jpg', N'/upload/201605/16/201605161142488733.jpg', N'', CAST(0x0000A60800C113B9 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (380, 148, N'/upload/201605/16/thumb_201605161142532015.jpg', N'/upload/201605/16/201605161142532015.jpg', N'', CAST(0x0000A60800C113B9 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (381, 148, N'/upload/201605/16/thumb_201605161142571077.jpg', N'/upload/201605/16/201605161142571077.jpg', N'', CAST(0x0000A60800C113B9 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_albums] OFF
/****** Object:  Table [dbo].[dt_article]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NULL,
	[click] [int] NULL,
	[status] [tinyint] NULL,
	[groupids_view] [nvarchar](255) NULL,
	[vote_id] [int] NULL,
	[is_msg] [tinyint] NULL,
	[is_top] [tinyint] NULL,
	[is_red] [tinyint] NULL,
	[is_hot] [tinyint] NULL,
	[is_slide] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
	[user_name] [nvarchar](100) NULL,
	[add_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'zhaiyao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'click'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1未审核2锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'groupids_view'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联投票ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'vote_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_top'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_hot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否幻灯片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_slide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员发布0不是1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'update_time'
GO
SET IDENTITY_INSERT [dbo].[dt_article] ON
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (3, 5, 32, N'about', N'关于博主', N'', N'', N'', N'', N'', N'博主最近很忙，没空写文章，敬请原谅！！ 如有问题可以加我QQ779730030来咨询！！', N'<p>
	<span style="color:#E56600;font-size:16px;"><strong>博主最近很忙，没空写文章，敬请原谅！！</strong></span> 
</p>
<p>
	<span style="color:#E56600;font-size:16px;"><strong>如有问题可以加我QQ779730030来咨询！！</strong></span> 
</p>
<p>
	&nbsp;
</p>
<embed src="http://player.youku.com/player.php/sid/XMjM4ODc1NDAw/v.swf" quality="high" width="480" height="400" align="middle" allowscriptaccess="always" type="application/x-shockwave-flash" />', 0, 419, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0EF018205E0 AS DateTime), CAST(0x0000A3D2012D84E2 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (102, 4, 31, N'', N'jQuery焦点全屏广告图', N'', N'/upload/201501/08/201501081518233017.jpg', N'', N'淘宝商城,jQuery焦点图', N'', N'jQuery焦点全屏广告图自适应窗口大小', N'<p>
	jQuery焦点全屏广告图自适应窗口大小
</p>
<img alt="" src="/upload/201501/08/201501081518233017.jpg" /> 
<p>
	&nbsp;
</p>
<p>
	&nbsp;
</p>', 99, 340, 0, N'', 0, 0, 1, 1, 0, 0, 1, N'admin', CAST(0x0000A41A00FC4BE4 AS DateTime), CAST(0x0000A41A00FD33E9 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (121, 1, 6, N'', N'省市联动(ASP.NET + XML)', N'', N'/upload/201410/28/201410282343538125.png', N'省市联动(ASP.NET + XML)', N'省市联动，ASP.NET，ASP.NET 操作XML，省市联动菜单', N'最基础后台省市联动实现方法，适合初学者。', N'方法中的XML文件见附件！Province.xml 前台代码：&lt;asp:DropDownList ID=&quot;DropDownListProvince&quot; runat=&quot;server&quot; CssClass=&quot;input select&quot; AutoPostBack=&quot;True&quot; OnSelectedIndexChanged=&quot;DropDownListProvince_SelectedIndexC…', N'<h4>
	<span style="font-family:SimSun;font-size:14px;">方法中的XML文件见附件！</span><a href="/upload/201411/07/201411071632042187.xml" target="_blank"><span style="font-family:SimSun;font-size:14px;">Province.xml</span> </a> 
</h4>
<p>
	<br />
</p>
<pre class="prettyprint lang-cs">前台代码：
<pre class="prettyprint lang-vb">&lt;asp:DropDownList ID="DropDownListProvince" runat="server" CssClass="input select" AutoPostBack="True" OnSelectedIndexChanged="DropDownListProvince_SelectedIndexChanged"&gt;&lt;/asp:DropDownList&gt;
&lt;asp:DropDownList ID="DropDownListCity" runat="server" CssClass="input select"&gt;&lt;/asp:DropDownList&gt;&lt;span style="color:red;"&gt;*&lt;/span&gt;
&lt;asp:Label ID="LabelMessage" runat="server" Text=""&gt;&lt;/asp:Label&gt;</pre>
后台代码：
</pre>
<pre class="prettyprint lang-cs">



<pre class="prettyprint lang-cs">using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
namespace DTcms.Web
{
    public partial class join : System.Web.UI.Page
    {
        public string City = "广州";
        protected void Page_Load(object sender, EventArgs e)
        {
            // 在此处放置用户代码以初始化页面
            string CurrentPath = this.Server.MapPath(".");
            if (!Page.IsPostBack)
            {
                if (System.IO.File.Exists(CurrentPath + "\\Province.xml"))
                {
                    this.DropDownListProvince.Items.Clear();
                    System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
                    doc.Load(CurrentPath + "\\Province.xml");
                    XmlNodeList nodes = doc.DocumentElement.ChildNodes;
                    XmlNode node1 = doc.DocumentElement.SelectSingleNode(@"Province/City[@Name=''" + this.City + "'']");
                    foreach (XmlNode node in nodes)
                    {
                        this.DropDownListProvince.Items.Add(node.Attributes["Name"].Value);
                        int n = this.DropDownListProvince.Items.Count - 1;
                        if (node1 != null &amp;&amp; node == node1.ParentNode)
                            this.DropDownListProvince.SelectedIndex = n;
                    }
                    DropDownListProvince_SelectedIndexChanged(sender, e);
                }
                else
                {
                    this.LabelMessage.Text = "地市信息文件丢失！";
                }
            }
        }
        protected void DropDownListProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            string CurrentPath = this.Server.MapPath(".");
            if (System.IO.File.Exists(CurrentPath + "\\Province.xml"))
            {
                this.DropDownListCity.Items.Clear();
                System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
                doc.Load(CurrentPath + "\\Province.xml");
                XmlNodeList nodes = doc.DocumentElement.ChildNodes[this.DropDownListProvince.SelectedIndex].ChildNodes;
                foreach (XmlNode node in nodes)
                {
                    this.DropDownListCity.Items.Add(node.Attributes["Name"].Value);
                    int n = this.DropDownListCity.Items.Count - 1;
                    if (node.Attributes["Name"].Value == this.City)
                    {
                        this.DropDownListCity.SelectedIndex = n;
                    }
                }
                if (this.DropDownListCity.SelectedIndex == -1)
                    this.DropDownListCity.SelectedIndex = 0;
            }
            else
            {
                this.LabelMessage.Text = "地市信息文件丢失！";
            }
        }
    }
}
</pre>
<br />
</pre>', 99, 170, 0, N'', 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3310129E61C AS DateTime), CAST(0x0000A3DD00A9C2A3 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (122, 1, 6, N'', N'为什么谷歌现在打不开了和解决办法', N'', N'/upload/201410/28/201410282343428437.jpg', N'谷歌打不开的解决办法', N'谷歌打不开、谷歌浏览器打卡速度慢', N'', N'从5月27号左右开始，谷歌(Google)在华的几乎所有的服务都处于无法使用的状态，谷歌官网域名Google.com、谷歌香港Google.com.hk所有服务都打不开。ping出来的IP均显示为“美国”，也就是说谷歌香港的服务器，已经由香港转移至美国，所以链接实际会很长，甚至断断续续出现请求超…', N'从5月27号左右开始，谷歌(Google)在华的几乎所有的服务都处于无法使用的状态，谷歌官网域名Google.com、谷歌香港Google.com.hk所有服务都打不开。ping出来的IP均显示为“美国”，也就是说谷歌香港的服务器，已经由香港转移至美国，所以链接实际会很长，甚至断断续续出现请求超时的情况。
<p>
	<img alt="" src="http://www.bayinmao.com/uploadfile/image/20141013/20141013155439_80342.jpg" /> 
</p>
<p>
	<br />
</p>
<p>
	而Google  Adsense打不开，恐怕做谷歌联盟的站长也要倒霉了。虽然在新闻上没有搜索到任何相关内容，但业内流传Google服务已经在大陆被全线屏蔽，除搜索 引擎遭到屏蔽之外，谷歌的邮箱(Gmail)、日历(Calendar)、翻译(Translate)、地图(Maps)、分析(Analytics)和Google AdSense等产品也受到了影响。
</p>
<p>
	Google服务在大陆全线被封不仅影响到了广大网民，也影响到了数百万站长。WordPress是世界上最大的开源博客程序，而WordPress大部分的主题都是使用Google的在线字体方案：Google  Fonts。Google服务不稳定，导致大量独立博客字体加载不出来，直接导致几十万独立博客打开速度变慢，严重时甚至导致网站打不开。
</p>
<p>
	<strong>360网站卫士的解决方案：</strong> 
</p>
<p>
	修改方法如下：
</p>
<blockquote>
	<p>
		打开wordpress代码中的文件wp-includes/script-loader.php文件，搜索：fonts.googleapis.com找到这行代码：
	</p>
	<p>
		$open_sans_font_url = “//fonts.googleapis.com/css?family1=Open+Sans:300italic,400italic,600italic,300,400,600&amp;subset=$subsets”;
	</p>
	<p>
		把fonts.googleapis.com替换为fonts.useso.com
	</p>
</blockquote>
<p>
	修改完保存，再次刷新，大家就可以发现，自己的网站速度已经比以前快了很多，几乎瞬间就可以拿到Google字体了。原因就是本来需要从美国服务器才能拿到的google字体，现在已经遍布360全国的机房了。
</p>
<p>
	<strong>醒妹网的解决方案：</strong> 
</p>
<p>
	既然是关于Google字体，那解除字体问题就可以了。如果网页中设定的字体无法加载，那么网页会按照浏览器默认的字体显示。但浏览器并不知道Google字体服务被屏蔽了，还那么二的一直加载，直到加载失败。但这个过程会耗费十几秒的时间。
</p>
<p>
	WordPress网站解决Google字体的办法：
</p>
<blockquote>
	<p>
		第一种方法：安装Disable Google Font插件，但经过测试之后，没有明显效果。
	</p>
	<p>
		第二种方法：注释或删除掉style.css和function.php有关加载Google字体的代码fonts.googleapis.com即可。
	</p>
</blockquote>
<p>
	当然以上两种方法可以同时使用。
</p>
<p>
	如果在更改style.css或function.php文件之后，wordpress网站报错，无法打开，或者新建文章时上传图片失败。一定是将wordpress文件的编码保存为非ANSI编码，用记事本打开，保存时选择编码ANSI替换掉原来的文件即可。
</p>
<p>
	<strong>正常访问Google服务的解决方案：</strong> 
</p>
<p>
	这 个方法不包时效，没准过两天就不行了，大家可以临时修改host，打开C:\Windows\System32\drivers\etc，解析Google到203.208.46.212就可以了(203.208.46.208 或者203.208.46.134这两个ip目前还能用，当然也可以直接用IP访问)&nbsp;
</p>', 99, 138, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A33B00A703DC AS DateTime), CAST(0x0000A3D201870B71 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (123, 2, 2, N'', N'西红柿炒鸡蛋', N'', N'/upload/201410/27/201410271748326209.jpg', N'', N'西红柿、炒鸡蛋', N'', N'食材 西红柿2个鸡蛋3个尖椒一个香葱4根蒜3瓣盐、味精步骤/方法 1将鸡蛋在碗中打散待用。2选自然熟透的西红柿切成小块，尖椒切小片，香葱切段，蒜切碎。步骤阅读 3将锅加热，倒入适量油，烧到七八成热，油温180—220度，油面有轻烟、平静，用手勺搅动时有响声。将鸡蛋倒入，这时…', N'<span style="color:#006600;font-size:18px;"><strong>食材</strong></span> 
<div class="exp-content-body">
	<ul class="exp-content-unorderlist">
		<li class="exp-content-list list-item-1">
			<div class="content-list-text">
				<p>
					<a href="http://jingyan.baidu.com/meishi/food_942" target="_blank"><span>西红柿</span></a>2个
				</p>
			</div>
		</li>
		<li class="exp-content-list list-item-2">
			<div class="content-list-text">
				<p>
					<a href="http://jingyan.baidu.com/meishi/food_71" target="_blank"><span>鸡蛋</span></a>3个
				</p>
			</div>
		</li>
		<li class="exp-content-list list-item-3">
			<div class="content-list-text">
				<p>
					尖椒一个
				</p>
			</div>
		</li>
		<li class="exp-content-list list-item-4">
			<div class="content-list-text">
				<p>
					香葱4根
				</p>
			</div>
		</li>
		<li class="exp-content-list list-item-5">
			<div class="content-list-text">
				<p>
					蒜3瓣
				</p>
			</div>
		</li>
		<li class="exp-content-list list-item-6">
			<div class="content-list-text">
				<p>
					盐、味精
				</p>
			</div>
		</li>
<span style="color:#006600;font-size:18px;"><strong>步骤/方法</strong></span> 
	</ul>
	<ul class="exp-content-unorderlist">
		1、将鸡蛋在碗中打散待用。
	</ul>
	<ul class="exp-content-unorderlist">
		2、选自然熟透的西红柿切成小块，尖椒切小片，香葱切段，蒜切碎。
	</ul>
	<ul class="exp-content-unorderlist">
		3、将锅加热，倒入适量油，烧到七八成热，油温180—220度，油面有轻烟、平静，用手勺搅动时有响声。将鸡蛋倒入，这时的油温能快速将鸡蛋烹饪成蓬松的鸡蛋饼，口感很好，一面煎熟后翻一面，然后将鸡蛋用炒菜铲切成小块盛入盘子里待用。
	</ul>
	<ul class="exp-content-unorderlist">
		4、将尖椒直接下锅中火翻炒20秒，加入西红柿再翻炒20秒，将煎好的鸡蛋加入，放入蒜翻炒几下，加入盐和味精，炒半分钟，加入切好的葱段，翻炒几下就可以出锅了。
	</ul>
	<ul class="exp-content-unorderlist">
		5、最后，盛上一碗新蒸的米饭，就可以美美的吃一顿了。
	</ul>
</div>', 99, 80, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3D10126252C AS DateTime), CAST(0x0000A3D2011FD977 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (124, 1, 1, N'', N'C#中抽象类和接口的区别', N'', N'/upload/201410/28/201410281042356368.png', N'抽象类和接口的区别', N'抽象类、接口', N'', N'大家在编程时都容易把抽象类和接口搞混,下面为大家从概念上讲解抽象类和接口的区别：  一、抽象类：  含有abstract修饰符的class即为抽象类，抽象类是特殊的类，只是不能被实例化，可以创建一个变量，其类型是一个抽象类，并让它指向具体子类的一个实例；除此以外，具有类的其…', N'<p>
	大家在编程时都容易把抽象类和接口搞混,下面为大家从概念上讲解抽象类和接口的区别：
</p>
<p>
	&nbsp; <strong>一、抽象类：</strong> 
</p>
<p>
	&nbsp;<span class="Apple-converted-space"> 含有<span><span style="font-family:Times New Roman;">abstract</span>修饰符的<span><span style="font-family:Times New Roman;">class</span>即为抽象类，抽象类是特殊的类，只是不能被实例化，可以创建一个变量，其类型是一个抽象类，并让它指向具体子类的一个实例；除此以外，具有类的其他特性；重要的是抽象类可以包括抽象方法，这是普通类所不能的。抽象方法只能声明于抽象类中，且不包含任何实现，派生类必须覆盖它们。另外，抽象类可以派生自一个抽象类，可以覆盖基类的抽象方法也可以不覆盖。</span></span></span> 
</p>
<p>
	<span class="Apple-converted-space"><span><span><strong>二、接口：</strong> </span></span></span>
</p>
<p class="FocusMe">
	接口是引用类型的，类似于类,和抽象类的相似之处有三点：     1、不能实例化；     2、包含未实现的方法声明；     3、派生类必须实现未实现的方法，抽象类是抽象方法，接口则是所有成员（不仅是方法包括其他成员）；
</p>
<p class="FocusMe">
	<strong> 接口有如下特性：</strong> 
</p>
<p class="FocusMe">
	接口除了可以包含方法之外，还可以包含属性、索引器、事件，而且这些成员都被定义为公有的。除此之外，不能包含任何其他的成员，例如：常量、域、构造函数、析构函数、静态成员。一个类可以直接继承多个接口，但只能直接继承一个类（包括抽象类）。
</p>
<p class="FocusMe">
	<strong> 两者的语法区别：</strong> 
</p>
<p class="FocusMe">
	<span> 1.抽象类可以有构造方法，接口中不能有构造方法。</span> 
</p>
<p class="FocusMe">
	<span> 2.抽象类中可以有普通成员变量，接口中没有普通成员变量</span> 
</p>
<p class="FocusMe">
	<span> 3.抽象类中可以包含非抽象的普通方法，接口中的所有方法必须都是抽象的，不能有非抽象的普通方法。</span> 
</p>
<p class="FocusMe">
	<span> 4.<span class="Apple-converted-space"> 抽象类中的抽象方法的访问类型可以是<span>public，<span>protected，但接口中的抽象方法只能是<span>public类型的，并且默认即为<span>public abstract类型。</span></span></span></span></span></span> 
</p>
<p class="FocusMe">
	<span> 5.<span class="Apple-converted-space"> 抽象类中可以包含静态方法，接口中不能包含静态方法</span></span> 
</p>
<p class="FocusMe">
	<span> 6.<span class="Apple-converted-space"> 抽象类和接口中都可以包含静态成员变量，抽象类中的静态成员变量的访问类型可以任意，但接口中定义的变量只能是<span>public static final类型，并且默认即为<span>public static final类型。</span></span></span></span> 
</p>
<p class="FocusMe">
	<span> 7.<span class="Apple-converted-space"> 一个类可以实现多个接口，但只能继承一个抽象类。</span></span> 
</p>
<p class="FocusMe">
	8.接口可以用于支持回调,而继承并不具备这个特点.
</p>
<p class="FocusMe">
	9.抽象类实现的具体方法默认为虚的，但实现接口的类中的接口方法却默认为非虚的，当然您也可以声明为虚的.
</p>
<p class="FocusMe">
	<strong><span class="Apple-converted-space"> 抽象类和接口的使用：</span></strong> 
</p>
<p class="FocusMe">
	1.如果预计要创建组件的多个版本，则创建抽象类。抽象类提供简单的方法来控制组件版本。   2.如果创建的功能将在大范围的全异对象间使用，则使用接口。如果要设计小而简练的功能块，则使用接口。   3.如果要设计大的功能单元，则使用抽象类.如果要在组件的所有实现间提供通用的已实现功能，则使用抽象类。   4.抽象类主要用于关系密切的对象；而接口适合为不相关的类提供通用功能。
</p>
<p id="aeaoofnhgocdbnbeljkmbjdmhbcokfdb-mousedown" class="FocusMe">
	5.好的接口定义应该是具有专一功能性的，而不是多功能的，否则造成接口污染。如果一个类只是实现了这个接口的中一个功能，而不得不去实现接口中的其他方法，就叫接口污染。
</p>', 99, 81, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A33E00AAF4D8 AS DateTime), CAST(0x0000A3D200B08110 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (125, 1, 6, N'', N'Asp.NET 获取当前网页地址信息', N'', N'/upload/201410/28/201410281118334544.jpg', N'Asp.NET 获取当前网页地址信息', N'RawUrl、Url、HttpContext', N'Asp.NET 获取页面路径相关地址', N'测试地址：http://www.yizuocity.com/aaa/news_show.aspx?id=121 &quot;http://&quot;：是协议名。 “www.yizuocity.com”：是域名“aaa”：是站点名。“news_show.aspx”：是页面名。“id=121”是参数。【1】获取 完整url （协议名+域名+站点名+文件名+参数）string url=Req…', N'<p>
	<span style="font-size:16px;">测试地址：</span><a href="http://www.yizuocity/news_show.aspx?id=121"><span style="font-size:16px;">http://www.yizuocity.com/aaa/news_show.aspx?id=121</span></a> 
</p>
<p>
	<span style="font-size:14px;">"http://"：是协议名。</span> 
</p>
<p>
	<span style="font-size:14px;">“www.yizuocity.com”：是域名</span> 
</p>
<p>
	<span style="font-size:14px;">“aaa”：是站点名。</span> 
</p>
<p>
	<span style="font-size:14px;">“news_show.aspx”：是页面名。</span> 
</p>
<p>
	<span style="font-size:14px;">“id=121”是参数。</span> 
</p>
<p>
	<span>【1】获取 完整url （协议名+域名+站点名+文件名+参数）</span><span><br />
string url=Request.Url.ToString();<br />
结果：url=<a href="http://www.yizuocity/news_show.aspx?id=121"><span style="font-size:16px;">http://www.yizuocity.com/aaa/news_show.aspx?id=121</span></a><span> </span></span> 
</p>
<p>
	<span>【2】获取 站点名+页面名+参数：</span><br />
<span>string url=Request.RawUrl;</span><br />
<span>(或 string url=Request.Url.PathAndQuery;)</span> 
</p>
<p>
	<span>结果：url=<u><span>/aaa/news_show.aspx?id=121</span></u></span><span> </span> 
</p>
<p>
	<span>【3】获取 站点名+页面名：</span><br />
<span>string url=HttpContext.Current.Request.Url.AbsolutePath;<br />
(或 string url= 
HttpContext.Current.Request.Path;)</span> 
</p>
<p>
	<span>结果：url==<u><span>/aaa/news_show.aspx</span></u></span> 
</p>
<p>
	<span>【4】获取 域名：</span><br />
<span>string url=HttpContext.Current.Request.Url.Host;</span> 
</p>
<p>
	<span>结果：url=</span><span><u>www.yizuocity.com</u></span> 
</p>
<p>
	<span>【5】获取 参数：</span><br />
<span>string url= HttpContext.Current.Request.Url.Query;</span> 
</p>
<p>
	<span>结果：url=<span><u>id=121</u></span><span> </span></span> 
</p>
<p>
	<span></span>&nbsp;
</p>
<p>
	<span>扩展：</span> 
</p>
<p>
	<span>Request.RawUrl：获取客户端请求的URL信息（不包括主机和端口）</span> 
</p>
<p>
	<span>Request.ApplicationPath：获取服务器上ASP.NET应用程序的虚拟路径。</span> 
</p>
<p>
	<span>Request.CurrentExecutionFilePath：获取当前请求的虚拟路径。</span> 
</p>
<p>
	<span>Request.Path：获取当前请求的虚拟路径。</span> 
</p>
<p>
	<span>Request.PathInfo：取具有URL扩展名的资源的附加路径信息。</span> 
</p>
<p>
	<span>Request.PhysicalPath：获取与请求的URL相对应的物理文件系统路径。</span> 
</p>
<p>
	<span>Request.Url.LocalPath：--------&gt;/index.aspx<br />
Request.Url.AbsoluteUri：------&gt;http://localhost:8001/index.aspx<br />
Request.Url.AbsolutePath：-----&gt;/index.aspx</span> 
</p>', 99, 116, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A30200B6DF3C AS DateTime), CAST(0x0000A3D200BB0CA0 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (126, 3, 25, N'', N'去大理（电影《心花路放》插曲）', N'', N'/upload/201410/28/201410281629471990.jpg', N'', N'去大理、黄渤', N'', N'是不是对生活不太满意很久没有笑过又不知为何既然不快乐又不喜欢这里不如一路向西去大理路程有点波折空气有点稀薄景色越辽阔 心里越寂寞不知道谁在何处等待不知道后来的后来谁的头顶上没有灰尘谁的肩上没有过齿痕也许爱情就在洱海边等着也许故事正在发生着谁的头顶上没有灰尘谁…', N'<h3 style="background:#F24C27;text-align:center;color:#FFFFFF;text-indent:0px;font-family:Helvetica, &quot;font-size:1.12rem;font-style:normal;" id="title-3">
	歌曲欣赏
</h3>
<span style="color:#333333;background-color:#FFFFFF;">是不是对生活不太满意</span><br />
<span style="color:#333333;background-color:#FFFFFF;">很久没有笑过又不知为何</span><br />
<span style="color:#333333;background-color:#FFFFFF;">既然不快乐又不喜欢这里</span><br />
<span style="color:#333333;background-color:#FFFFFF;">不如一路向西去大理</span><br />
<span style="color:#333333;background-color:#FFFFFF;">路程有点波折空气有点稀薄</span><br />
<span style="color:#333333;background-color:#FFFFFF;">景色越辽阔 心里越寂寞</span><br />
<span style="color:#333333;background-color:#FFFFFF;">不知道谁在何处等待</span><br />
<span style="color:#333333;background-color:#FFFFFF;">不知道后来的后来</span><br />
<span style="color:#333333;background-color:#FFFFFF;">谁的头顶上没有灰尘</span><br />
<span style="color:#333333;background-color:#FFFFFF;">谁的肩上没有过齿痕</span><br />
<span style="color:#333333;background-color:#FFFFFF;">也许爱情就在洱海边等着</span><br />
<span style="color:#333333;background-color:#FFFFFF;">也许故事正在发生着</span><br />
<span style="color:#333333;background-color:#FFFFFF;">谁的头顶上没有灰尘</span><br />
<span style="color:#333333;background-color:#FFFFFF;">谁的肩上没有过齿痕</span><br />
<span style="color:#333333;background-color:#FFFFFF;">也许爱情就在洱海边等着</span><br />
<span style="color:#333333;background-color:#FFFFFF;">也许故事正在发生着</span><br />
<span style="color:#333333;background-color:#FFFFFF;">谁的头顶上没有灰尘</span><br />
<span style="color:#333333;background-color:#FFFFFF;">谁的肩上没有过齿痕</span><br />
<span style="color:#333333;background-color:#FFFFFF;">捡起被时间碾碎的勇气</span><br />
<span style="color:#333333;background-color:#FFFFFF;">让双脚沾满清香的泥</span>', 99, 58, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3D200D50084 AS DateTime), CAST(0x0000A3D201220062 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (127, 3, 25, N'', N'邓紫棋《泡沫》', N'', N'/upload/201410/28/201410281632028198.jpg', N'', N'泡沫 邓紫棋 音乐', N'', N'歌曲介绍邓紫棋（G.E.M.），中国香港创作型女歌手。1991年8月16日生于中国上海，4岁移居香港。邓紫棋生于音乐世家，5岁开始尝试作曲及填词，13岁完成8级钢琴，2008年出道。 歌曲欣赏', N'<h3 style="font-family:Helvetica;background:#f24c27;color:#ffffff;font-style:normal;text-align:center;text-indent:0px;">
	歌手介绍
</h3>
<p>
	<span style="color:#333333;background-color:#ffffff;">邓紫棋（G.E.M.），中国香港创作型女歌手。1991年8月16日生于中国上海，4岁移居香港。邓紫棋生于音乐世家，5岁开始尝试作曲及填词，13岁完成8级钢琴，2008年出道</span><span style="color:#3366cc;background-color:#ffffff;">。</span> 
</p>
<h3 style="font-family:Helvetica;background:#f24c27;color:#ffffff;font-style:normal;text-align:center;text-indent:0px;">
	创作背景
</h3>
<p>
	<span style="color:#333333;background-color:#ffffff;">《泡沫》MV由邓紫棋的经纪人Tan做导演，请来吹泡泡达人Victor一同参与。整个MV一镜到底，完全没有任何剪辑，所以拍摄前大家提前花了一天的时间做预演。但拍摄时还是遇到很多困难，比如灯光、摄影、泡泡以及邓紫棋的走位动作等等全都要配合得天衣无缝，若灯管开早了或泡泡吹晚了，甚至邓紫棋的走位有少许偏差都要再重新拍摄。在场的工作人员也要穿上黑色衣服，不断随着机位移动隐藏在黑暗处。还有一个难题，是有一幕要捞一下浅池中的水，然后接住泡泡并让它停留在手上，但泡泡一碰到手就会破。于是邓紫棋想了一个办法，用双手沾满泡泡水，再用风筒吹干。这样手碰到水的时候，泡泡就可以成功停留在手上而不会破。</span> 
</p>
<p>
	&nbsp;
</p>
<h3 id="title-3" style="font-family:Helvetica;background:#f24c27;color:#ffffff;font-style:normal;text-align:center;text-indent:0px;">
	歌曲欣赏
</h3>', 99, 73, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3D20111A32C AS DateTime), CAST(0x0000A46400E4BA4C AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (128, 3, 26, N'', N'心花路放', N'', N'/upload/201410/28/201410281754138198.jpg', N'电影-心花路放', N'心花路放、黄渤、徐峥', N'《心花路放》是2014年9月30号上映的一部影片，该片由宁浩执导，由黄渤、徐峥等主演。', N'《心花路放》是2014年9月30号上映的一部影片，该片由宁浩执导，由黄渤、徐峥等主演。     电影《心花路放》讲述了在生活中遭遇了情感危机的耿浩（黄渤饰），陷入难以自拔的痛苦之中，好基友郝义（徐峥饰）为了帮助他摆脱痛苦，带着耿浩开始了一段非常搞笑的疯狂的猎艳之旅[2] …', N'<p>
	&nbsp;&nbsp;&nbsp; 《心花路放》是2014年9月30号上映的一部影片，该片由宁浩执导，由黄渤、徐峥等主演。
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp; 电影《心花路放》讲述了在生活中遭遇了情感危机的耿浩（黄渤饰），陷入难以自拔的痛苦之中，好基友郝义（徐峥饰）为了帮助他摆脱痛苦，带着耿浩开始了一段非常搞笑的疯狂的猎艳之旅[2] 。影片上映后，首周票房超6亿，成为史上最快突破6亿票房的华语电影[1] 。截至10月18日晚24时，该片累计票房达到10.54亿，超过《西游记之大闹天宫》的10.53亿，成为2014年的国产片票房冠军。
</p>
<p>
	<img alt="" src="/upload/201410/28/201410281748305172.jpg" /> 
</p>', 99, 34, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3D20121B0F0 AS DateTime), CAST(0x0000A3D201270D53 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (129, 3, 26, N'', N'绣春刀', N'', N'/upload/201410/28/201410281754076695.jpg', N'电影-绣春刀', N'张震、刘诗诗、聂远、李东学', N'', N'《绣春刀》是中国电影股份有限公司、中央新闻纪录电影制片厂（集团）、北京大楚长歌影视文化有限公司、北京合力映画影视文化传媒有限公司联合出品的浪漫武侠电影，由路阳执导，张震、刘诗诗、王千源、李东学、聂远、金士杰、叶青、朱丹、周一围等主演。    该片讲述了明末崇祯…', N'<p>
	&nbsp;&nbsp;&nbsp; 《绣春刀》是中国电影股份有限公司、中央新闻纪录电影制片厂（集团）、北京大楚长歌影视文化有限公司、北京合力映画影视文化传媒有限公司联合出品的浪漫武侠电影，由路阳执导，张震、刘诗诗、王千源、李东学、聂远、金士杰、叶青、朱丹、周一围等主演。
</p>
<p>
	&nbsp; &nbsp; 该片讲述了明末崇祯年间，锦衣卫三兄弟奉命追杀魏忠贤，最后却卷入到一场宫廷阴谋当中的充满悬疑的故事。
</p>
<p>
	<img alt="" src="/upload/201410/28/201410281752185812.jpg" /> 
</p>
<p>
	<span style="font-size:18px;"><strong>故事背景</strong></span> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 明朝崇祯皇帝登基后，权倾天下的大太监魏忠贤被弹劾辞官，阉党覆灭。锦衣卫授命追捕阉党。锦衣卫卢剑星、沈炼、靳一川三人是结拜兄弟，感情非常好。大哥卢剑星非常希望自己能够升到百户的职位，二哥沈炼暗恋着教坊司的女子周妙彤，三弟靳一川则有着不可告人的过去被人攒在手里。一天，内宫太监赵靖忠秘密找到三兄弟，要他们奉皇命去追杀要出京流放的大太监魏忠贤。一场追杀之后，三人带回了大太监魏忠贤的尸首，本以为凭此大功，三人的夙愿皆可实现。没想到这一切只不过是一个阴谋的开始，三人即将落入更加危险的境地。
</p>', 99, 48, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3D20122436C AS DateTime), CAST(0x0000A3D2012705FB AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (130, 1, 40, N'', N'把相同分类下的某个字段放到一列中，用逗号分开', N'', N'/upload/201410/30/201410301531596718.png', N'', N'', N'', N'IF OBJECT_ID(''tempdb.dbo.#T'') IS NOT NULL     DROP TABLE #TCREATE TABLE #T    (A VARCHAR(100) ,B VARCHAR(100))INSERT  INTO #T SELECT  Content ,Title FROM News WHERE   NewsId &gt; 47 DECLARE @i INT ,@max INT ,@sql VARCHAR(MAX)SELECT TOP 1 @i = 1 ,@max = CO', N'<p>
	IF OBJECT_ID(''tempdb.dbo.#T'') IS NOT NULL <br />
&nbsp;&nbsp;&nbsp; DROP TABLE #T<br />
CREATE TABLE #T<br />
&nbsp;&nbsp;&nbsp; (A VARCHAR(100) ,B VARCHAR(100))<br />
INSERT&nbsp; INTO #T SELECT&nbsp; Content ,Title FROM News WHERE&nbsp;&nbsp; NewsId &gt; 47 <br />
DECLARE @i INT ,@max INT ,@sql VARCHAR(MAX)<br />
SELECT TOP 1 @i = 1 ,@max = COUNT(*) FROM&nbsp;&nbsp;&nbsp; #T GROUP BY A ORDER BY 2 DESC<br />
--PRINT @max<br />
WHILE @i &lt;= @max <br />
&nbsp;&nbsp;&nbsp; BEGIN&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SET @sql = ISNULL(@sql + ''+max(case i when '' + LTRIM(@i)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + '' then '''',''''+'',<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ''max(case i when '' + LTRIM(@i) + '' then '')<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + ''B else '''''''' end)''&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SET @i = @i + 1<br />
&nbsp;&nbsp;&nbsp; END<br />
--PRINT @sql<br />
EXEC (''select A, <a href="mailto:B=''+@sql+''">B=''+@sql+''</a> from (select *,i=(select count(1) from #T where A=a.A and B&lt;=a.B) from #T a) t group by A'')
</p>
<p>
	结果：
</p>
<p>
	<img alt="" src="/upload/201410/30/201410301544349062.png" />
</p>', 99, 161, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3D4010004A0 AS DateTime), CAST(0x0000A3D4010386FF AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (131, 3, 25, N'', N'GALA-Young For You', N'', N'/upload/201410/30/201410301608057812.gif', N'', N'Gala', N'', N'Gala录这张唱片的时候没有鼓手，是只有主唱、吉他手、贝司手的乐队，我们在唱片中所听到的鼓是由吉他手和贝司手两个二把刀鼓手兼任所打，打得并不稳，但走向抓得很稳，如果能有一个训练有素的鼓手，他们的想法一定会实现得更到位。而换用DIY的标准界定，这张唱片对于他们已经是…', N'<span>Gala录这张唱片的时候没有鼓手，是只有主唱、吉他手、贝司手的乐队，我们在唱片中所听到的鼓是由吉他手和贝司手两个二把刀鼓手兼任所打，打得并不稳，但走向抓得很稳，如果能有一个训练有素的鼓手，他们的想法一定会实现得更到位。而换用DIY的标准界定，这张唱片对于他们已经是一个很好的开始了，既不乏大量出色的旋律，也不乏恰如其分的野心，有没有鼓手不是问题，重要的是一张唱片可以体现多少想法？表现多少驾御音乐的能力和素质？毕竟我们鼓励DIY唱片并不代表我们就鼓励所有想做音乐的人都凭着一腔热情去玩音乐，从而滥化了整个环境，做音乐的人和想做音乐的人之间还是有很大的区别的，而《Young For You》，无论是聪明顽劣的旋律，还是毛手毛脚的鼓点，相信它都属于值得期待和鼓励的前者。开玩笑地想：甚至认为他们在拥有了技术全面的鼓手以后，也该时不时地尝试一下现在这种毛手毛脚的风格——不失技术含金量的毛手毛脚。<br />
</span> <embed src="http://player.video.qiyi.com/6fc31f2a39714d37a8cd9dd4d33bc054/0/226/yinyue/20130325/2c0399bbc38996fe.swf-albumId=361200-tvId=437604-isPurchase=0-cnId=5" quality="high" width="480" height="400" align="middle" allowscriptaccess="always" type="application/x-shockwave-flash" />', 99, 42, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3D4010A1EF4 AS DateTime), CAST(0x0000A3D4010A3F3C AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (132, 2, 2, N'', N'酸辣土豆丝', N'', N'/upload/201410/30/201410301746537656.jpg', N'', N'', N'', N'酸辣土豆丝是最脍炙人口的一道美味家常，也是餐馆点击率最高的一道菜，老少皆爱。', N'<li class="imit_h2">
	主料
</li>
<li class="imit_h2">
	土豆 一个
</li>
<li class="ingtmgr">
	<p class="name">
		辅料
	</p>
</li>
<li class="ingtmgr">
	<p class="name">
		青椒 一个&nbsp; 大蒜 三四瓣&nbsp; 干辣椒 少许 盐 少许&nbsp; 鸡精 少许
	</p>
</li>
<li class="ingtmgr">
	<p class="name">
		土豆切丝用清水浸泡冲洗一下，<a href="http://www.haodou.com/recipe/all/479" target="_blank">炒</a>锅倒油爆香大蒜和干辣椒丝（大蒜是炒土豆丝的关键，一定要放大蒜），倒入<a href="http://www.haodou.com/recipe/all/114" target="_blank">土豆</a>丝翻<a href="http://www.haodou.com/recipe/all/479" target="_blank">炒</a>，加盐继续翻炒2分钟左右，放入青椒丝，等土豆丝变软变得透明断生就可以起锅了，起锅之前放入鸡精即可。
	</p>
</li>
<li class="ingtmgr">
	<p class="name">
		这是一道十分简单美味的家常小菜，简单易懂，一学就会。
	</p>
</li>', 99, 53, 0, N'', 0, 1, 0, 1, 1, 0, 1, N'admin', CAST(0x0000A3D40120CFF0 AS DateTime), CAST(0x0000A3D401250999 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (133, 3, 41, N'', N'请善待身边的每一个胖纸！', N'', N'/upload/201410/30/201410301759033593.gif', N'', N'', N'', N'', N'', 99, 17, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3D4012861A2 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (135, 3, 41, N'', N'根本就停不下来！！', N'', N'/upload/201410/30/201410301834329375.gif', N'', N'', N'', N'', N'', 99, 25, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3D401322A5F AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (136, 3, 41, N'', N'一位国外网友发现有只松鼠常到他家院里逛，于是他设计了一个小小的障碍，松鼠通过后就能吃到松子，每天一点点增大难度。结果根本难不倒它，两个礼拜后松鼠已然变成了特工！', N'', N'/upload/201410/30/201410301835260000.gif', N'', N'', N'', N'', N'', 99, 18, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3D401326C24 AS DateTime), CAST(0x0000A3D401328182 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (137, 3, 41, N'', N'千万别让老爸看孩子啊！！！', N'', N'/upload/201410/30/201410301849045312.gif', N'', N'', N'', N'', N'', 99, 20, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3D401362226 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (139, 1, 6, N'', N'.NET小常识', N'', N'/upload/201411/06/201411061028115156.jpg', N'', N'', N'', N'1、.NET是什么？.Net全称.NET Framework是一个开发和运行环境，该战略是微软的一项全新创意，它将使得“互联网行业进入一个更先进的阶段”，.NET不是一种编程语言. 简单说就是一组类库框架，.NET开发支持C#、VB.NET、J#、Jsript和Managed C++等。C#是.NET Framework框架支持的…', N'<span style="font-family:Microsoft YaHei;">1、.NET是什么？</span><br />
<span style="font-family:Microsoft YaHei;">.Net全称.NET Framework是一个开发和运行环境，该战略是微软的一项全新创意，它将使得“互联网行业进入一个更先进的阶段”，.NET不是一种编程语言. 简单说就是一组类库框架，.NET开发支持C#、VB.NET、J#、Jsript和Managed C++等。</span><br />
<span style="font-family:Microsoft YaHei;">C#是.NET Framework框架支持的一种主力开发语言,可用于开发ASP.NET网站,Windows程序,控制台程序,甚至于手机软件(Windows Phone)。</span><br />
<span style="font-family:Microsoft YaHei;">2、ASP.NET、.NET和C#的关系是怎样的？</span><br />
<span style="font-family:Microsoft YaHei;">.NET 分成两个方面：</span><br />
<span style="font-family:Microsoft YaHei;">(1)WinForm</span><br />
<span style="font-family:Microsoft YaHei;">(2)WebForm</span><br />
<span style="font-family:Microsoft YaHei;">ASP.NET就是属于WebForm，也就是平时说的B/S模式的开发。而WinForm就是属于C/S模式。</span><br />
<span style="font-family:Microsoft YaHei;">.NET有很多种语言组成，比如C#、 VB.NET、J#、Jsript、Managed C++，但是都是运行在.NET FrameWork Run Time底下的。</span><br />
<span style="font-family:Microsoft YaHei;">Asp.NET可以用C#或VB.NET来开发。编译后形成CLR，通过服务器的IIS+.NET FrameWork再次编译来运行。</span><br />
<span style="font-family:Microsoft YaHei;">总之，ASP.NET是.NET Framework环境下的动态网页编程技术,.NET Framework是.NET的基础框架，Visual Studio.NET是用于开发软件的一个集成环境(IDE)。当然后续出来了Windows Phone/WPF等。</span><br />
<span style="font-family:Microsoft YaHei;">3、.NET开发是用什么语言？</span><br />
<span style="font-family:Microsoft YaHei;">.NET声称支持市面上20多种语言,但目前只有微软官方发布的C#,VB.NET,J#, Jsript和Managed C++。</span><br />
<span style="font-family:Microsoft YaHei;">Tips:C#是主流哦！</span><br />
<span style="font-family:Microsoft YaHei;">4、为什么大部分用C#语言开发.NET？</span><br />
<span style="font-family:Microsoft YaHei;">C#是Microsoft公司设计的一种编程语言，C#(读做‘Csharp’)。它基于C/C++，是面向对象的。没有指针，有垃圾回收机制，会自动释放内存空间。学习C#并不必须有C语言的基础，不过，如果你学过C语言，那会事半功倍的，因为他们之间有很多语法是一样的。C#支持的基本类型和C++很相似，包括int, long, float, double, char, string, arrays, structs和 classes等。</span><br />
<span style="font-family:Microsoft YaHei;">5、Bin文件夹下的DLL可以做什么？</span><br />
<span style="font-family:Microsoft YaHei;">(1)它是自动生成的，不用自己添加。</span><br />
<span style="font-family:Microsoft YaHei;">(2)作用：bin文件夹中包含项目中所用到的所有引用的类库，支持服务器等内容。</span><br />
<span style="font-family:Microsoft YaHei;">DLL的全称是Dynamic Link Library, 中文叫做“动态链接文件”。</span><br />
<span style="font-family:Microsoft YaHei;">6、.NET主要的优点有哪些?</span><br />
<span style="font-family:Microsoft YaHei;">.NET的主要优点有跨语言,跨平台,安全,以及对开放互联网标准和协议的支持。</span><br />
<span style="font-family:Microsoft YaHei;">.NET支持多种语言的互操作,即在一种语言下开发的组件,可在另一组件下通过面向对象的继承而得以重用。.NET通过将各语言先编译成中间语言(IL)，然后再执行时用即时(Just In Time)编译器将之编译成本地平台代码来实现异构平台下对象的互操作，.NET通过公共语言运行库CR(Common Language Runtime)来实现资源对象,类型的安全。.NET通过对HTTP,XML等Internet标准的支持提供在异构网络环境下获取远程服务,连接远程设备,交互远程应用的编程界面。</span><br />
<span style="font-family:Microsoft YaHei;">7、ASP.NET和ASP的区别？</span><br />
<span style="font-family:Microsoft YaHei;">ASP.NET和ASP的最大区别在于编程思维的转换以及功能的增强。</span><br />
<span style="font-family:Microsoft YaHei;">ASP使用VB/JS这样的弱类型、面向结构的脚本语言混合html来编程，而非面向对象，这就明显产生以下几个问题：</span><br />
<span style="font-family:Microsoft YaHei;">1、代码逻辑混乱，难于管理。</span><br />
<span style="font-family:Microsoft YaHei;">2、代码的可重用性差：由于是面向结构的编程方式，并且混合html，所以可能页面原型修改一点，整个程序都需要修改,代码重用性差。</span><br />
<span style="font-family:Microsoft YaHei;">3、弱类型造成潜在的出错可能。</span><br />
<span style="font-family:Microsoft YaHei;">以上是ASP语言本身的弱点，在功能方面ASP同样存在问题：</span><br />
<span style="font-family:Microsoft YaHei;">第一是功能太弱，一些底层操作只能通过组件来完成。</span><br />
<span style="font-family:Microsoft YaHei;">第二缺乏完善的纠错/调试功能。</span><br />
<span style="font-family:Microsoft YaHei;">ASP.NET理论上可以使用任何编程语言包括C#,VB.NET、JS、、J#、Managed C++等等，最合适的编程语言还是MS为.NET Frmaework专门推出的C#。</span><br />
<span style="font-family:Microsoft YaHei;">优点如下：</span><br />
<span style="font-family:Microsoft YaHei;">(1)是面向对象的编程语言，简单易学。</span><br />
<span style="font-family:Microsoft YaHei;">(2)具有面向对象编程语言的一切特性，比如封装性、继承性、多态性等等,封装性使得代码逻辑清晰，并且应用到ASP.NET上就可以使业务逻辑和Html页面分离；继承性和多态性使得代码的可重用性大大提高</span><br />
<span style="font-family:Microsoft YaHei;">(3)C#还提供了完善的调试/纠错体系。</span><br />
<span style="font-family:Microsoft YaHei;">以上概念对于我们新手还是有用的，能很好地理解清楚一些基本知识点。</span>', 99, 93, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3DB00AC63A4 AS DateTime), CAST(0x0000A3DB00AC8A59 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (140, 1, 39, N'', N'微软宣布.NET开发环境将开源 支持三大操作系统', N'', N'/upload/201411/13/201411131001376875.png', N'', N'', N'', N'微软周三公布了.NET开发框架开源计划。公司拟将这长期以来只能运行于Windows系统下的开发环境，通过GitHub开源，以实现跨平台支持Mac OS X和Linux。根据微软公布的计划，在该公司下一次发布.NET开发框架时，整个服务器开发环境，从ASP.NET 5下至Common Language Runtime和Base…', N'<p>
	<table style="width:100%;background-color:#CCCCCC;" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="2">
		<tbody>
			<tr>
				<td>
					&nbsp;
					<p>
						<strong>微软周三公布了.NET开发框架开源计划。公司拟将这长期以来只能运行于Windows系统下的开发环境，通过GitHub开源，以实现跨平台支持Mac OS X和Linux。</strong>根据微软公布的计划，在该公司下一次发布.NET开发框架时，整个服务器开发环境，从ASP.NET 5下至Common  Language Runtime和Base Class Libraries，都将实现开源。
					</p>
				</td>
				<td>
					<img alt="" src="/upload/201411/13/201411131020040156.png" />&nbsp;
				</td>
			</tr>
		</tbody>
	</table>
&nbsp;
	<p>
		&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:14px;">开发者可在多平台环境中开发基于云的.NET应用，微软也承诺未来将会在Mac和Linux系统上提供对.NET核心服务器运行环境及框架的支持。</span> 
	</p>
	<p>
		<img alt="" src="/upload/201411/13/201411131001376875.png" /> 
	</p>
	<p>
		<span style="font-size:14px;">&nbsp;&nbsp;&nbsp; 微软开源.NET开发环境的决策是对未来长期发展的一次押注。公司开发者部门副总裁S. Somasegar对此表示，开源.NET将能让更多的开发者加入到这个开发平台，也能让现在的.NET开发人员面向更多用户。</span> 
	</p>
	<p>
		<span style="font-size:14px;">&nbsp;&nbsp;&nbsp; 微软正在迅速变成一个更加开放的公司。当公司CEO萨特亚纳德拉（Satya Nadella）在Windows 10预览大会上宣布微软喜欢Linux时，虽然人们并不感到十分意外，但是对于微软这样一家将Linux看作其核心业务的威胁的公司来说，这仍然是一个大胆的声明。</span> 
	</p>
	<p>
		<span style="font-size:14px;">&nbsp;&nbsp;&nbsp; 与此同时，微软还宣布免费提供Visual Studio Community 2013。为了实现这个目标，它一直在同Mono社区合作。Mono社区一直在努力将.NET框架变成一个开放的标准，现在它终于得到了.NET开发者即微软的支持。</span> 
	</p>
	<p>
		<span style="font-size:14px;">&nbsp;&nbsp;&nbsp; 微软在12年前发布.NET框架，目前共有600万开发员正在使用它。今日宣布的消息进一步扩大了.NET框架的应用范围，允许开发员们利用通用的代码库在全球最大的三款操作系统上开发自己的应用软件。</span> 
	</p>
	<p>
		<span style="font-size:14px;">&nbsp;&nbsp;&nbsp; 免费提供的Visual Studio Community 2013具备完整的可扩展性，包括了5000多个插件。</span> 
	</p>
	<p>
		<span style="font-size:14px;">&nbsp;&nbsp;&nbsp; 最后，与Windows 10预览版一样，微软还提供了Visual Studio 2015预览版和.NET 2015预览版。</span> 
	</p>
	<p>
		<br />
	</p>', 99, 86, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3E200A82424 AS DateTime), CAST(0x0000A3E200AA544C AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (141, 1, 40, N'', N'SQL语句中case when的日常用法', N'', N'/upload/201411/27/201411271045025813.png', N'', N'', N'', N'首先，可能很多不经常写sql语句的开发人员可能对case when有点陌生，估计会用得很少。但是这种语法用起来也是很方便的，所以今天教大家怎么灵活使用。CASE 可能是 SQL 中被误用最多的关键字之一。虽然你可能以前用过这个关键字来创建字段，但是它还具有更多用法。例如，你可以…', N'<p>
	首先，可能很多不经常写sql语句的开发人员可能对case when有点陌生，估计会用得很少。但是这种语法用起来也是很方便的，所以今天教大家怎么灵活使用。
</p>
<p>
	<hr />
	<p>
		<br />
	</p>
	<p>
		<span style="color:#FF00FF;">CASE</span><span style="color:#000000;"> 可能是 SQL 中被误用最多的关键字之一。虽然你可能以前用过这个关键字来创建字段，但是它还具有更多用法。例如，你可以在 </span><span style="color:#0000FF;">WHERE</span><span style="color:#000000;"> 子句中使用 </span><span style="color:#FF00FF;">CASE</span><span style="color:#000000;">。</span> 
	</p>
	<p>
		<span style="color:#000000;">&nbsp;首先让我们看一下 <span style="color:#FF00FF;">CASE</span><span style="color:#000000;"> 的语法。在一般的 </span><span style="color:#0000FF;">SELECT</span><span style="color:#000000;"> 中，其语法如下：</span></span> 
	</p>
	<p>
		<span style="color:#0000FF;">SELECT</span><span style="color:#000000;"> </span><span style="color:#808080;">&lt;</span><span style="color:#000000;">myColumnSpec</span><span style="color:#808080;">&gt;</span><span style="color:#000000;"> </span><span style="color:#808080;">=</span> <br />
<span style="color:#FF00FF;">CASE</span><span style="color:#000000;"> <br />
</span><span style="color:#0000FF;">WHEN</span><span style="color:#000000;"> </span><span style="color:#808080;">&lt;</span><span style="color:#000000;">A</span><span style="color:#808080;">&gt;</span><span style="color:#000000;"> </span><span style="color:#0000FF;">THEN</span><span style="color:#000000;"> </span><span style="color:#808080;">&lt;</span><span style="color:#000000;">somethingA</span><span style="color:#808080;">&gt;</span><span style="color:#000000;">&nbsp;</span> 
	</p>
	<p>
		<span style="color:#000000;"><span style="color:#000000;"><span style="color:#000000;"></span></span></span><span style="color:#000000;"><span style="color:#000000;"><span style="color:#000000;">&nbsp;</span><span style="color:#0000FF;">WHEN</span><span style="color:#000000;"> </span><span style="color:#808080;">&lt;</span><span style="color:#000000;">B</span><span style="color:#808080;">&gt;</span><span style="color:#000000;"> </span><span style="color:#0000FF;">THEN</span><span style="color:#000000;"> </span><span style="color:#808080;">&lt;</span><span style="color:#000000;">somethingB</span><span style="color:#808080;">&gt;</span><span style="color:#000000;"> <br />
</span><span style="color:#0000FF;">ELSE</span><span style="color:#000000;"> </span><span style="color:#808080;">&lt;</span><span style="color:#000000;">somethingE</span><span style="color:#808080;">&gt;</span><span style="color:#000000;"> <br />
</span><span style="color:#0000FF;">END</span><span style="color:#000000;"> </span></span></span> 
	</p>
	<p>
		<span style="color:#000000;"><span style="color:#000000;"><span style="color:#000000;">在上面的代码中需要用具体的参数代替尖括号中的内容。下面是一个简单的例子： <br />
SELECT&nbsp; GETDATE() AS 日期 ,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CASE MONTH(GETDATE())<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WHEN 11 THEN ''十一''<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WHEN 12 THEN ''十二''<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ELSE SUBSTRING(''一二三四五六七八九十'', MONTH(GETDATE()), 1)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; END + ''月'' AS 月份</span></span></span> 
	</p>
	<p>
		<span style="color:#000000;"><span style="color:#000000;"><span style="color:#000000;">得到的结果就是：</span></span></span> <img alt="" src="/upload/201411/27/201411271130148626.png" />
	</p>
	<p>
		<span style="color:#000000;"><span style="color:#000000;"><span style="color:#000000;">再比如这种，根据字段的长度，输出字段多少位的</span></span></span> 
	</p>
	<p>
		<span style="color:#000000;"><span style="color:#000000;"><span style="color:#000000;">DECLARE @str VARCHAR(50)<br />
SET @str=''1234''<br />
SELECT CASE LEN(@str) <br />
WHEN 3 THEN substring(@str,1,1)<br />
WHEN 4 THEN substring(@str,1,2) END</span></span></span> 
	</p>
	<p>
		<span style="color:#000000;"><span style="color:#000000;"><span style="color:#000000;">这些 都是一些case when的最基本的用法。如果想要更好的了解和使用case when，那就要多多练习，只有在实践中才能掌握的更快！！</span></span></span> 
	</p>
	<p>
		<span style="color:#000000;"><span style="color:#000000;"><span style="color:#000000;"><span style="color:#000000;"><br />
</span></span></span></span> 
	</p>', 99, 115, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3F000AAFAB4 AS DateTime), CAST(0x0000A3F000BD9FFE AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (142, 1, 37, N'', N'js实现加入收藏夹通用代码', N'', N'/upload/201412/23/201412231036171933.jpg', N'', N'', N'', N'html:&lt;a href=&quot;javascript:AddFavorite(window.location,document.title);returnfalse;&quot; &gt;加入收藏&lt;/a&gt;js: function AddFavorite(sURL, sTitle) {       try {           window.external.addFavorite(sURL, sTitle);       } catch (e) {           tr…', N'<p>
	html:
</p>
<p>
	&lt;a href="javascript:AddFavorite(window.location,document.title);returnfalse;" &gt;加入收藏&lt;/a&gt;
</p>
<p>
	<br />
</p>
<p>
	js:<br />
&nbsp;function AddFavorite(sURL, sTitle) {&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; try {&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; window.external.addFavorite(sURL, sTitle);&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; } catch (e) {&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; window.sidebar.addPanel(sTitle, sURL, "");&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (e) {&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alert("加入收藏失败，请使用Ctrl+D进行添加");&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp; }&nbsp;&nbsp; <br />
}
</p>', 99, 67, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A40A00AEEAED AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (143, 1, 39, N'', N'未能加载文件或程序集“FredCK.FCKeditorV2, Version=2.2.2396.27828, Culture=neutral, PublicKeyToken....=', N'', N'/upload/201501/07/201501071437239696.jpg', N'', N'', N'', N'未能加载文件或程序集“FredCK.FCKeditorV2, Version=2.2.2396.27828, Culture=neutral, PublicKeyToken=4f86767c9b519a06”或它的某一个依赖项。找到的程序集清单定义与程序集引用不匹配。 (异常来自 HRESULT:0x80131040)解决方法： 用本地那个dll，覆盖服务器上的那个dll。服…', N'<h3>
	未能加载文件或程序集“FredCK.FCKeditorV2, Version=2.2.2396.27828, Culture=neutral, PublicKeyToken=4f86767c9b519a06”或它的某一个依赖项。找到的程序集清单定义与程序集引用不匹配。 (异常来自 HRESULT:0x80131040)
</h3>
<img alt="" src="/upload/201501/07/201501071438302622.jpg" /> 
<h3>
	<span style="color:#e53333;">解决方法：</span> 
</h3>
<p>
	用本地那个dll，覆盖服务器上的那个dll。服务器上的dll文件可能由于自动更新，将程序里面使用的dll升级了，造成版本改变以至于出错。
</p>', 99, 71, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A41900F12B10 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (144, 1, 37, N'', N'js实现彩票排列组合方法', N'', N'/upload/201501/08/201501081451013798.png', N'', N'', N'', N'&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;&lt;head&gt;&lt;meta http-equiv=&quot;Content-Typ', N'<p>
	<img alt="" src="/upload/201501/08/201501081452151611.png" />
<pre class="prettyprint lang-js">&nbsp;</pre>
<pre class="prettyprint lang-js">&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;
&lt;html xmlns="http://www.w3.org/1999/xhtml"&gt;
&lt;head&gt;
&lt;meta http-equiv="Content-Type" content="text/html; charset=utf-8" /&gt;
&lt;title&gt;无标题文档&lt;/title&gt;
&lt;script type="text/javascript"&gt;
//全组合 
//mStr:源字符
//mLen:元素个数 
function Combination(mStr, mLen) { //返回处理是否成功 
var vResult = ""; 
	pCombination("", mStr); 
//全组合子过程
//mLeft:排列到左边的字符 
//mRight:排列到右边的字符
function pCombination(mLeft,mRight) { 
	if (mLeft.length &gt;= mLen) 
		{
		  vResult += mLeft + "\n"; 
		}
    else{ 
	   for (var i = 0; i &lt; mRight.length; i++)  
		   pCombination(mLeft + mRight.substr(i, 1), mRight.substr(i + 1, mRight.length)); 
		} 
	}
	return vResult; 
}
alert(Combination("1234", 3)); 
&lt;/script&gt;
&lt;/head&gt;

&lt;body&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
</p>
<p>
	<br />
</p>', 99, 165, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A41A00F468C0 AS DateTime), CAST(0x0000A41A00F51267 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (145, 1, 6, N'', N'ASP.NET jquery.uploadify.js上传插件(带进度条)', N'', N'/upload/201501/08/201501081506581767.png', N'', N'', N'', N'效果图：上传时会显示进度条 前台代码&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;Default.aspx.cs&quot; Inherits=&quot;_Default&quot; %&gt; &lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &am…', N'<p>
	<span style="color:#4b4b4b;background-color:#ffffff;">效果图：</span> 
</p>
<p>
	上传时会显示进度条
</p>
<p>
	&nbsp;
</p>
<p>
	<img alt="" src="http://yizuocity.com/upload/201501/08/201501081506581767.png" /> 
</p>
<p style="color:#4b4b4b;background-color:#ffffff;text-indent:0px;">
	前台代码
</p>
<div class="cnblogs_code" style="font-size:12px !important;font-family:''Courier New'' !important;font-weight:normal;color:#000000;font-style:normal;margin:5px 0px;background-color:#f5f5f5;">
	<div class="cnblogs_code_toolbar" style="background-color:#f5f5f5;">
		<span class="cnblogs_code_copy" style="font-size:12px !important;font-family:''Courier New'' !important;line-height:1.5 !important;"><a href="javascript:void(0);"><img alt="复制代码" src="http://common.cnblogs.com/images/copycode.gif" /></a></span> 
	</div>
<pre><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#ffff00;">&lt;%</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">@ Page Language</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">=</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">C#</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;"> AutoEventWireup</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">=</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">true</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;"> CodeFile</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">=</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">Default.aspx.cs</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;"> Inherits</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">=</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">_Default</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;background-color:#f5f5f5;">"</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#ffff00;">%&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;!</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff00ff;line-height:1.5 !important;">DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">html </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">xmlns</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="http://www.w3.org/1999/xhtml"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">head </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">runat</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="server"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">script </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">src</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="fileupload/jquery-1.4.4.min.js"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> type</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="text/javascript"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> language</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="javascript"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">script</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;">&lt;!--</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;"> 脚本部分提示修改为中文 </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;">--&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">script </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">src</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="fileupload/jquery.uploadify.js"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> type</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="text/javascript"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> language</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="javascript"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">script</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">link </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">href</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="fileupload/uploadify.css"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> rel</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="stylesheet"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> type</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="text/css"</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">/&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">script </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">type</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="text/javascript"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> language</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="javascript"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;"> $(</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;background-color:#f5f5f5;">function</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">() {
        $(</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">#file_upload</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">).uploadify({ </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">auto</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">: </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;background-color:#f5f5f5;">false</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">, </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">//</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">是否自动上传</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">swf</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">: </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">fileupload/uploadify.swf</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">, </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">//</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">上传swf控件,不可更改</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">uploader</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">: </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">Handler.ashx</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">, </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">//</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">上传处理页面,可以aspx</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">fileTypeDesc</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">:</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">pdf文件或者图像</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">, </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">fileTypeExts</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">:</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">*.pdf;*.jpg;*.jpeg;*.gif;*.png</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">, </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">//</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">文件类型限制,默认不受限制</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">buttonText</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">:</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">浏览文件</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">,</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">//</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">按钮文字</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">width</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;"> :</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">100</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">, </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">height</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;"> :</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">26</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">, </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">//</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">最大文件数量''uploadLimit'':</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">multi</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;"> :</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;background-color:#f5f5f5;">false</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">,</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">//</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">单选 </span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">fileSizeLimit</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">:</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">20MB</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">, </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">queueSizeLimit</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">:</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">1</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">, </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">//</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;background-color:#f5f5f5;">队列限制</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">removeCompleted</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;">''</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;"> : </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;background-color:#f5f5f5;">false</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;background-color:#f5f5f5;"> });
    }); </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">script</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">title</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span>Jquery文件上传<span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">title</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">head</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">body</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">form </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">id</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="form1"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> runat</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="server"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">input </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">type</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="file"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> name</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="file_upload"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;"> id</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="file_upload"</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">/&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">a </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">href</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="javascript:$(''#file_upload'').uploadify(''cancel'')"</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span>删除<span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">a</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;">&lt;!--</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;"> 删除文件实际操作通过ajax提交. </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;">--&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">a </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">href</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">="javascript:$(''#file_upload'').uploadify(''upload'',''*'')"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span>Upload Files<span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">a</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">br </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">/&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">br </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">/&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">br </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">/&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">br </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">/&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">br </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">/&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">br </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">/&gt;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;"> api参考:</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#ff0000;line-height:1.5 !important;">&amp;nbsp;</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;">http://www.uploadify.com/documentation/ </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">form</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">body</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&lt;/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">html</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">&gt;</span></pre>
	<div class="cnblogs_code_toolbar" style="background-color:#f5f5f5;">
		<span class="cnblogs_code_copy" style="font-size:12px !important;font-family:''Courier New'' !important;line-height:1.5 !important;"><a href="javascript:void(0);"><img alt="复制代码" src="http://common.cnblogs.com/images/copycode.gif" /></a></span> 
	</div>
</div>
<p style="color:#4b4b4b;background-color:#ffffff;text-indent:0px;">
	后台处理ashx页面代码:
</p>
<div class="cnblogs_code" style="font-size:12px !important;font-family:''Courier New'' !important;font-weight:normal;color:#000000;font-style:normal;margin:5px 0px;background-color:#f5f5f5;">
	<div class="cnblogs_code_toolbar" style="background-color:#f5f5f5;">
		<span class="cnblogs_code_copy" style="font-size:12px !important;font-family:''Courier New'' !important;line-height:1.5 !important;"><a href="javascript:void(0);"><img alt="复制代码" src="http://common.cnblogs.com/images/copycode.gif" /></a></span> 
	</div>
<pre>&lt;%@ WebHandler Language=<span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">C#</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">"</span> Class=<span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">Handler</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">"</span> %&gt; <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">using</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;"> System; </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">using</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;"> System.Web; </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">public</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">class</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;"> Handler : IHttpHandler { </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">public</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">void</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;"> ProcessRequest (HttpContext context) { </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">if</span> (context.Request.Files.Count &gt; <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800080;line-height:1.5 !important;">0</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;">)
        { </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;">//</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#008000;line-height:1.5 !important;">HttpContext.Current.Request.FilePath;</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">string</span> strPath = System.Web.HttpContext.Current.Server.MapPath(<span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">~/upload/</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800000;line-height:1.5 !important;">"</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;">); </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">string</span> strName = context.Request.Files[<span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800080;line-height:1.5 !important;">0</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;">].FileName;
            context.Request.Files[</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#800080;line-height:1.5 !important;">0</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;">].SaveAs(System.IO.Path.Combine(strPath, strName));
        }
    } </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">public</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">bool</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;"> IsReusable { </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">get</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;"> { </span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">return</span> <span style="font-size:12px !important;font-family:''Courier New'' !important;color:#0000ff;line-height:1.5 !important;">false</span><span style="font-size:12px !important;font-family:''Courier New'' !important;color:#000000;line-height:1.5 !important;">;
        }
    }

}</span></pre>
	<div class="cnblogs_code_toolbar" style="background-color:#f5f5f5;">
		<span class="cnblogs_code_copy" style="font-size:12px !important;font-family:''Courier New'' !important;line-height:1.5 !important;"><a href="javascript:void(0);"><img alt="复制代码" src="http://common.cnblogs.com/images/copycode.gif" /></a></span> 
	</div>
	<div class="cnblogs_code_toolbar" style="background-color:#f5f5f5;">
		<span class="cnblogs_code_copy" style="font-size:12px !important;font-family:''Courier New'' !important;line-height:1.5 !important;">下载地址：（无需积分，点击即可下载）</span> 
	</div>
	<div class="cnblogs_code_toolbar" style="background-color:#f5f5f5;">
		<span class="cnblogs_code_copy" style="font-size:12px !important;font-family:''Courier New'' !important;line-height:1.5 !important;"><strong><a href="http://csdn.Juming.com/dx/?i=887962594191388&s=bacd00939a59f9ddebd0af48733b65d2" target="_blank">http://csdn.Juming.com/dx/?i=887962594191388&amp;s=bacd00939a59f9ddebd0af48733b65d2</a></strong></span> 
	</div>
</div>
<p>
	&nbsp;
</p>
<span style="color:#4b4b4b;background-color:#ffffff;"></span>', 99, 104, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A41A00F9FF9C AS DateTime), CAST(0x0000A41A00FA3A07 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (146, 1, 6, N'', N'.NET 页面间传值的几种方法', N'', N'/upload/201503/13/201503131053290381.jpg', N'', N'传值、Session', N'', N'asp.net几种常见的传值方法，主要详细介绍QueryString传值、Server.Transfer传值、Cookie对象传值、Session对象传值、Application对象传值。', N'<p>
	<strong><span style="font-size:18px;">QueryString传值：</span></strong> 
</p>
<p>
	1. 这是最简单的传值方式，但缺点是传的值会显示在浏览器的地址栏中且不能传递对象，只适用于传递简单的且安全性要求不高的整数值，例如：
</p>
<p>
	2. 新建一个WEB项目，添加一个页面命名为Test1，在页面中添加一个Button命名为btnLogin，再添加两个TextBox分别命名为tbxUserName和tbxPassWord，添加Buttond的Click()事件：
</p>
<p>
	<br />
</p>
<pre class="prettyprint lang-cs">private void btnLogin_Click (object sender, System.EventArgs e)
{
    string url=" Test2.aspx?UserName=" +tbxUserName.Text + "&amp;Password=”+tbxPassWord.Text+””;
    Response.Redirect(url);
}
</pre>
3. 添加另一个页面命名为Test2，在页面添加两个Lable分别命名为labUserName和labPassWord，添加页面的Load()事件：
<pre class="prettyprint lang-vb">private void Page_Load (object sender, System.EventArgs e)
{
    labUserName.Text=Request.QueryString["UserName"];
    labPassWord.Text=Request.QueryString["Password"];
}</pre>
<p>
	4.&nbsp;把Test1设为起始页，运行项目在Test1页面的文本框中输入值后点击按钮，就可以在Test2页面中显Test1页面输入的结果。
</p>
<p>
	<strong><span style="font-size:18px;">Server.Transfer传值：</span></strong> 
</p>
<p>
	1. 这种方式避免了要传递的值显示在浏览器的地址栏中，但是比较麻烦，例如：<br />
2. 新建一个WEB项目，添加两个页面分别命名为Test1和Test2，在Test1页面中添加一个Button命名为btnLogin，再添加两个TextBox分别命名为tbxUserName和tbxPassWord，在Test2页面添加两个Lable分别命名为labUserName和labPassWord，为Test1添加过程返回tbxUserName和tbxPassWord的值并添加btnLogin的Click()事件：<br />
public string UserName<br />
{<br />
&nbsp; &nbsp; get<br />
&nbsp; &nbsp; {<br />
&nbsp; &nbsp; &nbsp; &nbsp; return tbxUserName.Text;<br />
&nbsp; &nbsp; }<br />
}<br />
public string Password<br />
{<br />
&nbsp; &nbsp; get<br />
&nbsp; &nbsp; {<br />
&nbsp; &nbsp; &nbsp; &nbsp; return tbxPassWord.Text;<br />
&nbsp; &nbsp; }<br />
}<br />
private void btnLogin_Click (object sender, System.EventArgs e)<br />
{<br />
&nbsp; &nbsp; Server.Transfer("Test2.aspx");<br />
}<br />
3. 添加Test2页面的Load()事件：<br />
private void Page_Load (object sender, System.EventArgs e)<br />
{<br />
&nbsp; &nbsp; Test1 t1; //创建原始窗体的实例<br />
<br />
&nbsp; &nbsp; t1=( Test1)Context.Handler; //获得实例化的句柄<br />
<br />
&nbsp; &nbsp; labUserName.Text= t1.UserName;<br />
<br />
&nbsp; &nbsp; labPassWord.Text= t1.Password;<br />
}<br />
4. 把Test1设为起始页，运行项目在Test1页面的文本框中输入值后点击按钮，就可以在Test2页面中显Test1页面输入的结果。<br />
<strong><span style="font-size:18px;">Cookie对象变量：</span></strong><br />
1. Cookie是针对每一个用户而言的，是存放在客户端的 ，Cookie的使用要配合ASP.NET内置对象Request来使用，例如：<br />
2. 新建一个WEB项目，添加两个页面分别命名为Test1和Test2，在Test1页面中添加一个Button命名为btnLogin，再添加两个TextBox分别命名为tbxUserName和tbxPassWord，在Test2页面添加两个Lable分别命名为labUserName和labPassWord，为Test1添加Buttond的Click()事件：<br />
private void btnLogin_Click (object sender, System.EventArgs e)<br />
{<br />
&nbsp; &nbsp; HttpCookie cookie_UserName = new HttpCookie("UserName");<br />
<br />
&nbsp; &nbsp; HttpCookie cookie_PassWord = new HttpCookie("PassWord ");<br />
<br />
&nbsp; &nbsp; cookie_ UserName.Value = tbxUserName.Text;<br />
<br />
&nbsp; &nbsp; cookie_ PassWord.Value = tbxPassWord.Text;<br />
<br />
&nbsp; &nbsp; Response.AppendCookie(cookie_ UserName);<br />
<br />
&nbsp; &nbsp; Response.AppendCookie(cookie_ PassWord);<br />
<br />
&nbsp; &nbsp; Server.Transfer("Test2.aspx");<br />
}<br />
3. 添加Test2页面的Load()事件：<br />
private void Page_Load (object sender, System.EventArgs e)<br />
{<br />
&nbsp; &nbsp; labUserName.Text = Request.Cookies["UserName"].Value.ToString();<br />
<br />
&nbsp; &nbsp; labPassWord.Text = Request.Cookies["PassWord "].Value.ToString();<br />
}<br />
4. 把Test1设为起始页，运行项目在Test1页面的文本框中输入值后点击按钮，就可以在Test2页面中显Test1页面输入的结果。<br />
<strong><span style="font-size:18px;">Session对象变量：</span></strong><br />
1. Session也是针对每一个用户而言的，是存放在服务器端的 ，Session不仅可以把值传递到下一个页面，还可以交叉传递到多个页面，直至把Session变量的值removed 后，变量才会消失，例如：<br />
2. 新建一个WEB项目，添加两个页面分别命名为Test1和Test2，在Test1页面中添加一个Button命名为btnLogin，再添加两个TextBox分别命名为tbxUserName和tbxPassWord，在Test2页面添加两个Lable分别命名为labUserName和labPassWord，为Test1添加Buttond的Click()事件：<br />
<br />
private void btnLogin_Click (object sender, System.EventArgs e)<br />
{<br />
&nbsp; &nbsp; Session["UserName"]=tbxUserName.Text;<br />
<br />
&nbsp; &nbsp; Session["PassWord"]=tbxPassWord.Text;<br />
<br />
&nbsp; &nbsp; Response.Redirect("Test2.aspx");<br />
}<br />
3. 添加Test2页面的Load()事件：<br />
<br />
private void Page_Load (object sender, System.EventArgs e)<br />
{<br />
&nbsp; &nbsp; labUserName.Text=Session["UserName"].ToString();<br />
<br />
&nbsp; &nbsp; labPassWord.Text=Session["Password"].ToString();<br />
<br />
&nbsp; &nbsp; Session.Remove("UserName"); //清除Session<br />
<br />
&nbsp; &nbsp; Session.Remove("PassWord"); //清除Session<br />
}<br />
4. 把Test1设为起始页，运行项目在Test1页面的文本框中输入值后点击按钮，就可以在Test2页面中显Test1页面输入的结果。<br />
<strong><span style="font-size:18px;">Application对象变量：</span></strong><br />
1. Application对象的作用范围是整个全局，也就是说对所有用户都有效。其常用的方法用Lock和UnLock，例如：<br />
2. 新建一个WEB项目，添加两个页面分别命名为Test1和Test2，在Test1页面中添加一个Button命名为btnLogin，再添加两个TextBox分别命名为tbxUserName和tbxPassWord，在Test2页面添加两个Lable分别命名为labUserName和labPassWord，为Test1添加Buttond的Click()事件：<br />
private void btnLogin_Click (object sender, System.EventArgs e)<br />
{<br />
&nbsp; &nbsp; Application["UserName"] = tbxUserName.Text;<br />
<br />
&nbsp; &nbsp; Application["PassWord "] = tbxPassWord.Text;<br />
<br />
&nbsp; &nbsp; Server.Transfer("Test2.aspx");<br />
}<br />
3. 添加Test2页面的Load()事件：<br />
private void Page_Load (object sender, System.EventArgs e)<br />
{<br />
&nbsp; &nbsp; Application.Lock();<br />
<br />
&nbsp; &nbsp; labUserName. Text = Application["UserName"].ToString();<br />
<br />
&nbsp; &nbsp; labPassWord. Text = Application["PassWord "].ToString();<br />
<br />
&nbsp; &nbsp; Application.UnLock();<br />
}<br />
4. 把Test1设为起始页，运行项目在Test1页面的文本框中输入值后点击按钮，就可以在Test2页面中显Test1页面输入的结果。
</p>', 99, 57, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A45A00B29080 AS DateTime), CAST(0x0000A45A00B64079 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (147, 1, 1, N'', N'C#中拼接JSON字符串', N'', N'/upload/201503/27/201503271140067077.jpg', N'', N'', N'', N'public string GetActiveFiles(string selectsection){DataTable dt = DALWebService.GetFiles(selectsection);DataTable FinalTable = new DataTable();FinalTable.Columns.Add(&quot;ID&quot;, typeof(int));FinalTable.Columns.Add(&quot;DownloadURL&quot;, typeof(strin', N'<pre class="prettyprint lang-cs">public string GetActiveFiles(string selectsection)
    {

        DataTable dt = DALWebService.GetFiles(selectsection);
        DataTable FinalTable = new DataTable();
        FinalTable.Columns.Add("ID", typeof(int));
        FinalTable.Columns.Add("DownloadURL", typeof(string));
        FinalTable.Columns.Add("Shortname", typeof(string));
        FinalTable.Columns.Add("Filename", typeof(string));
        foreach (DataRow item in dt.Rows)
        {
            DataRow FileRow = FinalTable.NewRow();
            FileRow["ID"] = Convert.ToInt32(item[0]);
            FileRow["DownloadURL"] = "http://www.antunnel.com.cn:9099/Downloads/" + DALAccounts.GetClientNameID(Convert.ToInt32(item[2])) + "/" + Convert.ToInt32(item[1]).ToString() + "/Storage/" + item[3].ToString();
            FileRow["Filename"] = item[3].ToString();
            FileRow["Shortname"] = item[4].ToString();
            FinalTable.Rows.Add(FileRow);
        }

        char[] specialChars = new char[] { '','' };
        string JSONstring = "[";

        int index = 0;
        foreach (DataRow dr in FinalTable.Rows)
        {
            JSONstring += "{";

            foreach (DataColumn dc in FinalTable.Columns)
            {
                JSONstring += "\"" + dc.ColumnName + "\":\"" + dr[dc].ToString() + "\",";
            }

            JSONstring = JSONstring.TrimEnd(specialChars);
            JSONstring += "},";

            index++;
        }

        JSONstring = JSONstring.TrimEnd(specialChars);
        JSONstring += "]";

        return JSONstring;
    } </pre>', 99, 103, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A46800BEF140 AS DateTime), CAST(0x0000A46800C04BF7 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (148, 2, 14, N'', N'大拌菜', N'', N'/upload/201605/16/201605161136126702.jpg', N'大拌菜', N'大拌菜', N'大拌菜', N'大拌菜虽说四川菜，但是在北京很多餐馆都能吃到，而且在各式各样的生菜当中，出现率也是相当的高哦。大家可以在家试试哦，很简单的哟。大拌菜 材料： 圆生菜2-3片、苦菊一小棵、嫩黄瓜一根(我用的荷兰小黄瓜两根)、紫甘蓝叶子2-3片、洋葱1/2个、番茄一个(可以用小番茄代替)、炒…', N'<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	大拌菜虽说四川菜，但是在北京很多餐馆都能吃到，而且在各式各样的生菜当中，出现率也是相当的高哦。大家可以在家试试哦，很简单的哟。
</p>
<img alt="大拌菜" src="/upload/201605/16/201605161137263890.jpg" width="300" height="400" /> 
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;text-align:center;background-color:#FFFFFF;">
	<strong> 大拌菜</strong> 
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	<strong> 材料：</strong> 
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	圆生菜2-3片、苦菊一小棵、嫩黄瓜一根(我用的荷兰小黄瓜两根)、紫甘蓝叶子2-3片、洋葱1/2个、番茄一个(可以用小番茄代替)、炒香白芝麻一撮(2-5克不等根据自己的喜好)、炸花生米适量(我用的带花生的<a href="http://www.yizuocity.com/goods/show-148.html" class="nocolor">香脆</a>椒代替，也可以用酒鬼花生等)
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	<strong><a href="http://www.chinacaipu.com/tags/4395/" class="nocolor">调料</a>：</strong> 
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	<a href="http://www.yizuocity.com/goods/show-148.html" class="nocolor">香油</a>一匙、盐1/2小匙、糖两大匙、美极鲜酱油一匙、醋两匙、芥末油1-2滴、干<a href="http://www.yizuocity.com/goods/show-148.html" class="nocolor" target="_blank">红椒</a>2枚、橄榄油一匙
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	<strong> 制作过程: </strong> 
</p>
<img alt="大拌菜" src="/upload/201605/16/201605161138134202.jpg" width="560" height="282" /> 
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	1、圆生菜撕成小片，苦菊去蒂，一起洗净沥干水分。
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	2、嫩黄瓜洗净切圆片，紫甘蓝，洋葱洗净后切细丝，番茄切小块，如果是小番茄直接对切开即可。
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	3、所有蔬菜混合在一起，放在容器中备用。
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	4、将香油一匙、盐1/2小匙、糖两大匙、美极鲜酱油一匙、醋两匙、芥末油1-2滴、白芝麻混合调成调味汁，淋在蔬菜上。
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	5、干红椒切小段，放在蔬菜表面，炒锅放入一匙橄榄油烧热，趁热淋在蔬菜表面，撒上炸<a href="http://www.yizuocity.com/goods/show-148.html" class="nocolor">花生米</a>，即可拌匀食用。
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	6、拌匀了，开吃吧!
</p>
<img alt="大拌菜" src="/upload/201605/16/201605161138527171.jpg" width="461" height="522" /> 
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	<strong> 小提示：</strong> 
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	1、这道菜一定要在上桌开吃前淋调味料以及泼热油，这样蔬菜才不会过于蔫，能保持清脆的口感。
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	2、这道菜里调味料中，糖是关键，一定不能少放，可以在调汁时，充分搅拌，让糖充分融化，并边调边尝，直到调出自己喜欢的<a href="http://www.yizuocity.com/goods/show-148.html" class="nocolor">酸甜</a>度，感觉甜度不够就再加一些糖，调味汁要比正常的味觉略咸一点点，<a href="http://www.yizuocity.com/goods/show-148.html" class="nocolor">这样</a>拌完菜后才会刚刚好。
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	3、<a href="http://www.yizuocity.com/goods/show-148.html" class="nocolor">芥末</a>油是调味料中的点睛之笔，最好不省略，但不要放多，略略的1-2滴，给整道菜增加一点丰富的味觉层次，但又不会觉得很冲。千万<a href="http://www.yizuocity.com/goods/show-148.html" class="nocolor">不要</a>放过多，当然，爱吃芥末的是另说了。
</p>
<p style="font-family:宋体, ''Arial Narrow'', HELVETICA;font-size:14px;background-color:#FFFFFF;">
	<br />
</p>', 99, 9, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A60800C013E0 AS DateTime), CAST(0x0000A60800C1223A AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (149, 1, 42, N'', N'node.js基于express框架搭建一个简单的注册登录Web功能', N'', N'/upload/201611/18/201611181410506661.jpg', N'', N'', N'', N'node.js基于express框架搭建一个简单的注册登录Web功能这个小应用使用到了node.js  bootstrap  express  以及数据库的操作 ：使用mongoose对象模型来操作 mongodb如果没了解过的可以先去基本了解一下相关概念~ 首先注明一下版本，因为express因为版本的不同使用的方式也不同，…', N'<div id="cnblogs_post_body">
	<h1 class="postTitle">
		<a id="cb_post_title_url" class="postTitle2" href="http://www.cnblogs.com/imwtr/p/4360341.html">node.js基于express框架搭建一个简单的注册登录Web功能</a>
	</h1>
	<p>
		<strong>这个小应用使用到了node.js &nbsp;bootstrap &nbsp;express &nbsp;以及数据库的操作 ：使用mongoose对象模型来操作 mongodb</strong>
	</p>
	<p>
		<strong>如果没了解过的可以先去基本了解一下相关概念~</strong>
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>首先注明一下版本，因为express因为版本的不同使用的方式也不同，我这算是目前最新的了吧</strong>
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/222232360476057.png" alt="" />
	</p>
	<p>
		还没有装express的可以移步到<a href="http://www.cnblogs.com/imwtr/p/4350282.html" target="_blank">&nbsp;这里</a>&nbsp;看看express框架的获取安装
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>1.简单地项目初始化</strong>
	</p>
	<p>
		进入你的nodejs安装路径下边，如图，然后执行命令&nbsp;<strong>&nbsp;express -e test</strong>&nbsp;&nbsp;(这里把项目名设置为test)
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/222237185787237.png" alt="" />
	</p>
	<p>
		出现如上图所示，看到install dependencies没有，它说如果你想安装依赖就先进入项目test目录，然后执行 npm install安装依赖模块。
	</p>
	<p>
		那就开始吧，网络环境差的可能安装会出错..出现很长一大串一般就行了
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/222241063283950.png" alt="" />
	</p>
	<p>
		如此一来，项目初始已经完成，可以运行一下项目 npm start 看是否正常。
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/222244447507013.png" alt="" />
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/222244542971664.png" alt="" />
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>ok 还算正常，下面先来基本分析一下生成的初始项目</strong>：
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/222246498752807.png" alt="" />&nbsp;<img src="http://images.cnitblog.com/blog2015/688270/201503/222247342506197.png" alt="" />
	</p>
	<p>
		之前&nbsp;<a href="http://www.cnblogs.com/imwtr/p/4350282.html" target="_blank">那篇文章</a>&nbsp;已经说过&nbsp;
	</p>
	<p>
		项目创建成功之后，生成四个文件夹，主文件app.js与配置信息文件packetage.json
	</p>
	<p>
		<strong>bin是项目的启动文件</strong>，配置以什么方式启动项目，默认 npm start
	</p>
	<p>
		<strong>public是项目的静态文件</strong>，放置js css img等文件
	</p>
	<p>
		<strong>routes是项目的路由信息文件</strong>,控制地址路由
	</p>
	<p>
		<strong>views是视图文件</strong>，放置模板文件ejs或jade等（其实就相当于html形式文件啦~)
	</p>
	<p>
		<strong>express这样的MVC框架模式，是一个Web项目的基本构成</strong>。
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		先来看看文件信息package.json &nbsp;一般项目的主要信息都会在这里产生
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>{
  "name": "test",
  "version": "0.0.0",
  "private": true,
  "scripts": {
    "start": "node ./bin/www"
  },
  "dependencies": {
    "body-parser": "~1.12.0",
    "cookie-parser": "~1.3.4",
    "debug": "~2.1.1",
    "ejs": "~2.3.1",
    "express": "~4.12.2",
    "morgan": "~1.5.1",
    "serve-favicon": "~2.2.0"
  }
}</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		看看主文件 app.js &nbsp; 这是它的初始形式，这个模块还要继续导出给 bin文件夹下的www文件使用
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre> 1 var express = require(''express'');
 2 var path = require(''path'');
 3 var favicon = require(''serve-favicon'');
 4 var logger = require(''morgan'');
 5 var cookieParser = require(''cookie-parser'');
 6 var bodyParser = require(''body-parser'');
 7 
 8 var routes = require(''./routes/index'');
 9 var users = require(''./routes/users'');
10 
11 var app = express();
12 
13 // view engine setup
14 app.set(''views'', path.join(__dirname, ''views''));
15 app.set(''view engine'', ''ejs'');
16 
17 // uncomment after placing your favicon in /public
18 //app.use(favicon(__dirname + ''/public/favicon.ico''));
19 app.use(logger(''dev''));
20 app.use(bodyParser.json());
21 app.use(bodyParser.urlencoded({ extended: false }));
22 app.use(cookieParser());
23 app.use(express.static(path.join(__dirname, ''public'')));
24 
25 app.use(''/'', routes);
26 app.use(''/users'', users);
27 
28 // catch 404 and forward to error handler
29 app.use(function(req, res, next) {
30   var err = new Error(''Not Found'');
31   err.status = 404;
32   next(err);
33 });
34 
35 // error handlers
36 
37 // development error handler
38 // will print stacktrace
39 if (app.get(''env'') === ''development'') {
40   app.use(function(err, req, res, next) {
41     res.status(err.status || 500);
42     res.render(''error'', {
43       message: err.message,
44       error: err
45     });
46   });
47 }
48 
49 // production error handler
50 // no stacktraces leaked to user
51 app.use(function(err, req, res, next) {
52   res.status(err.status || 500);
53   res.render(''error'', {
54     message: err.message,
55     error: {}
56   });
57 });
58 
59 
60 module.exports = app;</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		www文件内容：这里拥有着http服务器的基本配置
	</p>
	<div class="cnblogs_code">
		<img id="code_img_closed_2f292f89-0781-45b0-9f46-5e40c6eb891a" class="code_img_closed" src="http://images.cnblogs.com/OutliningIndicators/ContractedBlock.gif" alt="" />&nbsp;<span class="cnblogs_code_collapse">View Code</span>
	</div>
	<p>
		再来介绍一下项目使用到的ejs模板，比如看看这个view里边的index.ejs （我们待会可以直接把它转为html，差不多的）
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;title&gt;&lt;%= title %&gt;&lt;/title&gt;
    &lt;link rel=''stylesheet'' href=''/stylesheets/style.css'' /&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;h1&gt;&lt;%= title %&gt;&lt;/h1&gt;
    &lt;p&gt;Welcome to &lt;%= title %&gt;&lt;/p&gt;
  &lt;/body&gt;
&lt;/html&gt;</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		&lt;%= title %&gt; 这就是ejs的使用范例，title的值通过路由routes文件夹下index.js代码传入（后面再谈）
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/222257507978355.png" alt="" />
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		好了，基本介绍了项目的初始情况
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>2.基于初始项目的改进-- 注册登录功能</strong>
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>设计如下：</strong>
	</p>
	<p>
		一个初始界面（其实就是原始地址：比如 localhost:3000(index.html &nbsp;路径为/ ) ，在初始界面选择登录或注册
	</p>
	<p>
		跳进来之后会先跳进登录界面（login.html &nbsp;路径为 /login)，可以选择先注册（跳转 register.html &nbsp;路径为/register)
	</p>
	<p>
		跳进注册界面后就会跳进（register.html 路径为 /register)，注册成功后就跳转登录界面(login.html &nbsp;路径为 /login)
	</p>
	<p>
		在登录界面登录成功后就跳转(home.html &nbsp;路径为 /home). 在home这里还提供了注销的功能（无页面文件，它的路径为 /logout
	</p>
	<p>
		如果浏览器直接输入localhost:3000/home &nbsp;要先判断是否登录成功，未登录不允许进入
	</p>
	<p>
		<strong>看到上诉，应该了解到：我们是通过一个路径，然后通过这个路径的解析，从而渲染出这个路径对应的模板文件，其中我们这里的模板文件为.html后缀的</strong>
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>首先展示一下基本界面形态：</strong>
	</p>
	<p>
		<strong><img src="http://images.cnitblog.com/blog2015/688270/201503/231424336308092.png" alt="" /></strong>
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		然后先注册吧，点击注册
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231427164118856.png" alt="" />
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		填入用户名密码，这里稍微设置了两次密码相同的判断，注册成功它会自动跳转登录界面
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231428142391557.png" alt="" />
	</p>
	<p>
		用mongoVUE看看数据的创建
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231556503339852.png" alt="" />
	</p>
	<p>
		那就登录吧，登录成功跳转home界面
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231429024583121.png" alt="" />
	</p>
	<p>
		注销吧，注销后清除session值，然后跳转到根路径
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231430034275380.png" alt="" />
	</p>
	<p>
		然后试一下浏览器直接进入 home路径？ 浏览器地址输入 &nbsp;localhost:3000/home &nbsp;回车， ok 它自动跳转到登录界面
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231431204429109.png" alt="" />
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>好现在开始解析如何构建这个小项目：</strong>
	</p>
	<p>
		因为我们直接使用了后缀名 .html ，所以我们要先修改一下ejs模板 &nbsp;，再把原来views目录下模板文件后缀改成 .html
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>var app = express();

// view engine setup
app.set(''views'', path.join(__dirname, ''views''));
app.engine("html",require("ejs").__express); // or   app.engine("html",require("ejs").renderFile);
//app.set("view engine","ejs");
app.set(''view engine'', ''html'');</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		其实就是加一句再改一句。 __express 和renderFile都可以， 不用管它是什么，它能那样用就行了
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		然后我们知道需要这些模板文件，那就创建它们吧
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231434060521404.png" alt="" />
	</p>
	<p>
		<strong>index.html &nbsp; &nbsp;其中 &lt;%= title %&gt;使用到了模板 &nbsp;连接&lt;a&gt; 直接使用了路由路径的方法</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;title&gt;&lt;%= title %&gt;&lt;/title&gt;
    &lt;link rel=''stylesheet'' href=''/stylesheets/style.css'' /&gt;
    &lt;style type="text/css"&gt;
    a{margin-left: 20px; text-decoration: none;}
    a:hover{text-decoration: underline;}
    &lt;/style&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;h1&gt;&lt;%= title %&gt;&lt;/h1&gt;
    &lt;p&gt;Welcome to &lt;%= title %&gt;&lt;/p&gt;
    
    &lt;p&gt;&lt;a href="/login"&gt;登录 &lt;/a&gt;
    &lt;a href="/register"&gt;   注册&lt;/a&gt;
    &lt;/p&gt;
  &lt;/body&gt;
&lt;/html&gt;</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		<strong>register.html &nbsp;注册方式主要是把原始 form表单 onsubmit="return false" 防止默认提交，然后在输入信息正确的情况下，通过ajax,把表单信息post到路径/register</strong>
	</p>
	<p>
		<strong>然后我们就通过路由功能根据此路径来处理信息（这个跟ajax和php交互是同一个道理）</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;


&lt;head&gt;
    &lt;meta charset="utf-8"&gt;
    &lt;meta name="viewport" content="width=device-width,initial-scale=1.0"&gt;
    &lt;title&gt;&lt;%= title %&gt;&lt;/title&gt;
    &lt;link rel="stylesheet" href="stylesheets/bootstrap.min.css" media="screen"&gt;
    &lt;style type="text/css"&gt;
    .m15{ margin: 15px;}
     .tc{ text-align: center;font-size: 18px;font-weight: 600;}
    &lt;/style&gt;
&lt;/head&gt;
&lt;body screen_capture_injected="true"&gt;
    &lt;div class="container"&gt;
    &lt;%- message %&gt;
        &lt;form class="col-sm-offset-4 col-sm-4 form-horizontal" role="form" method="post" onsubmit="return false"&gt;
            &lt;fieldset&gt;
                &lt;legend&gt;&lt;/legend&gt;
                &lt;div class="panel panel-default"&gt;
                &lt;div class="panel-heading"&gt;
                    &lt;p class="tc"&gt;注册信息&lt;/p&gt;
                &lt;/div&gt;
                &lt;div class="panel-body m15"&gt;
                &lt;div class="form-group"&gt;
                    &lt;div class="input-group"&gt;
                        &lt;span class="input-group-addon"&gt;
                        &lt;span class="glyphicon glyphicon-user"&gt;&lt;/span&gt;
                        &lt;/span&gt;
                        &lt;input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名" required&gt;
                    &lt;/div&gt;
                &lt;/div&gt;
                &lt;div class="form-group"&gt;
                    &lt;div class="input-group"&gt;
                        &lt;span class="input-group-addon"&gt;
                        &lt;span class="glyphicon glyphicon-lock"&gt;&lt;/span&gt;
                        &lt;/span&gt;
                        &lt;input type="text" class="form-control" id="password" name="password" placeholder="请输入密码" required&gt;
                    &lt;/div&gt;
                &lt;/div&gt;
                &lt;div class="form-group"&gt;
                    &lt;div class="input-group"&gt;
                        &lt;span class="input-group-addon"&gt;
                        &lt;span class="glyphicon glyphicon-lock"&gt;&lt;/span&gt;
                        &lt;/span&gt;
                        &lt;input type="text" class="form-control" id="password1" name="password1" placeholder="请再次输入密码" required&gt;
                    &lt;/div&gt;
                &lt;/div&gt;
                &lt;div class="form-group"&gt;
                        &lt;button type="submit" class="btn btn-primary btn-block" id="register1"&gt;注册&lt;/button&gt;
                &lt;/div&gt;
                &lt;div class="form-group"&gt;
                        &lt;button type="button" class="btn btn-info col-sm-2 col-sm-offset-10" id="login1"&gt;登录&lt;/button&gt;
                &lt;/div&gt;
                &lt;/div&gt;
                &lt;/div&gt;
            &lt;/fieldset&gt;
        &lt;/form&gt;
    &lt;/div&gt;

    &lt;script type="text/javascript" src="javascripts/jquery.min.js"&gt;&lt;/script&gt;
    &lt;script type="text/javascript" src="javascripts/bootstrap.min.js"&gt;&lt;/script&gt;
    &lt;script type="text/javascript"&gt;
    $(function(){ 
        $("#login1").click(function(){ 
            location.href = ''login'';
        });
        $("#register1").click(function(){ 
            var username = $("#username").val();
            var password = $("#password").val();
            var password1 = $("#password1").val();
            if(password !== password1){ 
                $("#password").css("border","1px solid red");
                $("#password1").css("border","1px solid red");
            }else if(password === password1){
            var data = {"uname":username,"upwd":password};
            $.ajax({ 
                url: ''/register'',
                type: ''post'',
                data: data,
                success: function(data,status){ 
                    if(status == ''success''){ 
                        location.href = ''login'';
                    }
                },
                error: function(data,err){ 
                        location.href = ''register'';
                }
            }); 
        }
        });
    });
&lt;/script&gt;
&lt;/body&gt;
&lt;/head&gt;
&lt;/html&gt;</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		<strong>login.html &nbsp; 跟上面register.html原理差不多</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;


&lt;head&gt;
    &lt;meta charset="utf-8"&gt;
    &lt;meta name="viewport" content="width=device-width,initial-scale=1.0"&gt;
    &lt;title&gt;&lt;%= title %&gt;&lt;/title&gt;
    &lt;link rel="stylesheet" href="stylesheets/bootstrap.min.css" media="screen"&gt;
    &lt;style type="text/css"&gt;
    .m15{ margin: 15px;}
     .tc{ text-align: center;font-size: 18px;font-weight: 600;}
    &lt;/style&gt;
&lt;/head&gt;
&lt;body screen_capture_injected="true"&gt;
    &lt;div class="container"&gt;
    &lt;%- message %&gt;
        &lt;form class="col-sm-offset-4 col-sm-4 form-horizontal" role="form" method="post" onsubmit="return false"&gt;
            &lt;fieldset&gt;
                &lt;legend&gt;&lt;/legend&gt;
                &lt;div class="panel panel-default"&gt;
                &lt;div class="panel-heading"&gt;
                    &lt;p class="tc"&gt;请先登录&lt;/p&gt;
                &lt;/div&gt;
                &lt;div class="panel-body m15"&gt;
                &lt;div class="form-group"&gt;
                    &lt;div class="input-group"&gt;
                        &lt;span class="input-group-addon"&gt;
                        &lt;span class="glyphicon glyphicon-user"&gt;&lt;/span&gt;
                        &lt;/span&gt;
                        &lt;input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名" required&gt;
                    &lt;/div&gt;
                &lt;/div&gt;
                &lt;div class="form-group"&gt;
                    &lt;div class="input-group"&gt;
                        &lt;span class="input-group-addon"&gt;
                        &lt;span class="glyphicon glyphicon-lock"&gt;&lt;/span&gt;
                        &lt;/span&gt;
                        &lt;input type="text" class="form-control" id="password" name="password" placeholder="请输入密码" required&gt;
                    &lt;/div&gt;
                &lt;/div&gt;
                &lt;div class="form-group"&gt;
                        &lt;button type="submit" class="btn btn-primary btn-block" id="login0"&gt;登录&lt;/button&gt;
                &lt;/div&gt;
                &lt;div class="form-group"&gt;
                        &lt;button type="button" class="btn btn-info col-sm-2 col-sm-offset-10" id="register0"&gt;注册&lt;/button&gt;
                &lt;/div&gt;
                &lt;/div&gt;
                &lt;/div&gt;
            &lt;/fieldset&gt;
        &lt;/form&gt;
    &lt;/div&gt;

    &lt;script type="text/javascript" src="javascripts/jquery.min.js"&gt;&lt;/script&gt;
    &lt;script type="text/javascript" src="javascripts/bootstrap.min.js"&gt;&lt;/script&gt;
    &lt;script type="text/javascript"&gt;
    $(function(){ 
        $("#register0").click(function(){ 
            location.href = ''register'';
        });
        $("#login0").click(function(){ 
            var username = $("#username").val();
            var password = $("#password").val();
            var data = {"uname":username,"upwd":password};
            $.ajax({ 
                url:''/login'',
                type:''post'',
                data: data,
                success: function(data,status){ 
                    if(status == ''success''){ 
                        location.href = ''home'';
                    }
                },
                error: function(data,status){ 
                    if(status == ''error''){ 
                        location.href = ''login'';
                    }
                }
            });
        });
    });
    &lt;/script&gt;
&lt;/body&gt;
&lt;/head&gt;
&lt;/html&gt;</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		<strong>最后是 home.html &nbsp; &nbsp;里头的 user.name 就是使用ejs模板通过session.user来获取user对象，这里user有name和password的属性</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;title&gt;&lt;%= title %&gt;&lt;/title&gt;
    &lt;link rel=''stylesheet'' href=''/stylesheets/style.css'' /&gt;
    &lt;style type="text/css"&gt;
    a{margin-left: 20px; text-decoration: none;}
    a:hover{text-decoration: underline;}
    &lt;/style&gt;
  &lt;/head&gt;
  &lt;body&gt;
  &lt;h1&gt;Your name:   &lt;%- user.name %&gt;&lt;/h1&gt;
    &lt;p&gt;Welcome to your home ~&lt;/p&gt;
    &lt;p&gt;&lt;a href="/logout"&gt;我要注销 &lt;/a&gt;
    &lt;/p&gt;
  &lt;/body&gt;
&lt;/html&gt;</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		模板文件就是这些，接下来给主文件 app.js增加路由配置，让浏览器访问到路径后得以被解析
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>app.use(''/'', routes);  // 即为为路径 / 设置路由
app.use(''/users'', users); // 即为为路径 /users 设置路由
app.use(''/login'',routes); // 即为为路径 /login 设置路由
app.use(''/register'',routes); // 即为为路径 /register 设置路由
app.use(''/home'',routes); // 即为为路径 /home 设置路由
app.use("/logout",routes); // 即为为路径 /logout 设置路由</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		app.use是一个中间件的用法，这里的routes看初始项目的那句代码，就是引用了routes文件夹下的index.js模块
	</p>
	<div class="cnblogs_code">
<pre>var routes = require(''./routes/index'');
var users = require(''./routes/users'');</pre>
	</div>
	<p>
		<strong>所以待会我们还得继续修改完善index.js（我这里是直接把所有路径的处理方法全部放到index.js中，实际做的时候可以考虑细分出模块）</strong>
	</p>
	<p>
		<strong>这里先不说index.js，因为还有很多更宽泛的工作没弄</strong>
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong> 1.注册登录，所以我们得需要数据库</strong>
	</p>
	<p>
		这里使用到了mongodb . 据我所知mongodb主要有两种使用方法，<strong>这里使用了其中的一种：使用 mongoose</strong>
	</p>
	<p>
		Mongoose是MongoDB的一个对象模型工具，是基于node-mongodb-native开发的MongoDB nodejs驱动，可以在异步的环境下执行。
	</p>
	<p>
		同时它也是针对MongoDB操作的一个对象模型库，封装了MongoDB对文档的的一些增删改查等常用方法，让NodeJS操作Mongodb数据库变得更加灵活简单。
	</p>
	<p>
		我们通过Mongoose去创建一个“集合”并对其进行增删改查，就要用到它的三个属性：Schema(数据属性模型)、Model、Entity
	</p>
	<p>
		<strong> 这里简单介绍一下，更详细的用法可以自行查阅~</strong>
	</p>
	<p>
		<strong>Schema</strong>&nbsp;—— 一种以文件形式存储的数据库模型骨架，无法直接通往数据库端，也就是说它不具备对数据库的操作能力，仅仅只是数据库模型在程序片段中的一种表现，可以说是数据属性模型(传统意义的表结构)，又或着是“集合”的模型骨架。
	</p>
	<p>
		<strong>比如定义一个Schema：</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>var mongoose = require("mongoose");
 
var TestSchema = new mongoose.Schema({
    name : { type:String },//属性name,类型为String
    age  : { type:Number, default:0 },//属性age,类型为Number,默认为0
    time : { type:Date, default:Date.now },
    email: { type:String,default:''''}
});</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		<strong>Model</strong>&nbsp;—— 由Schema构造生成的模型，除了Schema定义的数据库骨架以外，还具有数据库操作的行为，类似于管理数据库属性、行为的类。
	</p>
	<p>
		<strong>比如定义一个Model：</strong>
	</p>
	<div class="cnblogs_code">
<pre>var db = mongoose.connect("mongodb://127.0.0.1:27017/test");
 
// 创建Model
var TestModel = db.model("test1", TestSchema);</pre>
	</div>
	<p>
		<strong>Entity</strong>&nbsp;—— 由Model创建的实体，使用save方法保存数据，Model和Entity都有能影响数据库的操作，但Model比Entity更具操作性。
	</p>
	<p>
		<strong>比如定义一个Entity</strong>：
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>var TestEntity = new TestModel({
       name : "Lenka",
       age  : 36,
       email: "lenka@qq.com"
});
console.log(TestEntity.name); // Lenka
console.log(TestEntity.age); // 36</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		&nbsp;
	</p>
	<p>
		基本就介绍到这里
	</p>
	<p>
		因为我们要使用数据库，那就来创建它。使用的就是上述的方法
	</p>
	<p>
		<strong>首先，在项目根目录下建立一个database文件夹，建立文件 models.js &nbsp;然后建立model处理文件 dbHandel.js</strong>
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231502595205322.png" alt="" />
	</p>
	<p>
		写入文件 models.js &nbsp;一个user集合，里面有name和password属性
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>module.exports = { 
    user:{ 
        name:{type:String,required:true},
        password:{type:String,required:true}
    }
};</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		写入文件 dbHandel.js &nbsp;里边主要是获取 Schema 然后处理获取 model ，最后就是返回一个model了（提供其他文件对model的操作 -- Entity是使用）
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>var mongoose = require(''mongoose'');
var Schema = mongoose.Schema;
var models = require("./models");

for(var m in models){ 
    mongoose.model(m,new Schema(models[m]));
}

module.exports = { 
    getModel: function(type){ 
        return _getModel(type);
    }
};

var _getModel = function(type){ 
    return mongoose.model(type);
};</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		建立好基本文件后我们就在app.js中调用使用它：要使用multer和mongoose模块
	</p>
	<p>
		<strong>项目没有，所以我们要安装</strong>
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231511560991249.png" alt="" />
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231512470837258.png" alt="" />
	</p>
	<p>
		<strong>app.js中加上</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>var multer = require(''multer'');
var mongoose = require(''mongoose'');

global.dbHandel = require(''./database/dbHandel'');
global.db = mongoose.connect("mongodb://localhost:27017/nodedb");

// 下边这里也加上 use(multer())
app.use(bodyParser.urlencoded({ extended: true }));
app.use(multer());
app.use(cookieParser());</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>2.因为我们使用到了session（比如进入home的时候判断session值是否为空），所以需要express-session 模块</strong>
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231513190674997.png" alt="" />
	</p>
	<p>
		<strong>然后在app.js中引用它并作初始设置：</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>var session = require(''express-session'');

var app = express();
app.use(session({ 
    secret: ''secret'',
    cookie:{ 
        maxAge: 1000*60*30;
    }
}));

app.use(function(req,res,next){ 
    res.locals.user = req.session.user;   // 从session 获取 user对象
    var err = req.session.error;   //获取错误信息
    delete req.session.error;
    res.locals.message = "";   // 展示的信息 message
    if(err){ 
        res.locals.message = ''&lt;div class="alert alert-danger" style="margin-bottom:20px;color:red;"&gt;''+err+''&lt;/div&gt;'';
    }
    next();  //中间件传递
});</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		好现在想想我们还剩下什么：
	</p>
	<p>
		数据库已经提供出model接口给我们使用（给它填数据）
	</p>
	<p>
		已经初始化了路径处理
	</p>
	<p>
		初始化了session信息 数据库配置等
	</p>
	<p>
		页面模板也已经做完
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>所以剩下的就是路径处理的部分：去routes目录下 修改index.js吧</strong>
	</p>
	<p>
		<strong>/ &nbsp;路径</strong>
	</p>
	<div class="cnblogs_code">
<pre>/* GET index page. */
router.get(''/'', function(req, res,next) {
  res.render(''index'', { title: ''Express'' });    // 到达此路径则渲染index文件，并传出title值供 index.html使用
});</pre>
	</div>
	<p>
		<strong>/login 路径</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>/* GET login page. */
router.route("/login").get(function(req,res){    // 到达此路径则渲染login文件，并传出title值供 login.html使用
    res.render("login",{title:''User Login''});
}).post(function(req,res){                        // 从此路径检测到post方式则进行post数据的处理操作
    //get User info
     //这里的User就是从model中获取user对象，通过global.dbHandel全局方法（这个方法在app.js中已经实现)
    var User = global.dbHandel.getModel(''user'');  
    var uname = req.body.uname;                //获取post上来的 data数据中 uname的值
    User.findOne({name:uname},function(err,doc){   //通过此model以用户名的条件 查询数据库中的匹配信息
        if(err){                                         //错误就返回给原post处（login.html) 状态码为500的错误
            res.send(500);
            console.log(err);
        }else if(!doc){                                 //查询不到用户名匹配信息，则用户名不存在
            req.session.error = ''用户名不存在'';
            res.send(404);                            //    状态码返回404
        //    res.redirect("/login");
        }else{ 
            if(req.body.upwd != doc.password){     //查询到匹配用户名的信息，但相应的password属性不匹配
                req.session.error = "密码错误";
                res.send(404);
            //    res.redirect("/login");
            }else{                                     //信息匹配成功，则将此对象（匹配到的user) 赋给session.user  并返回成功
                req.session.user = doc;
                res.send(200);
            //    res.redirect("/home");
            }
        }
    });
});</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>/register 路径</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>/* GET register page. */
router.route("/register").get(function(req,res){    // 到达此路径则渲染register文件，并传出title值供 register.html使用
    res.render("register",{title:''User register''});
}).post(function(req,res){ 
     //这里的User就是从model中获取user对象，通过global.dbHandel全局方法（这个方法在app.js中已经实现)
    var User = global.dbHandel.getModel(''user'');
    var uname = req.body.uname;
    var upwd = req.body.upwd;
    User.findOne({name: uname},function(err,doc){   // 同理 /login 路径的处理方式
        if(err){ 
            res.send(500);
            req.session.error =  ''网络异常错误！'';
            console.log(err);
        }else if(doc){ 
            req.session.error = ''用户名已存在！'';
            res.send(500);
        }else{ 
            User.create({                             // 创建一组user对象置入model
                name: uname,
                password: upwd
            },function(err,doc){ 
                 if (err) {
                        res.send(500);
                        console.log(err);
                    } else {
                        req.session.error = ''用户名创建成功！'';
                        res.send(200);
                    }
                  });
        }
    });
});</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>/home &nbsp;路径</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>/* GET home page. */
router.get("/home",function(req,res){ 
    if(!req.session.user){                     //到达/home路径首先判断是否已经登录
        req.session.error = "请先登录"
        res.redirect("/login");                //未登录则重定向到 /login 路径
    }
    res.render("home",{title:''Home''});         //已登录则渲染home页面
});</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>/logout &nbsp;路径</strong>
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>/* GET logout page. */
router.get("/logout",function(req,res){    // 到达 /logout 路径则登出， session中user,error对象置空，并重定向到根路径
    req.session.user = null;
    req.session.error = null;
    res.redirect("/");
});</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>当然了，把所以路径的处理放在同一个index.js事实上有点糟糕，可以考虑分着写：（这里提供一种思路分出模块）</strong>
	</p>
	<p>
		比如一个home.js模块里边：
	</p>
	<div class="cnblogs_code">
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
<pre>module.exports = function ( app ) {
    app.get(''/logout'', function(req, res){
        req.session.user = null;
        req.session.error = null;
        res.redirect(''/'');
    });
}</pre>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
		<div class="cnblogs_code_toolbar">
			<span class="cnblogs_code_copy"><a href="javascript:void(0);"><img src="//common.cnblogs.com/images/copycode.gif" alt="复制代码" /></a></span>
		</div>
	</div>
	<p>
		从而只需要在index.js模块里边引用即可
	</p>
	<div class="cnblogs_code">
<pre>module.exports = function ( app ) {
    require(''./logout'')(app);
};</pre>
	</div>
	<p>
		在app.js模块中再引用一下就可以（routes目录下index.js是默认文件，所以可以省略index)
	</p>
	<div class="cnblogs_code">
<pre>require(''./routes'')(app);</pre>
	</div>
	<p>
		&nbsp;
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>3.好了，一个简单的注册登录功能已经完成了，启动项目吧</strong>
	</p>
	<p>
		（注意：因为要使用到mongodb数据库，所以要先开启数据库服务，不然无法访问，因为我们使用了nodedb 这个数据库，所以最后也要先在mongodb中创建它，不然也有可能出错 未安装数据库的可以看看 &nbsp;<a href="http://www.cnblogs.com/imwtr/p/4351311.html" target="_blank">这篇&nbsp;</a>&nbsp; ，检测数据库服务是否开启：浏览器打开localhost:27017 就能访问&nbsp;，然后给数据库添加nodedb吧）
	</p>
	<p>
		服务开启
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231548594581032.png" alt="" />
	</p>
	<p>
		初始化nonedb可以类似这样
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231550411309792.png" alt="" />
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		<strong>启动项目，npm start&nbsp;</strong>
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231543162559447.png" alt="" />
	</p>
	<p>
		上面那个bson错误的不用管它..我也不知咋处理，听说可以直接&nbsp;<strong>npm install bson 或者 npm update</strong>&nbsp;就行
	</p>
	<p>
		但我试了貌似没什么效果
	</p>
	<p>
		<img src="http://images.cnitblog.com/blog2015/688270/201503/231552200991594.png" alt="" />
	</p>
	<p>
		&nbsp;
	</p>
	<p>
		好了，项目已经打开，浏览器输入 localhost:3000 访问吧 （期间可以自己查看mongodb数据库里边nodedb --&gt; user 数据的改动，使用mongoVUE或者命令查看）
	</p>
	<p>
		需要代码的可移步至Github： &nbsp;https://github.com/imwtr/nodejs_express_login_register
	</p>
	<p>
		&nbsp;
	</p>
	<div id="MySignature">
		<div id="MySignature" style="background-color:#fffeee;">
			<div id="MySignature">
				<div>
					作者：<a href="http://home.cnblogs.com/u/Leo_wl/" target="_blank">Leo_wl</a>
				</div>
				<div>
					出处：<a href="http://www.cnblogs.com/Leo_wl/" target="_blank">http://www.cnblogs.com/Leo_wl/</a>
				</div>
				<div>
					<br />
				</div>
			</div>
		</div>
	</div>
</div>', 99, 16, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A6C200EA053D AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[dt_article] OFF
/****** Object:  Table [dbo].[dt_advert_banner]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_advert_banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aid] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NOT NULL,
	[file_path] [nvarchar](255) NULL,
	[link_url] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NOT NULL,
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_advert]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_advert](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[type] [tinyint] NOT NULL,
	[price] [decimal](18, 2) NOT NULL,
	[remark] [nvarchar](255) NULL,
	[view_num] [int] NOT NULL,
	[view_width] [int] NOT NULL,
	[view_height] [int] NOT NULL,
	[target] [nvarchar](30) NULL,
	[add_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_article_comment]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[parent_id] [int] NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[user_ip] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[is_lock] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[is_reply] [tinyint] NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_COMMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父评论ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已答复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_reply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_time'
GO
SET IDENTITY_INSERT [dbo].[dt_article_comment] ON
INSERT [dbo].[dt_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (1, 1, 121, 0, 0, N'匿名用户', N'127.0.0.1', N'很好！', 0, CAST(0x0000A3D10109FF18 AS DateTime), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[dt_article_comment] OFF
/****** Object:  Table [dbo].[dt_article_category]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[sort_id] [int] NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_ARTICLE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
SET IDENTITY_INSERT [dbo].[dt_article_category] ON
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (1, 1, N'C#', N'', 0, N',1,', 1, 0, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (2, 2, N'宅男专享', N'', 0, N',2,', 1, 99, N'', N'', N'', N'美食', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (6, 1, N'ASP.NET', N'', 0, N',6,', 1, 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (14, 2, N'萌女专享', N'', 0, N',14,', 1, 100, N'', N'', N'', N'萌女专享', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (25, 3, N'音乐', N'', 0, N',25,', 1, 99, N'', N'', N'', N'音乐', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (26, 3, N'热门电影', N'', 0, N',26,', 1, 100, N'', N'', N'', N'热门电影', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (30, 4, N'图标素材', N'', 0, N',30,', 1, 99, N'', N'', N'', N'图标素材', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (31, 4, N'jquery插件', N'', 0, N',31,', 1, 99, N'', N'', N'', N'jquery插件', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (32, 5, N'关于博主', N'', 0, N',32,', 1, 99, N'', N'', N'', N'关于博主', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (37, 1, N'JQuery/js', N'JQueryjs', 0, N',37,', 1, 3, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (38, 1, N'Html5+CSS3', N'', 0, N',38,', 1, 4, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (39, 1, N'技术相关', N'jishuxiangguan', 0, N',39,', 1, 5, N'', N'', N'', N'网络安全', N'网络安全、优化、浏览器', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (40, 1, N'SQLServer', N'', 0, N',40,', 1, 2, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (41, 3, N'麻辣隔壁', N'', 0, N',41,', 1, 101, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (42, 1, N'NodeJs', N'NodeJs', 0, N',42,', 1, 99, N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[dt_article_category] OFF
/****** Object:  Table [dbo].[dt_article_attribute_value]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_value](
	[article_id] [int] NOT NULL,
	[sub_title] [nvarchar](255) NULL,
	[source] [nvarchar](100) NULL,
	[author] [nvarchar](50) NULL,
	[goods_no] [nvarchar](100) NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[mp3_url] [nvarchar](500) NULL,
	[img_h] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_VALUE] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'goods_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'stock_quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'market_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'sell_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value'
GO
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (3, N'', N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (102, N'', N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (121, NULL, N'本站', N'城池', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (122, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (123, N'', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (124, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (125, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (126, NULL, N'本站', N'黄渤', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://tsmusic128.tc.qq.com/1530858.mp3', NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (127, NULL, N'本站', N'城池', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'http://tsmusic128.tc.qq.com/1530858.mp3', 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (128, NULL, N'本站', N'城池', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'', NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (129, NULL, N'本站', N'城池', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'', NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (130, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (131, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'', NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (132, N'', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (133, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'', 159)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (135, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'', 165)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (136, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'', 239)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (137, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, N'', 197)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (139, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (140, NULL, N'网易科技', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (141, NULL, N'本站', N'城池', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (142, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (143, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (144, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (145, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (146, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (147, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (148, N'', N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point], [mp3_url], [img_h]) VALUES (149, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0, NULL, NULL)
/****** Object:  Table [dbo].[dt_order_goods]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_order_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[goods_id] [int] NULL,
	[goods_title] [nvarchar](100) NULL,
	[goods_price] [decimal](9, 2) NULL,
	[real_price] [decimal](9, 2) NULL,
	[quantity] [int] NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_DT_ORDER_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'real_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单商品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods'
GO
/****** Object:  Table [dbo].[dt_manager]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[role_type] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[salt] [nvarchar](20) NULL,
	[real_name] [nvarchar](50) NULL,
	[telephone] [nvarchar](30) NULL,
	[email] [nvarchar](30) NULL,
	[is_lock] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员类型1超管2系管' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'real_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager'
GO
SET IDENTITY_INSERT [dbo].[dt_manager] ON
INSERT [dbo].[dt_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [real_name], [telephone], [email], [is_lock], [add_time]) VALUES (1, 1, 1, N'admin', N'9F61E420BD17E6ED', N'28LH48', N'超级管理员', N'13421365591', N'645001895@qq.com', 0, CAST(0x0000A28A001F3380 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_manager] OFF
/****** Object:  Table [dbo].[dt_channel]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_channel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[is_albums] [tinyint] NULL,
	[is_attach] [tinyint] NULL,
	[is_group_price] [tinyint] NULL,
	[page_size] [int] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启相册功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_albums'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启附件功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_attach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_group_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每页显示数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'page_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统频道表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel'
GO
SET IDENTITY_INSERT [dbo].[dt_channel] ON
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (1, 1, N'news', N'编程开发', 0, 1, 0, 12, 99)
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (2, 1, N'goods', N'美食专享', 1, 0, 0, 12, 100)
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (3, 1, N'photo', N'影音娱乐', 1, 0, 0, 12, 101)
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (4, 1, N'down', N'资源下载', 0, 1, 0, 12, 102)
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (5, 1, N'content', N'单页内容', 0, 0, 0, 12, 103)
SET IDENTITY_INSERT [dbo].[dt_channel] OFF
/****** Object:  Table [dbo].[dt_users]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[salt] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[nick_name] [nvarchar](100) NULL,
	[avatar] [nvarchar](255) NULL,
	[sex] [nvarchar](20) NULL,
	[birthday] [datetime] NULL,
	[telphone] [nvarchar](50) NULL,
	[mobile] [nvarchar](20) NULL,
	[qq] [nvarchar](30) NULL,
	[address] [nvarchar](255) NULL,
	[safe_question] [nvarchar](255) NULL,
	[safe_answer] [nvarchar](255) NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[exp] [int] NULL,
	[status] [tinyint] NULL,
	[reg_time] [datetime] NULL,
	[reg_ip] [nvarchar](30) NULL,
 CONSTRAINT [PK_DT_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'nick_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'safe_question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'safe_answer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态,0正常,1待验证,2待审核,3锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_ip'
GO
SET IDENTITY_INSERT [dbo].[dt_users] ON
INSERT [dbo].[dt_users] ([id], [group_id], [user_name], [password], [salt], [email], [nick_name], [avatar], [sex], [birthday], [telphone], [mobile], [qq], [address], [safe_question], [safe_answer], [amount], [point], [exp], [status], [reg_time], [reg_ip]) VALUES (1, 1, N'sijinglei', N'97DB58BAEF902BAED856CD33F60CA34B', N'T066HR', N'779730030@qq.com', N'', N'', N'保密', NULL, N'', N'13421365591', N'', N'', N'', N'', CAST(1.00 AS Decimal(9, 2)), 10, 0, 0, CAST(0x0000A38B00F47AFE AS DateTime), N'127.0.0.1')
INSERT [dbo].[dt_users] ([id], [group_id], [user_name], [password], [salt], [email], [nick_name], [avatar], [sex], [birthday], [telphone], [mobile], [qq], [address], [safe_question], [safe_answer], [amount], [point], [exp], [status], [reg_time], [reg_ip]) VALUES (2, 1, N'test123', N'835D6E8A5B504D33', N'2TDRV4', N'779730330@qq.com', N'', N'', N'保密', NULL, N'', N'13456456956', N'', N'', N'', N'', CAST(1.00 AS Decimal(9, 2)), 10, 0, 0, CAST(0x0000A38B00F6F681 AS DateTime), N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[dt_users] OFF
/****** Object:  Table [dbo].[dt_manager_role_value]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[nav_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE_VALUE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'nav_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value'
GO
SET IDENTITY_INSERT [dbo].[dt_manager_role_value] ON
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (118, 2, N'sys_contents', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (119, 2, N'channel_main', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (120, 2, N'channel_news', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (121, 2, N'channel_news_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (122, 2, N'channel_news_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (123, 2, N'channel_news_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (124, 2, N'channel_news_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (125, 2, N'channel_news_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (126, 2, N'channel_news_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (127, 2, N'channel_news_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (128, 2, N'channel_news_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (129, 2, N'channel_news_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (130, 2, N'channel_news_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (131, 2, N'channel_news_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (132, 2, N'channel_news_comment', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (133, 2, N'channel_news_comment', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (134, 2, N'channel_news_comment', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (135, 2, N'channel_news_comment', N'Reply')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (136, 2, N'channel_photo', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (137, 2, N'channel_photo_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (138, 2, N'channel_photo_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (139, 2, N'channel_photo_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (140, 2, N'channel_photo_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (141, 2, N'channel_photo_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (142, 2, N'channel_photo_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (143, 2, N'channel_photo_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (144, 2, N'channel_photo_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (145, 2, N'channel_photo_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (146, 2, N'channel_photo_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (147, 2, N'channel_photo_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (148, 2, N'channel_photo_comment', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (149, 2, N'channel_photo_comment', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (150, 2, N'channel_photo_comment', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (151, 2, N'channel_photo_comment', N'Reply')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (152, 2, N'channel_content', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (153, 2, N'channel_content_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (154, 2, N'channel_content_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (155, 2, N'channel_content_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (156, 2, N'channel_content_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (157, 2, N'channel_content_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (158, 2, N'channel_content_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (159, 2, N'channel_content_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (160, 2, N'channel_content_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (161, 2, N'channel_content_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (162, 2, N'channel_content_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (163, 2, N'channel_content_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (164, 2, N'channel_content_comment', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (165, 2, N'channel_content_comment', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (166, 2, N'channel_content_comment', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (167, 2, N'channel_content_comment', N'Reply')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (168, 2, N'sys_plugins', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (169, 2, N'plugin_link', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (170, 2, N'plugin_link', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (171, 2, N'plugin_link', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (172, 2, N'plugin_link', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (173, 2, N'plugin_link', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (174, 2, N'plugin_link', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (175, 2, N'plugin_feedback', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (176, 2, N'plugin_feedback', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (177, 2, N'plugin_feedback', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (178, 2, N'plugin_feedback', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (179, 2, N'plugin_feedback', N'Reply')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (180, 2, N'sys_design', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (181, 2, N'app_manage', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (182, 2, N'app_templet_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (183, 2, N'app_templet_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (184, 2, N'app_templet_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (185, 2, N'app_templet_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (186, 2, N'app_templet_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (187, 2, N'app_templet_list', N'Build')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (188, 2, N'app_plugin_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (189, 2, N'app_plugin_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (190, 2, N'app_plugin_list', N'Build')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (191, 2, N'app_plugin_list', N'Instal')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (192, 2, N'app_plugin_list', N'Unload')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (193, 2, N'app_builder_html', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (194, 2, N'app_builder_html', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (195, 2, N'app_builder_html', N'Build')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (196, 2, N'app_navigation_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (197, 2, N'app_navigation_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (198, 2, N'app_navigation_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (199, 2, N'app_navigation_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (200, 2, N'app_navigation_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (201, 2, N'sys_controller', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (202, 2, N'site_manage', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (203, 2, N'site_config', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (204, 2, N'site_config', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (205, 2, N'site_config', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (206, 2, N'site_url_rewrite', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (207, 2, N'site_url_rewrite', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (208, 2, N'site_url_rewrite', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (209, 2, N'site_url_rewrite', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (210, 2, N'site_url_rewrite', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (211, 2, N'site_channel_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (212, 2, N'site_channel_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (213, 2, N'site_channel_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (214, 2, N'site_channel_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (215, 2, N'site_channel_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (216, 2, N'site_channel_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (217, 2, N'site_channel_category', N'View')
GO
print 'Processed 100 total records'
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (218, 2, N'site_channel_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (219, 2, N'site_channel_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (220, 2, N'site_channel_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (221, 2, N'site_channel_field', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (222, 2, N'site_channel_field', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (223, 2, N'site_channel_field', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (224, 2, N'site_channel_field', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (225, 2, N'site_channel_field', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (226, 2, N'sys_manager', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (227, 2, N'manager_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (228, 2, N'manager_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (229, 2, N'manager_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (230, 2, N'manager_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (231, 2, N'manager_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (232, 2, N'manager_role', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (233, 2, N'manager_role', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (234, 2, N'manager_role', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (235, 2, N'manager_role', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (236, 2, N'manager_role', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (237, 2, N'manager_log', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (238, 2, N'manager_log', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (239, 2, N'manager_log', N'Delete')
SET IDENTITY_INSERT [dbo].[dt_manager_role_value] OFF
/****** Object:  View [dbo].[view_channel_photo]    Script Date: 02/28/2017 16:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_photo] as SELECT dt_article.*,dt_article_attribute_value.img_h,dt_article_attribute_value.mp3_url,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=3
GO
/****** Object:  View [dbo].[view_channel_news]    Script Date: 02/28/2017 16:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_news] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=1
GO
/****** Object:  View [dbo].[view_channel_goods]    Script Date: 02/28/2017 16:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_goods] as SELECT dt_article.*,dt_article_attribute_value.sub_title,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=2
GO
/****** Object:  View [dbo].[view_channel_down]    Script Date: 02/28/2017 16:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_down] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=4
GO
/****** Object:  View [dbo].[view_channel_content]    Script Date: 02/28/2017 16:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_content] as SELECT dt_article.* FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=5
GO
/****** Object:  Table [dbo].[dt_user_login_log]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_login_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[login_time] [datetime] NULL,
	[login_ip] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_USER_LOGIN_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_ip'
GO
SET IDENTITY_INSERT [dbo].[dt_user_login_log] ON
INSERT [dbo].[dt_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (1, 1, N'sijinglei', N'会员登录', CAST(0x0000A38B00F47B5A AS DateTime), N'127.0.0.1')
INSERT [dbo].[dt_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (2, 2, N'test123', N'会员登录', CAST(0x0000A38B00F6F688 AS DateTime), N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[dt_user_login_log] OFF
/****** Object:  Table [dbo].[dt_user_code]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](20) NULL,
	[str_code] [nvarchar](255) NULL,
	[count] [int] NULL,
	[status] [tinyint] NULL,
	[eff_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_DT_USER_CODE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成码类别 password取回密码,register邀请注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成的字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'str_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未使用1已使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'eff_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'add_time'
GO
/****** Object:  Table [dbo].[dt_channel_field]    Script Date: 02/28/2017 16:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[field_id] [int] NOT NULL,
 CONSTRAINT [PK_DT_CHANNEL_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'field_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field'
GO
SET IDENTITY_INSERT [dbo].[dt_channel_field] ON
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (1, 1, 2)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (2, 1, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (3, 2, 1)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (9, 3, 2)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (10, 3, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (11, 4, 2)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (12, 4, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (23, 2, 2)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (24, 2, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (25, 3, 9)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (26, 3, 10)
SET IDENTITY_INSERT [dbo].[dt_channel_field] OFF
/****** Object:  Default [DF__dt_advert__price__14E61A24]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_advert] ADD  DEFAULT ((0)) FOR [price]
GO
/****** Object:  Default [DF__dt_advert__view___15DA3E5D]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_advert] ADD  DEFAULT ((0)) FOR [view_num]
GO
/****** Object:  Default [DF__dt_advert__view___16CE6296]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_advert] ADD  DEFAULT ((0)) FOR [view_width]
GO
/****** Object:  Default [DF__dt_advert__view___17C286CF]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_advert] ADD  DEFAULT ((0)) FOR [view_height]
GO
/****** Object:  Default [DF__dt_advert__add_t__18B6AB08]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_advert] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_advert_b__aid__1B9317B3]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_advert_banner] ADD  DEFAULT ((0)) FOR [aid]
GO
/****** Object:  Default [DF__dt_advert__sort___1C873BEC]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_advert_banner] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_advert__is_lo__1D7B6025]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_advert_banner] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_advert__add_t__1E6F845E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_advert_banner] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__chann__0697FACD]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__chann__0697FACD]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__categ__078C1F06]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__categ__078C1F06]  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_articl__call___0880433F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__call___0880433F]  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_articl__link___09746778]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__link___09746778]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_articl__img_u__0A688BB1]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__img_u__0A688BB1]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_articl__seo_t__0B5CAFEA]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__seo_t__0B5CAFEA]  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__dt_articl__seo_k__0C50D423]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__seo_k__0C50D423]  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__dt_articl__seo_d__0D44F85C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__seo_d__0D44F85C]  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__dt_articl__zhaiy__0E391C95]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__zhaiy__0E391C95]  DEFAULT ('') FOR [zhaiyao]
GO
/****** Object:  Default [DF__dt_articl__sort___0F2D40CE]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__sort___0F2D40CE]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__click__10216507]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__click__10216507]  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_articl__statu__11158940]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__statu__11158940]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_articl__group__1209AD79]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__group__1209AD79]  DEFAULT ('') FOR [groupids_view]
GO
/****** Object:  Default [DF__dt_articl__vote___12FDD1B2]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__vote___12FDD1B2]  DEFAULT ((0)) FOR [vote_id]
GO
/****** Object:  Default [DF__dt_articl__is_ms__13F1F5EB]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_ms__13F1F5EB]  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_articl__is_to__14E61A24]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_to__14E61A24]  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_articl__is_re__15DA3E5D]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_re__15DA3E5D]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_articl__is_ho__16CE6296]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_ho__16CE6296]  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_articl__is_sl__17C286CF]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_sl__17C286CF]  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_articl__is_sy__18B6AB08]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__is_sy__18B6AB08]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_articl__add_t__19AACF41]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article] ADD  CONSTRAINT [DF__dt_articl__add_t__19AACF41]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__artic__1C873BEC]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__artic__1C873BEC]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__thumb__1D7B6025]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__thumb__1D7B6025]  DEFAULT ('') FOR [thumb_path]
GO
/****** Object:  Default [DF__dt_articl__origi__1E6F845E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__origi__1E6F845E]  DEFAULT ('') FOR [original_path]
GO
/****** Object:  Default [DF__dt_articl__remar__1F63A897]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__remar__1F63A897]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_articl__add_t__2057CCD0]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__add_t__2057CCD0]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__artic__2334397B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__artic__2334397B]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__file___24285DB4]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___24285DB4]  DEFAULT ('') FOR [file_name]
GO
/****** Object:  Default [DF__dt_articl__file___251C81ED]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___251C81ED]  DEFAULT ('') FOR [file_path]
GO
/****** Object:  Default [DF__dt_articl__file___2610A626]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___2610A626]  DEFAULT ((0)) FOR [file_size]
GO
/****** Object:  Default [DF__dt_articl__file___2704CA5F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___2704CA5F]  DEFAULT ('') FOR [file_ext]
GO
/****** Object:  Default [DF__dt_articl__down___27F8EE98]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__down___27F8EE98]  DEFAULT ((0)) FOR [down_num]
GO
/****** Object:  Default [DF__dt_articl__point__28ED12D1]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__point__28ED12D1]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_articl__add_t__29E1370A]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__add_t__29E1370A]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__title__1EF99443]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__title__1EF99443]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_articl__data___1FEDB87C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___1FEDB87C]  DEFAULT ((0)) FOR [data_length]
GO
/****** Object:  Default [DF__dt_articl__data___20E1DCB5]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___20E1DCB5]  DEFAULT ((0)) FOR [data_place]
GO
/****** Object:  Default [DF__dt_articl__item___21D600EE]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__item___21D600EE]  DEFAULT ('') FOR [item_option]
GO
/****** Object:  Default [DF__dt_articl__defau__22CA2527]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__defau__22CA2527]  DEFAULT ('') FOR [default_value]
GO
/****** Object:  Default [DF__dt_articl__is_re__23BE4960]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_re__23BE4960]  DEFAULT ((0)) FOR [is_required]
GO
/****** Object:  Default [DF__dt_articl__is_pa__24B26D99]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_pa__24B26D99]  DEFAULT ((0)) FOR [is_password]
GO
/****** Object:  Default [DF__dt_articl__is_ht__25A691D2]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_ht__25A691D2]  DEFAULT ((0)) FOR [is_html]
GO
/****** Object:  Default [DF__dt_articl__edito__269AB60B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__edito__269AB60B]  DEFAULT ((0)) FOR [editor_type]
GO
/****** Object:  Default [DF__dt_articl__valid__278EDA44]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__278EDA44]  DEFAULT ('') FOR [valid_tip_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__2882FE7D]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__2882FE7D]  DEFAULT ('') FOR [valid_error_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__297722B6]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__297722B6]  DEFAULT ('') FOR [valid_pattern]
GO
/****** Object:  Default [DF__dt_articl__sort___2A6B46EF]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__sort___2A6B46EF]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__is_sy__2B5F6B28]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_sy__2B5F6B28]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_articl__sourc__3BFFE745]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__sourc__3BFFE745]  DEFAULT ('') FOR [source]
GO
/****** Object:  Default [DF__dt_articl__autho__3CF40B7E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__autho__3CF40B7E]  DEFAULT ('') FOR [author]
GO
/****** Object:  Default [DF__dt_articl__goods__3DE82FB7]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__goods__3DE82FB7]  DEFAULT ('') FOR [goods_no]
GO
/****** Object:  Default [DF__dt_articl__stock__3EDC53F0]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__stock__3EDC53F0]  DEFAULT ((0)) FOR [stock_quantity]
GO
/****** Object:  Default [DF__dt_articl__marke__3FD07829]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__marke__3FD07829]  DEFAULT ((0)) FOR [market_price]
GO
/****** Object:  Default [DF__dt_articl__sell___40C49C62]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__sell___40C49C62]  DEFAULT ((0)) FOR [sell_price]
GO
/****** Object:  Default [DF__dt_articl__point__41B8C09B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__point__41B8C09B]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_articl__call___4589517F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__call___4589517F]  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_articl__paren__467D75B8]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__paren__467D75B8]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__class__477199F1]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__class__477199F1]  DEFAULT ((0)) FOR [class_layer]
GO
/****** Object:  Default [DF__dt_articl__sort___4865BE2A]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__sort___4865BE2A]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__link___4959E263]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__link___4959E263]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_articl__img_u__4A4E069C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__img_u__4A4E069C]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_articl__seo_t__4B422AD5]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_t__4B422AD5]  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__dt_articl__seo_k__4C364F0E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_k__4C364F0E]  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__dt_articl__seo_d__4D2A7347]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_d__4D2A7347]  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__dt_articl__chann__5006DFF2]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__chann__5006DFF2]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__artic__50FB042B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__artic__50FB042B]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__paren__51EF2864]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__paren__51EF2864]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__user___52E34C9D]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___52E34C9D]  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_articl__user___53D770D6]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___53D770D6]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_articl__is_lo__54CB950F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_lo__54CB950F]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_articl__add_t__55BFB948]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__add_t__55BFB948]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__is_re__56B3DD81]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_re__56B3DD81]  DEFAULT ((0)) FOR [is_reply]
GO
/****** Object:  Default [DF__dt_channe__categ__59904A2C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__categ__59904A2C]  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channel__name__5A846E65]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channel__name__5A846E65]  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_channe__title__5B78929E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__title__5B78929E]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_channe__is_al__5C6CB6D7]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__is_al__5C6CB6D7]  DEFAULT ((0)) FOR [is_albums]
GO
/****** Object:  Default [DF__dt_channe__is_at__5D60DB10]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__is_at__5D60DB10]  DEFAULT ((0)) FOR [is_attach]
GO
/****** Object:  Default [DF__dt_channe__is_gr__5E54FF49]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__is_gr__5E54FF49]  DEFAULT ((0)) FOR [is_group_price]
GO
/****** Object:  Default [DF__dt_channe__page___5F492382]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__page___5F492382]  DEFAULT ((0)) FOR [page_size]
GO
/****** Object:  Default [DF__dt_channe__sort___603D47BB]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel] ADD  CONSTRAINT [DF__dt_channe__sort___603D47BB]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__title__6319B466]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  CONSTRAINT [DF__dt_channe__title__6319B466]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_channe__build__640DD89F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  CONSTRAINT [DF__dt_channe__build__640DD89F]  DEFAULT ('') FOR [build_path]
GO
/****** Object:  Default [DF__dt_channe__templ__6501FCD8]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  CONSTRAINT [DF__dt_channe__templ__6501FCD8]  DEFAULT ('') FOR [templet_path]
GO
/****** Object:  Default [DF__dt_channe__domai__65F62111]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  CONSTRAINT [DF__dt_channe__domai__65F62111]  DEFAULT ('') FOR [domain]
GO
/****** Object:  Default [DF__dt_channe__is_de__66EA454A]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  CONSTRAINT [DF__dt_channe__is_de__66EA454A]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_channe__sort___67DE6983]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  CONSTRAINT [DF__dt_channe__sort___67DE6983]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_expres__expre__6CA31EA0]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__expre__6CA31EA0]  DEFAULT ('') FOR [express_code]
GO
/****** Object:  Default [DF__dt_expres__expre__6D9742D9]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__expre__6D9742D9]  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_expres__websi__6E8B6712]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__websi__6E8B6712]  DEFAULT ('') FOR [website]
GO
/****** Object:  Default [DF__dt_expres__remar__6F7F8B4B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__remar__6F7F8B4B]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_expres__sort___7073AF84]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__sort___7073AF84]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_expres__is_lo__7167D3BD]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__is_lo__7167D3BD]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_feedba__add_t__405A880E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__add_t__405A880E]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_feedba__reply__414EAC47]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__reply__414EAC47]  DEFAULT ('') FOR [reply_content]
GO
/****** Object:  Default [DF__dt_feedba__is_lo__4242D080]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__is_lo__4242D080]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_link__is_imag__35DCF99B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__is_imag__35DCF99B]  DEFAULT ((0)) FOR [is_image]
GO
/****** Object:  Default [DF__dt_link__sort_id__36D11DD4]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__sort_id__36D11DD4]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_link__is_red__37C5420D]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__is_red__37C5420D]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_link__add_tim__38B96646]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__add_tim__38B96646]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_mail_t__is_sy__74444068]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_mail_template] ADD  CONSTRAINT [DF__dt_mail_t__is_sy__74444068]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_manage__role___7720AD13]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__role___7720AD13]  DEFAULT ((2)) FOR [role_type]
GO
/****** Object:  Default [DF__dt_manage__real___7814D14C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__real___7814D14C]  DEFAULT ('') FOR [real_name]
GO
/****** Object:  Default [DF__dt_manage__telep__7908F585]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__telep__7908F585]  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__dt_manage__email__79FD19BE]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__email__79FD19BE]  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_manage__is_lo__7AF13DF7]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__is_lo__7AF13DF7]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_manage__add_t__7BE56230]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__add_t__7BE56230]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_manage__add_t__451F3D2B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager_log] ADD  CONSTRAINT [DF__dt_manage__add_t__451F3D2B]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_manage__is_sy__019E3B86]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager_role] ADD  CONSTRAINT [DF__dt_manage__is_sy__019E3B86]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_naviga__nav_t__0FB750B3]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__nav_t__0FB750B3]  DEFAULT ('') FOR [nav_type]
GO
/****** Object:  Default [DF__dt_navigat__name__10AB74EC]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_navigat__name__10AB74EC]  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_naviga__title__119F9925]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__title__119F9925]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_naviga__sub_t__1293BD5E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sub_t__1293BD5E]  DEFAULT ('') FOR [sub_title]
GO
/****** Object:  Default [DF__dt_naviga__link___1387E197]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__link___1387E197]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_naviga__sort___147C05D0]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sort___147C05D0]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_naviga__is_lo__15702A09]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_lo__15702A09]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_naviga__remar__16644E42]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__remar__16644E42]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_naviga__paren__1758727B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__paren__1758727B]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_naviga__class__184C96B4]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__class__184C96B4]  DEFAULT ('') FOR [class_list]
GO
/****** Object:  Default [DF__dt_naviga__class__1940BAED]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__class__1940BAED]  DEFAULT ((1)) FOR [class_layer]
GO
/****** Object:  Default [DF__dt_naviga__chann__1A34DF26]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__chann__1A34DF26]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_naviga__actio__1B29035F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__actio__1B29035F]  DEFAULT ('') FOR [action_type]
GO
/****** Object:  Default [DF__dt_naviga__is_sy__1C1D2798]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_sy__1C1D2798]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_order___goods__15A53433]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___goods__15A53433]  DEFAULT ((0)) FOR [goods_price]
GO
/****** Object:  Default [DF__dt_order___real___1699586C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___real___1699586C]  DEFAULT ((0)) FOR [real_price]
GO
/****** Object:  Default [DF__dt_order___quant__178D7CA5]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___quant__178D7CA5]  DEFAULT ((0)) FOR [quantity]
GO
/****** Object:  Default [DF__dt_order___point__1881A0DE]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___point__1881A0DE]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__order__1B5E0D89]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__1B5E0D89]  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__dt_orders__trade__1C5231C2]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__trade__1C5231C2]  DEFAULT ('') FOR [trade_no]
GO
/****** Object:  Default [DF__dt_orders__user___1D4655FB]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___1D4655FB]  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_orders__user___1E3A7A34]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___1E3A7A34]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_orders__payme__1F2E9E6D]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__1F2E9E6D]  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_orders__payme__2022C2A6]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__2022C2A6]  DEFAULT ((0)) FOR [payment_fee]
GO
/****** Object:  Default [DF__dt_orders__payme__2116E6DF]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__2116E6DF]  DEFAULT ((0)) FOR [payment_status]
GO
/****** Object:  Default [DF__dt_orders__expre__220B0B18]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__220B0B18]  DEFAULT ((0)) FOR [express_id]
GO
/****** Object:  Default [DF__dt_orders__expre__22FF2F51]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__22FF2F51]  DEFAULT ('') FOR [express_no]
GO
/****** Object:  Default [DF__dt_orders__expre__23F3538A]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__23F3538A]  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_orders__expre__24E777C3]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__24E777C3]  DEFAULT ((0)) FOR [express_status]
GO
/****** Object:  Default [DF__dt_orders__accep__25DB9BFC]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__accep__25DB9BFC]  DEFAULT ('') FOR [accept_name]
GO
/****** Object:  Default [DF__dt_orders__post___26CFC035]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__post___26CFC035]  DEFAULT ('') FOR [post_code]
GO
/****** Object:  Default [DF__dt_orders__telph__27C3E46E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__telph__27C3E46E]  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_orders__mobil__28B808A7]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__mobil__28B808A7]  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_orders__area__29AC2CE0]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__area__29AC2CE0]  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__dt_orders__addre__2AA05119]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__addre__2AA05119]  DEFAULT ('') FOR [address]
GO
/****** Object:  Default [DF__dt_orders__messa__2B947552]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__messa__2B947552]  DEFAULT ('') FOR [message]
GO
/****** Object:  Default [DF__dt_orders__remar__2C88998B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__remar__2C88998B]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_orders__payab__2D7CBDC4]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payab__2D7CBDC4]  DEFAULT ((0)) FOR [payable_amount]
GO
/****** Object:  Default [DF__dt_orders__real___2E70E1FD]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__real___2E70E1FD]  DEFAULT ((0)) FOR [real_amount]
GO
/****** Object:  Default [DF__dt_orders__order__2F650636]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__2F650636]  DEFAULT ((0)) FOR [order_amount]
GO
/****** Object:  Default [DF__dt_orders__point__30592A6F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__point__30592A6F]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__statu__314D4EA8]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__statu__314D4EA8]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__dt_orders__add_t__324172E1]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__add_t__324172E1]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_paymen__img_u__351DDF8C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__img_u__351DDF8C]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_payment__type__361203C5]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_payment__type__361203C5]  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_paymen__pound__370627FE]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__370627FE]  DEFAULT ((1)) FOR [poundage_type]
GO
/****** Object:  Default [DF__dt_paymen__pound__37FA4C37]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__37FA4C37]  DEFAULT ((0)) FOR [poundage_amount]
GO
/****** Object:  Default [DF__dt_paymen__sort___38EE7070]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__sort___38EE7070]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_paymen__is_lo__39E294A9]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__is_lo__39E294A9]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_sms_te__title__3CBF0154]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__title__3CBF0154]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_sms_te__call___3DB3258D]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__call___3DB3258D]  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_sms_te__conte__3EA749C6]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__conte__3EA749C6]  DEFAULT ('') FOR [content]
GO
/****** Object:  Default [DF__dt_sms_te__is_sy__3F9B6DFF]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__is_sy__3F9B6DFF]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_user_a__order__4277DAAA]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__order__4277DAAA]  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__dt_user_a__payme__436BFEE3]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__payme__436BFEE3]  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_user_a__value__4460231C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__value__4460231C]  DEFAULT ((0)) FOR [value]
GO
/****** Object:  Default [DF__dt_user_a__remar__45544755]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__remar__45544755]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_a__statu__46486B8E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__statu__46486B8E]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_a__add_t__473C8FC7]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__add_t__473C8FC7]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_c__count__4A18FC72]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__count__4A18FC72]  DEFAULT ((0)) FOR [count]
GO
/****** Object:  Default [DF__dt_user_c__statu__4B0D20AB]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__statu__4B0D20AB]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_c__add_t__4C0144E4]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__add_t__4C0144E4]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_g__artic__4EDDB18F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__artic__4EDDB18F]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_user_g__group__4FD1D5C8]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__group__4FD1D5C8]  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__dt_user_g__price__50C5FA01]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__price__50C5FA01]  DEFAULT ((0)) FOR [price]
GO
/****** Object:  Default [DF__dt_user_g__title__53A266AC]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__title__53A266AC]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_user_g__grade__54968AE5]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__grade__54968AE5]  DEFAULT ((0)) FOR [grade]
GO
/****** Object:  Default [DF__dt_user_g__upgra__558AAF1E]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__upgra__558AAF1E]  DEFAULT ((0)) FOR [upgrade_exp]
GO
/****** Object:  Default [DF__dt_user_g__amoun__567ED357]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__amoun__567ED357]  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_user_g__point__5772F790]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__point__5772F790]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_user_g__is_de__58671BC9]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_de__58671BC9]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_user_g__is_up__595B4002]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_up__595B4002]  DEFAULT ((1)) FOR [is_upgrade]
GO
/****** Object:  Default [DF__dt_user_g__is_lo__5A4F643B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_lo__5A4F643B]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_user_l__user___5D2BD0E6]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__user___5D2BD0E6]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_user_l__remar__5E1FF51F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__remar__5E1FF51F]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_l__login__5F141958]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__5F141958]  DEFAULT (getdate()) FOR [login_time]
GO
/****** Object:  Default [DF__dt_user_l__login__60083D91]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__60083D91]  DEFAULT ('') FOR [login_ip]
GO
/****** Object:  Default [DF__dt_user_me__type__62E4AA3C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_me__type__62E4AA3C]  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_user_m__is_re__63D8CE75]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_m__is_re__63D8CE75]  DEFAULT ((0)) FOR [is_read]
GO
/****** Object:  Default [DF__dt_user_m__post___64CCF2AE]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_m__post___64CCF2AE]  DEFAULT (getdate()) FOR [post_time]
GO
/****** Object:  Default [DF__dt_user_o__oauth__67A95F59]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__oauth__67A95F59]  DEFAULT ('0') FOR [oauth_name]
GO
/****** Object:  Default [DF__dt_user_o__add_t__689D8392]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__add_t__689D8392]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_o__title__6B79F03D]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__title__6B79F03D]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_user_o__img_u__6C6E1476]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__img_u__6C6E1476]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_user_o__remar__6D6238AF]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__remar__6D6238AF]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_o__sort___6E565CE8]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__sort___6E565CE8]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_user_o__is_lo__6F4A8121]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__is_lo__6F4A8121]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_user_o__api_p__703EA55A]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__api_p__703EA55A]  DEFAULT ('') FOR [api_path]
GO
/****** Object:  Default [DF__dt_user_p__add_t__731B1205]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_point_log] ADD  CONSTRAINT [DF__dt_user_p__add_t__731B1205]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_users__group___75F77EB0]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__group___75F77EB0]  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__dt_users__email__76EBA2E9]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__email__76EBA2E9]  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_users__nick_n__77DFC722]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__nick_n__77DFC722]  DEFAULT ('') FOR [nick_name]
GO
/****** Object:  Default [DF__dt_users__avatar__78D3EB5B]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__avatar__78D3EB5B]  DEFAULT ('') FOR [avatar]
GO
/****** Object:  Default [DF__dt_users__sex__79C80F94]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__sex__79C80F94]  DEFAULT ('保密') FOR [sex]
GO
/****** Object:  Default [DF__dt_users__telpho__7ABC33CD]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__telpho__7ABC33CD]  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_users__mobile__7BB05806]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__mobile__7BB05806]  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_users__qq__7CA47C3F]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__qq__7CA47C3F]  DEFAULT ('') FOR [qq]
GO
/****** Object:  Default [DF__dt_users__safe_q__7D98A078]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__safe_q__7D98A078]  DEFAULT ('') FOR [safe_question]
GO
/****** Object:  Default [DF__dt_users__safe_a__7E8CC4B1]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__safe_a__7E8CC4B1]  DEFAULT ('') FOR [safe_answer]
GO
/****** Object:  Default [DF__dt_users__amount__7F80E8EA]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__amount__7F80E8EA]  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_users__point__00750D23]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__point__00750D23]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_users__exp__0169315C]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__exp__0169315C]  DEFAULT ((0)) FOR [exp]
GO
/****** Object:  Default [DF__dt_users__status__025D5595]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__status__025D5595]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_users__reg_ti__035179CE]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__reg_ti__035179CE]  DEFAULT (getdate()) FOR [reg_time]
GO
/****** Object:  ForeignKey [FK_DT_ARTIC_REFERENCE_DT_ARTIC]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_article_attribute_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC] FOREIGN KEY([article_id])
REFERENCES [dbo].[dt_article] ([id])
GO
ALTER TABLE [dbo].[dt_article_attribute_value] CHECK CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CATEGORY]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CATEGORY] FOREIGN KEY([category_id])
REFERENCES [dbo].[dt_channel_category] ([id])
GO
ALTER TABLE [dbo].[dt_channel] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CATEGORY]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD] FOREIGN KEY([channel_id])
REFERENCES [dbo].[dt_channel] ([id])
GO
ALTER TABLE [dbo].[dt_channel_field] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_manager_role_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager_role_value] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG]
GO
/****** Object:  ForeignKey [FK_DT_ORDER_REFERENCE_DT_ORDER]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_order_goods]  WITH CHECK ADD  CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER] FOREIGN KEY([order_id])
REFERENCES [dbo].[dt_orders] ([id])
GO
ALTER TABLE [dbo].[dt_order_goods] CHECK CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_CODE]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_code]  WITH CHECK ADD  CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_CODE] FOREIGN KEY([user_id])
REFERENCES [dbo].[dt_users] ([id])
GO
ALTER TABLE [dbo].[dt_user_code] CHECK CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_CODE]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_LOG]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_user_login_log]  WITH CHECK ADD  CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_LOG] FOREIGN KEY([user_id])
REFERENCES [dbo].[dt_users] ([id])
GO
ALTER TABLE [dbo].[dt_user_login_log] CHECK CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_LOG]
GO
/****** Object:  ForeignKey [FK_DT_USERS_REFERENCE_DT_USER_]    Script Date: 02/28/2017 16:52:46 ******/
ALTER TABLE [dbo].[dt_users]  WITH CHECK ADD  CONSTRAINT [FK_DT_USERS_REFERENCE_DT_USER_] FOREIGN KEY([group_id])
REFERENCES [dbo].[dt_user_groups] ([id])
GO
ALTER TABLE [dbo].[dt_users] CHECK CONSTRAINT [FK_DT_USERS_REFERENCE_DT_USER_]
GO

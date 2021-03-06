USE [HeThongBaoCao]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Msnv] [varchar](20) NOT NULL,
	[HoTen] [varchar](50) NULL,
	[MaBoPhan] [int] NULL,
	[UserName] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[ChucVu] [int] NULL,
	[QuyenTruyCap] [int] NULL,
	[MaCty] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BaoCaoSXKD]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaoCaoSXKD](
	[Id] [decimal](18, 0) NULL,
	[Ngay] [varchar](10) NULL,
	[TieuDe] [varchar](500) NULL,
	[FileKem] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BCDanhmuc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BCDanhmuc](
	[Id] [int] NOT NULL,
	[Idphong] [int] NULL,
	[Tenbaocao] [varchar](500) NULL,
	[tenmaytinh] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BCNoidung]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BCNoidung](
	[Id] [int] NOT NULL,
	[Iddanhmuc] [int] NULL,
	[Ngay] [char](2) NULL,
	[Thang] [char](2) NULL,
	[Nam] [char](4) NULL,
	[Tieude] [varchar](500) NULL,
	[Tomluoc] [varchar](2000) NULL,
	[Filenoidung] [varchar](500) NULL,
	[hinhtomluoc] [varchar](250) NULL,
	[link] [varchar](500) NULL,
	[hienthi] [bit] NULL CONSTRAINT [DF_BCNoidung_hienthi]  DEFAULT ((1)),
	[uutien] [bit] NULL CONSTRAINT [DF_BCNoidung_uutien]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BiendongNhapXuat]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BiendongNhapXuat](
	[Mahang] [int] NOT NULL,
	[Soluong] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhChonBaiHat]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BinhChonBaiHat](
	[MaBaiHat] [int] NULL,
	[TenBaihat] [varchar](200) NULL,
	[TacGia] [varchar](50) NULL,
	[CaSyTheHien] [varchar](50) NULL,
	[FileAmThanh] [varchar](50) NULL,
	[SoLanBinhChon] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BoPhanBaoCao]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BoPhanBaoCao](
	[MaBoPhan] [int] NULL,
	[TenBoPhan] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cacthutuc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cacthutuc](
	[thutucID] [int] NOT NULL,
	[tenthutuc] [varchar](1000) NULL,
	[MaDA] [varchar](30) NOT NULL,
	[ngaybd] [varchar](20) NULL,
	[ngaykt] [varchar](20) NULL,
	[nguoitheodoi] [varchar](10) NULL,
	[vbkemtheo] [varchar](1000) NULL,
	[tomtat] [varchar](2000) NULL,
	[Tinhtrang] [varchar](250) NULL,
	[ngaynhap] [varchar](20) NULL,
	[id] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapDoKhoa]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapDoKhoa](
	[Id] [int] NULL,
	[MaKhoa] [int] NULL,
	[NamKhoa] [varchar](4) NULL,
	[TenCapDo] [varchar](50) NULL,
	[NgayBatDau] [varchar](10) NULL,
	[NgayKetThuc] [varchar](10) NULL,
	[DienGiai] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [int] NULL,
	[TenChucVu] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChucVuHiepHoi]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVuHiepHoi](
	[MaCv] [int] NOT NULL,
	[TenChucVu] [char](200) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChucVuTeam]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVuTeam](
	[ChucVuID] [int] NULL,
	[TenChucVu] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Congtrinh]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Congtrinh](
	[MaCT] [int] NOT NULL,
	[TenCT] [varchar](500) NULL,
	[TenHM] [varchar](250) NULL,
	[BanQLDA] [varchar](250) NULL,
	[ngaylaphs] [varchar](50) NULL,
	[ngaytrungthau] [varchar](50) NULL,
	[CtyGiamsat] [varchar](250) NULL,
	[nguoigs] [varchar](250) NULL,
	[duyetdutoan] [varchar](250) NULL,
	[ngayduyetdt] [varchar](50) NULL,
	[dvduyet] [varchar](150) NULL,
	[giatriduyet] [decimal](18, 0) NULL,
	[tochuctk] [varchar](150) NULL,
	[nguoitk] [varchar](250) NULL,
	[dvthuhuong] [varchar](250) NULL,
	[dvthicong] [varchar](250) NULL,
	[ksgiamsat] [varchar](10) NULL,
	[ktsgiamsat] [varchar](10) NULL,
	[hdthicong] [varchar](50) NULL,
	[ngaykyhd] [varchar](50) NULL,
	[giatrihd] [decimal](18, 0) NULL,
	[luykethicong] [decimal](18, 0) NULL,
	[ngaylk] [varchar](50) NULL,
	[lenhkhoicong] [varchar](50) NULL,
	[ngayky] [varchar](50) NULL,
	[doixl] [varchar](250) NULL,
	[hdgiaoviec] [varchar](50) NULL,
	[ngaygiaoviec] [varchar](50) NULL,
	[giatrigiaoviec] [decimal](18, 0) NULL,
	[tytrong] [varchar](50) NULL,
	[ngaylktt] [varchar](50) NULL,
	[luyke] [decimal](18, 0) NULL,
	[ghichu] [varchar](1000) NULL,
	[ntdot1] [varchar](50) NULL,
	[ntdot2] [varchar](50) NULL,
	[tongnt] [varchar](50) NULL,
	[phongID] [int] NULL,
	[loaiID] [int] NULL,
	[quanID] [int] NULL,
	[trangthai] [int] NULL,
	[nguoinhap] [varchar](10) NULL,
	[ngaynhap] [varchar](50) NULL,
	[ngaysua] [varchar](50) NULL,
	[thanhly] [varchar](50) NULL,
	[giatriqt] [varchar](50) NULL,
	[giatriqtduyet] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongTyLienDoanh]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongTyLienDoanh](
	[MaCty] [varchar](5) NOT NULL,
	[TenCongTy] [varchar](200) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongTyThanhVien]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongTyThanhVien](
	[MaCty] [varchar](10) NULL,
	[TenCongTy] [varchar](500) NULL,
	[DiaChi] [varchar](500) NULL,
	[DienThoai] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[Website] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Congvan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Congvan](
	[socv] [varchar](50) NOT NULL,
	[ngay] [varchar](50) NOT NULL,
	[SoDangKy] [int] NULL,
	[socvdi] [varchar](250) NULL,
	[ngaydi] [varchar](50) NULL,
	[loai] [bit] NOT NULL,
	[trichyeu] [text] NULL,
	[noidi] [varchar](1000) NULL,
	[noiden] [varchar](1000) NULL,
	[noiluu] [varchar](1000) NULL,
	[nguoiky] [varchar](500) NULL,
	[chucvu] [varchar](250) NULL,
	[Hinhanh] [varchar](50) NULL,
	[BatDongSan] [varchar](1) NULL,
	[ChiDao] [varchar](1000) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Congvandi]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Congvandi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[socv] [varchar](250) NOT NULL,
	[ngay] [varchar](20) NOT NULL,
	[Loaicv] [int] NULL,
	[loai] [bit] NOT NULL,
	[trichyeu] [text] NULL,
	[noidi] [varchar](1000) NULL,
	[noiden] [varchar](1000) NULL,
	[noiluu] [varchar](1000) NULL,
	[nguoiky] [varchar](250) NULL,
	[chucvu] [varchar](250) NULL,
	[FileKem] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec_BaoCao]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec_BaoCao](
	[IdCongViec] [numeric](18, 0) NULL,
	[IdDotBaoCao] [int] NULL,
	[Msnv] [varchar](50) NULL,
	[TieuDe] [varchar](500) NULL,
	[NoiDung] [text] NULL,
	[FileKem] [varchar](50) NULL,
	[NgayBaoCao] [varchar](10) NULL,
	[PhanHoi] [varchar](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec_BoPhan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec_BoPhan](
	[Id] [real] NOT NULL,
	[Socv] [varchar](50) NOT NULL,
	[NgayNhap] [varchar](10) NOT NULL,
	[MaBoPhan] [int] NOT NULL,
	[LoaiCongvan] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec_ChiDao]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec_ChiDao](
	[Id] [real] NOT NULL,
	[IdCD] [real] NOT NULL,
	[SoCV] [varchar](50) NULL,
	[NgayNhap] [varchar](10) NULL,
	[Msnv] [varchar](20) NOT NULL,
	[MaGiaiDoan] [int] NOT NULL,
	[NguoiChiDao] [varchar](100) NULL,
	[YKienChiDao] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec_CongVan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec_CongVan](
	[Id] [real] NOT NULL,
	[Socv] [varchar](50) NULL,
	[NgayNhap] [varchar](10) NULL,
	[Msnv] [varchar](20) NULL,
	[LoaiCongVan] [int] NULL,
	[CoQuanGoi] [varchar](200) NULL,
	[TieuDe] [text] NULL,
	[NgayBatDau] [varchar](10) NULL,
	[NgayHetHan] [varchar](10) NULL,
	[ChiDao] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec_GiamDoc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec_GiamDoc](
	[Id] [real] NOT NULL,
	[Socv] [varchar](50) NOT NULL,
	[NgayNhap] [varchar](10) NOT NULL,
	[Msnv] [varchar](20) NOT NULL,
	[PhanCong] [varchar](1) NOT NULL,
	[IdPhong] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec_Giao]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec_Giao](
	[IdCongViec] [numeric](18, 0) NOT NULL,
	[Msnv] [varchar](50) NULL,
	[SoCongVan] [varchar](50) NULL,
	[TieuDe] [varchar](500) NULL,
	[NoiDung] [text] NULL,
	[FileKem] [varchar](50) NULL,
	[NgayGiao] [varchar](10) NULL,
	[XemChua] [varchar](1) NULL,
	[GiaiQuyetChua] [varchar](1) NULL,
	[TinhChat] [int] NULL,
	[BaoCaoMoi] [int] NULL,
 CONSTRAINT [PK_CongViec_Giao] PRIMARY KEY CLUSTERED 
(
	[IdCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec_GopY]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec_GopY](
	[IdCongViec] [int] NULL,
	[IdDotBaoCao] [int] NULL,
	[IdGopY] [int] NULL,
	[TieuDe] [varchar](500) NULL,
	[NoiDung] [text] NULL,
	[FileKem] [varchar](50) NULL,
	[NgayGopY] [varchar](50) NULL,
	[Msnv] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec_QuaTrinh]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec_QuaTrinh](
	[Id] [real] NOT NULL,
	[SoCV] [varchar](50) NULL,
	[NgayNhap] [char](10) NULL,
	[MaGiaiDoan] [int] NULL,
	[Msnv] [varchar](20) NULL,
	[CongViec] [text] NULL,
	[FileKem] [varchar](40) NULL,
	[NguoiCapNhat] [varchar](50) NULL,
	[PhongBan] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CongViec_TiepNhan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongViec_TiepNhan](
	[IdCongViec] [numeric](18, 0) NULL,
	[Msnv] [varchar](50) NULL,
	[MaSoChuyen] [varchar](50) NULL,
	[TrinhTrangChuyen] [varchar](500) NULL,
	[NgayGiao] [varchar](10) NULL,
	[ThongTinKemTheo] [varchar](500) NULL,
	[MaNguoiChuyen] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTThaotac]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTThaotac](
	[Id] [decimal](18, 0) NOT NULL,
	[MaCT] [int] NULL,
	[Ngay] [varchar](10) NULL,
	[DienGiai] [varchar](500) NULL,
	[Gio] [varchar](20) NULL,
	[nguoinhap] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DangKyLichHop]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DangKyLichHop](
	[Id] [decimal](18, 0) NOT NULL,
	[PhongBan] [int] NULL,
	[NguoiDangKy] [varchar](100) NULL,
	[NgayDangKy] [varchar](50) NULL,
	[GioDangKy] [varchar](50) NULL,
	[NoiHop] [varchar](500) NULL,
	[NoiDung] [text] NULL,
	[YeuCau] [text] NULL,
	[XongChua] [varchar](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DangKyLichHop_DS]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DangKyLichHop_DS](
	[Id] [decimal](18, 0) NULL,
	[Msnv] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhHieu]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhHieu](
	[Soqd] [varchar](40) NOT NULL,
	[MaDanhHieu] [int] NOT NULL,
	[Noiqd] [varchar](150) NULL,
	[Noinhanqd] [varchar](150) NULL,
	[Tieude] [varchar](500) NOT NULL,
	[Ngayky] [varchar](20) NOT NULL,
	[TrichDan] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhThiepDoanhNghiep]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhThiepDoanhNghiep](
	[Id] [int] NOT NULL,
	[Msnv] [varchar](20) NOT NULL,
	[HoLot] [varchar](100) NOT NULL,
	[Ten] [varchar](100) NOT NULL,
	[LinhVuc] [int] NULL,
	[CongTy] [varchar](5000) NULL,
	[CongTyAnh] [varchar](5000) NULL,
	[ThuongHieu] [varchar](5000) NULL,
	[DiaChiCongTy] [varchar](5000) NULL,
	[DienThoaiCongTy] [varchar](500) NULL,
	[WebSite] [varchar](200) NULL,
	[EmailCongTy] [varchar](200) NULL,
	[BoPhan] [varchar](500) NULL,
	[EmailCaNhan] [varchar](100) NULL,
	[DienThoaiCaNhan] [varchar](100) NULL,
	[QuocTich] [int] NULL,
	[ChucDanh] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DiCongTac]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiCongTac](
	[MsNV] [varchar](10) NOT NULL,
	[Ngay] [int] NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[Landi] [int] NOT NULL,
	[Giodi] [varchar](11) NULL,
	[Giove] [varchar](11) NULL,
	[Lydo] [varchar](1000) NULL,
	[khonglydo] [varchar](50) NULL,
	[ChapNhan] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoiThanhToan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoiThanhToan](
	[DotTT] [int] NOT NULL,
	[ngay] [varchar](20) NULL,
	[tytrong] [varchar](20) NULL,
	[sotien] [decimal](18, 0) NULL,
	[nguoidenghi] [varchar](10) NULL,
	[MaHM] [int] NOT NULL,
	[MaDA] [varchar](30) NOT NULL,
	[ketoan] [varchar](10) NULL,
	[BGD] [varchar](10) NULL,
	[tiendenghi] [decimal](18, 0) NULL,
	[luykeTT] [decimal](18, 0) NULL,
	[giatriHT] [decimal](18, 0) NULL,
	[conphaiTT] [decimal](18, 0) NULL,
	[BBNghiemThu] [varchar](1000) NULL,
	[nguoilapphieu] [varchar](50) NULL,
	[ngaylap] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoiThanhtoanCT]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoiThanhtoanCT](
	[dotTT] [int] NOT NULL,
	[ngay] [varchar](50) NULL,
	[tytrong] [varchar](50) NULL,
	[sotien] [decimal](18, 0) NULL,
	[nguoidenghi] [varchar](10) NULL,
	[MaCT] [int] NOT NULL,
	[bgd] [varchar](10) NULL,
	[ketoan] [varchar](10) NULL,
	[tiendenghi] [decimal](18, 0) NULL,
	[luykeTT] [decimal](18, 0) NULL,
	[giatriHT] [decimal](18, 0) NULL,
	[conphaiTT] [decimal](18, 0) NULL,
	[nguoilapphieu] [varchar](50) NULL,
	[ngaylap] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DongGopYTuong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DongGopYTuong](
	[Id] [numeric](18, 0) NULL,
	[Msnv] [varchar](50) NULL,
	[Ngay] [varchar](50) NULL,
	[Gio] [varchar](50) NULL,
	[TieuDe] [varchar](500) NULL,
	[Email] [varchar](50) NULL,
	[NoiDung] [text] NULL,
	[FileKem] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dtproperties]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dtproperties](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[objectid] [int] NULL,
	[property] [varchar](64) NOT NULL,
	[value] [varchar](255) NULL,
	[uvalue] [nvarchar](255) NULL,
	[lvalue] [image] NULL,
	[version] [int] NOT NULL,
 CONSTRAINT [pk_dtproperties] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[property] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DuAn]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DuAn](
	[MaDA] [varchar](30) NOT NULL,
	[TenDA] [varchar](250) NULL,
	[chudautu] [varchar](250) NULL,
	[ttchitiet] [varchar](2000) NULL,
	[duyetDAso] [varchar](50) NULL,
	[ngayduyetDA] [varchar](20) NULL,
	[donviduyet] [varchar](250) NULL,
	[QuanID] [int] NOT NULL,
	[trangthai] [int] NULL,
	[duyetQHso] [varchar](50) NULL,
	[ngayduyetQH] [varchar](20) NULL,
	[donviduyetQH] [varchar](250) NULL,
	[ngayduyetGD] [varchar](20) NULL,
	[donviduyetGD] [varchar](250) NULL,
	[duyetGDso] [varchar](50) NULL,
	[ngayduyetDT] [varchar](20) NULL,
	[donviduyetDT] [varchar](250) NULL,
	[duyetDTso] [varchar](50) NULL,
	[TongDuToan] [decimal](18, 0) NULL,
	[LoaiID] [int] NULL,
	[nguoinhap] [varchar](10) NULL,
	[ngaynhap] [varchar](20) NULL,
	[ngaysua] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DuAnTDH]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DuAnTDH](
	[MaDuAn] [int] NULL,
	[TenDuAn] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id] [real] NOT NULL,
	[IdLoai] [int] NOT NULL,
	[AnhNho] [varchar](100) NOT NULL,
	[AnhLon] [varchar](100) NOT NULL,
	[GioiThieuE] [varchar](500) NULL,
	[GioiThieuV] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiaCaHangHoa]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaCaHangHoa](
	[Ngay] [varchar](2) NOT NULL,
	[Thang] [varchar](2) NOT NULL,
	[Nam] [varchar](4) NOT NULL,
	[LoaiHang] [int] NOT NULL,
	[GiaCa] [varchar](50) NULL,
	[TienTe] [varchar](50) NULL,
	[DonViTinh] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GioLam]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GioLam](
	[MsNV] [varchar](10) NOT NULL,
	[Ngay] [int] NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[Giovaosang] [varchar](12) NULL,
	[Giorasang] [varchar](12) NULL,
	[Giovaochieu] [varchar](12) NULL,
	[Giorachieu] [varchar](12) NULL,
	[Nghiphep] [bit] NOT NULL,
	[PhanCongTac] [bit] NOT NULL,
	[NghiSang] [bit] NOT NULL,
	[NghiChieu] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GioLamthem]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GioLamthem](
	[Msnv] [varchar](10) NOT NULL,
	[Ngay] [int] NOT NULL,
	[thang] [int] NOT NULL,
	[nam] [int] NOT NULL,
	[IdLan] [int] NOT NULL,
	[giovao] [varchar](5) NULL,
	[giora] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangHoa](
	[Mahang] [int] NOT NULL,
	[TenHang] [char](100) NOT NULL,
	[Donvi] [char](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangMuc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangMuc](
	[MaHM] [int] NOT NULL,
	[MaDA] [varchar](30) NOT NULL,
	[tenHM] [varchar](500) NULL,
	[ctygiamsat] [varchar](250) NULL,
	[nguoigs] [varchar](250) NULL,
	[duyetdutoan] [varchar](50) NULL,
	[ngayduyetDT] [varchar](20) NULL,
	[dvduyet] [varchar](250) NULL,
	[giatriduyet] [decimal](18, 0) NULL,
	[tochucTK] [varchar](250) NULL,
	[nguoiTK] [varchar](250) NULL,
	[dvthuhuong] [varchar](250) NULL,
	[dvthicong] [varchar](250) NULL,
	[KSgiamsat] [varchar](10) NULL,
	[KTSgiamsat] [varchar](10) NULL,
	[DoiXL] [varchar](250) NULL,
	[HDgiaoviec] [varchar](20) NULL,
	[ngaygiaoviec] [varchar](20) NULL,
	[giatrigiaoviec] [decimal](18, 0) NULL,
	[tytrong] [varchar](20) NULL,
	[ngaylktt] [varchar](20) NULL,
	[luyke] [decimal](18, 0) NULL,
	[lenhkhoicong] [varchar](50) NULL,
	[ngayky] [varchar](20) NULL,
	[Ghichu] [varchar](1000) NULL,
	[NTDot1] [varchar](50) NULL,
	[NTDot2] [varchar](50) NULL,
	[tongNT] [varchar](50) NULL,
	[phongID] [int] NULL,
	[DoiXD] [varchar](250) NULL,
	[nguoinhap] [varchar](10) NULL,
	[ngaynhap] [varchar](50) NULL,
	[ngaysua] [varchar](50) NULL,
	[thanhly] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HesoLuong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HesoLuong](
	[Mahs] [int] NOT NULL,
	[Heso] [varchar](20) NOT NULL,
	[Diengiai] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HMThaotac]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HMThaotac](
	[Id] [decimal](18, 0) NOT NULL,
	[MaHM] [int] NULL,
	[MaDA] [varchar](30) NULL,
	[MaCT] [int] NULL,
	[DienGiai] [varchar](500) NULL,
	[Ngay] [varchar](10) NULL,
	[Gio] [varchar](20) NULL,
	[nguoinhap] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hocvi]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hocvi](
	[Mahv] [int] NOT NULL,
	[Tenhocvi] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HopDong_DoanhThu]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HopDong_DoanhThu](
	[Ngay] [varchar](2) NULL,
	[Thang] [varchar](2) NULL,
	[Nam] [varchar](4) NULL,
	[SoHopDong] [decimal](18, 0) NULL,
	[DoanhThu] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HopDong_PhiMoiGioi]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HopDong_PhiMoiGioi](
	[Id] [money] NULL,
	[TenLo] [varchar](50) NULL,
	[DienTich] [float] NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[PhiMoiGioi] [decimal](18, 0) NULL,
	[ThongTin] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Images]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Images](
	[IdImage] [int] NOT NULL,
	[IdImageType] [int] NOT NULL,
	[SmallImage] [varchar](50) NOT NULL,
	[LargeImage] [varchar](50) NOT NULL,
	[Detail] [varchar](1000) NULL,
	[ImageDate] [varchar](50) NOT NULL,
	[width] [decimal](18, 0) NULL,
	[height] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImageType]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImageType](
	[IdImageType] [int] NOT NULL,
	[TextImageType] [varchar](500) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KetQuaBinhChon]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KetQuaBinhChon](
	[Id] [int] NULL,
	[MaBaiHat] [int] NULL,
	[HoTen] [varchar](50) NULL,
	[ThuTu] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Khachhang](
	[MaKhach] [varchar](10) NOT NULL,
	[TenKhach] [varchar](100) NOT NULL,
	[DiaChi] [varchar](500) NOT NULL,
	[CMND] [varchar](30) NULL,
	[DienThoai] [varchar](100) NULL,
	[SoHopDong] [varchar](50) NOT NULL,
	[NgayKy] [datetime] NOT NULL,
	[ThongtinKhac] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHangCanHo]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangCanHo](
	[Id] [int] NULL,
	[MaDuAn] [int] NULL,
	[SoCanHo] [decimal](18, 0) NULL,
	[SoLuongDangKy] [decimal](18, 0) NULL,
	[SoCanHoBan] [decimal](18, 0) NULL,
	[SoCanConLai] [decimal](18, 0) NULL,
	[ThongTin] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kiemnhiem]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kiemnhiem](
	[Id] [int] NOT NULL,
	[HoTen] [varchar](100) NOT NULL,
	[Congty] [varchar](500) NULL,
	[Chucvu] [varchar](200) NULL,
	[Thongtinkiemnhiem] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KyHopDongThanhToan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KyHopDongThanhToan](
	[Id_Thu] [decimal](18, 0) NOT NULL,
	[MaLoDat] [int] NOT NULL,
	[TenThoiKy] [varchar](10) NOT NULL,
	[MaKhach] [varchar](10) NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
	[NgayDong] [datetime] NOT NULL,
	[SoNgayTre] [int] NULL,
	[PhatKhong] [varchar](50) NULL,
	[MucPhat] [varchar](20) NULL,
	[TienPhat] [decimal](18, 0) NULL,
	[GhiChu] [varchar](200) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichHopBanNganh]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichHopBanNganh](
	[Id] [decimal](18, 0) NOT NULL,
	[PhongBan] [int] NULL,
	[NgayDangKy] [varchar](50) NULL,
	[GioDangKy] [varchar](50) NULL,
	[NoiHop] [varchar](500) NULL,
	[NoiDung] [text] NULL,
	[YeuCau] [text] NULL,
	[XongChua] [varchar](1) NULL,
	[NoiMoi] [varchar](300) NULL,
	[MsnvNhap] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichHopBanNganh_DS]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichHopBanNganh_DS](
	[Id] [int] NULL,
	[Msnv] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichsuKhachHang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichsuKhachHang](
	[MaLoDat] [int] NOT NULL,
	[Id_Khach] [int] NOT NULL,
	[TenKhach] [varchar](50) NOT NULL,
	[DiaChi] [varchar](250) NOT NULL,
	[CMND] [varchar](20) NULL,
	[DienThoai] [varchar](15) NULL,
	[SoHopDong] [varchar](50) NOT NULL,
	[NgayKy] [datetime] NOT NULL,
	[NgayChuyen] [datetime] NOT NULL,
	[SoTienDong] [decimal](18, 0) NOT NULL,
	[DotDong] [int] NOT NULL,
	[SoTienPhat] [decimal](18, 0) NOT NULL,
	[DotThanhToan] [int] NOT NULL,
	[ThongTinKhac] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichsuThuTien]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichsuThuTien](
	[MaLoDat] [int] NOT NULL,
	[DotThu] [int] NOT NULL,
	[IdKhach] [int] NOT NULL,
	[NgayDong] [datetime] NOT NULL,
	[SoTienDong] [decimal](18, 0) NOT NULL,
	[MucPhat] [varchar](20) NULL,
	[TienPhat] [decimal](18, 0) NOT NULL,
	[GhiChu] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lichtruc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lichtruc](
	[Msnv] [varchar](10) NOT NULL,
	[ngayvao] [int] NOT NULL,
	[thangvao] [int] NOT NULL,
	[namvao] [int] NOT NULL,
	[giovao] [varchar](10) NOT NULL,
	[ngayra] [int] NULL,
	[thangra] [int] NULL,
	[namra] [int] NULL,
	[giora] [varchar](5) NULL,
	[hiendien] [bit] NOT NULL CONSTRAINT [DF_Lichtruc_hiendien]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichTrucBanGiamDoc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichTrucBanGiamDoc](
	[Msnv] [varchar](50) NULL,
	[Ngay] [varchar](2) NULL,
	[Thang] [varchar](2) NULL,
	[Nam] [varchar](4) NULL,
	[Buoi] [int] NULL,
	[DiaDiem] [int] NULL,
	[GioVao] [varchar](10) NULL,
	[GioRa] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinhVuc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LinhVuc](
	[LinhVuc] [int] NOT NULL,
	[DienGiai] [varchar](350) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiBaoCao]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiBaoCao](
	[Id] [int] NULL,
	[TenBaoCao] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiCongVan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiCongVan](
	[MaLoai] [int] NOT NULL,
	[DienGiai] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiDanhHieu]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiDanhHieu](
	[MaDanhHieu] [int] NOT NULL,
	[TenDanhHieu] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiDuAn]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiDuAn](
	[LoaiID] [int] NOT NULL,
	[TenLoai] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiGallery]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiGallery](
	[IdLoai] [int] NOT NULL,
	[TenLoaiE] [varchar](200) NULL,
	[TenLoaiV] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiHD]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiHD](
	[MaloaiHD] [int] NOT NULL,
	[Diengiai] [varchar](500) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiKT]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiKT](
	[LoaiKT] [int] NOT NULL,
	[Diengiai] [varchar](300) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[LoaiId] [int] NOT NULL,
	[TenLoai] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSucKhoe]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSucKhoe](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiTin]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiTin](
	[LoaiID] [int] NOT NULL,
	[TenLoai] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoDat]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoDat](
	[MaLoDat] [int] NOT NULL,
	[MaKhach] [varchar](10) NULL,
	[MaKhu] [varchar](30) NOT NULL,
	[MaCty] [varchar](5) NULL,
	[TenLoDat] [varchar](50) NOT NULL,
	[DienTich] [varchar](50) NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
	[GiamGia] [decimal](18, 0) NULL,
	[ThanhTien] [decimal](18, 0) NOT NULL,
	[Solandong] [int] NULL,
	[BanChua] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoDatTienPhat]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoDatTienPhat](
	[MaLoDat] [int] NOT NULL,
	[TienPhat] [decimal](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LuongChucDanh]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LuongChucDanh](
	[tenchucdanh] [varchar](300) NULL,
	[maso] [varchar](20) NOT NULL,
 CONSTRAINT [PK_LuongChucDanh] PRIMARY KEY CLUSTERED 
(
	[maso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LuongHang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LuongHang](
	[Ngay] [varchar](2) NOT NULL,
	[Thang] [varchar](2) NOT NULL,
	[Nam] [varchar](4) NOT NULL,
	[MaHang] [int] NOT NULL,
	[SoLuongHang] [varchar](50) NOT NULL,
	[SoLuongXe] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LuuTru_DayPhong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LuuTru_DayPhong](
	[MaDay] [int] NOT NULL,
	[TenDay] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LuuTru_HoSo]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LuuTru_HoSo](
	[MaHoSo] [varchar](50) NULL,
	[PhongBan] [int] NULL,
	[DayLuuTru] [int] NULL,
	[TenDuAn] [varchar](200) NULL,
	[BanNganh] [int] NULL,
	[CoQuanGoi] [varchar](200) NULL,
	[NamLuuTru] [varchar](4) NULL,
	[ThangLuuTru] [varchar](2) NULL,
	[SoLuuTru] [varchar](50) NULL,
	[ThongTinLuuTru] [text] NULL,
	[GhiChu] [varchar](500) NULL,
	[QuyenSo] [varchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaHang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaHang](
	[MaHang] [int] NOT NULL,
	[DienGiai] [varchar](200) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyBaoCao]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyBaoCao](
	[Id] [int] NULL,
	[MaBoPhan] [int] NULL,
	[TenBaoCao] [varchar](100) NULL,
	[FileLink] [varchar](50) NULL,
	[MucBaoCao] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyMenu]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyMenu](
	[Id] [int] NULL,
	[Msnv] [varchar](20) NULL,
	[MaBoPhan] [int] NULL,
	[TenMenu] [varchar](200) NULL,
	[FileLink] [varchar](50) NULL,
	[ThaoTac] [int] NULL,
	[LoaiMeNu] [int] NULL,
	[MaCty] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NangSuat]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NangSuat](
	[Msnv] [varchar](10) NOT NULL,
	[idphong] [int] NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[TongDiemNangSuat] [int] NULL,
	[GhiChu] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Net_TempDe]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Net_TempDe](
	[test] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetBaoLanhGiaiNgan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetBaoLanhGiaiNgan](
	[HopDongTinDung] [nvarchar](50) NOT NULL,
	[LanGiaiNgan] [int] NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetCongTy]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetCongTy](
	[MaCongTy] [int] NOT NULL,
	[TenCongTy] [nvarchar](200) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetDatNen]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetDatNen](
	[TenLoDat] [nvarchar](20) NOT NULL,
	[MaDuAn] [nvarchar](20) NOT NULL,
	[MaCongTy] [int] NOT NULL,
	[LoaiDoiTuong] [int] NULL,
	[DienTich] [nvarchar](10) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[GiamGia] [decimal](18, 0) NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[SoLanThu] [int] NULL,
	[KyHopDong] [nvarchar](1) NULL,
	[CapSoDo] [nvarchar](1) NULL,
	[ChuyenKhachHang] [nvarchar](1) NULL,
	[HinhThuc] [nvarchar](100) NULL,
	[DienTichGV] [nvarchar](10) NULL,
	[TienGV] [decimal](18, 0) NULL,
	[TraThem] [decimal](18, 0) NULL,
	[GhiChu] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetDuAn]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetDuAn](
	[MaDuAn] [nvarchar](20) NOT NULL,
	[TenDuAn] [nvarchar](200) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetHopDong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetHopDong](
	[SoHopDong] [nvarchar](50) NOT NULL,
	[TenLoDat] [nvarchar](20) NOT NULL,
	[MaDuAn] [nvarchar](20) NOT NULL,
	[MaKhach] [nvarchar](50) NOT NULL,
	[NgayHopDong] [nvarchar](20) NOT NULL,
	[TriGiaHopDong] [decimal](18, 0) NOT NULL,
	[BaoLanh] [nvarchar](1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetHopDongBaoLanh]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetHopDongBaoLanh](
	[HopDongTinDung] [nvarchar](50) NOT NULL,
	[NgayKy] [nvarchar](10) NOT NULL,
	[SoTienVay] [decimal](18, 0) NOT NULL,
	[TriGiaHopDong] [decimal](18, 0) NOT NULL,
	[TenLoDat] [nvarchar](20) NOT NULL,
	[SoHopDong] [nvarchar](100) NOT NULL,
	[MaDuAn] [nvarchar](20) NOT NULL,
	[TenKhach1] [nvarchar](100) NOT NULL,
	[DienThoai1] [nvarchar](50) NULL,
	[CMND1] [nvarchar](50) NULL,
	[DiaChi1] [nvarchar](200) NULL,
	[NgayCap1] [nvarchar](250) NULL,
	[TenKhach2] [nvarchar](100) NOT NULL,
	[DienThoai2] [nvarchar](50) NULL,
	[CMND2] [nvarchar](50) NULL,
	[DiaChi2] [nvarchar](250) NULL,
	[NgayCap2] [nvarchar](50) NULL,
	[TenNganHang] [nvarchar](250) NOT NULL,
	[DiaChiNganHang] [nvarchar](250) NULL,
	[DienThoaiNganHang] [nvarchar](100) NULL,
	[NguoiDaiDien] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](150) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetKhachHang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetKhachHang](
	[MaKhach] [nvarchar](50) NOT NULL,
	[TenKhach] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](300) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[ThongTinKhac] [nvarchar](200) NULL,
	[TenKhach1] [nvarchar](100) NULL,
	[DiaChi1] [nvarchar](300) NULL,
	[DienThoai1] [nvarchar](50) NULL,
	[CMND1] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetLichSuHopDong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetLichSuHopDong](
	[SoHopDong] [nvarchar](50) NOT NULL,
	[TenLoDat] [nvarchar](20) NOT NULL,
	[MaDuAn] [nvarchar](20) NOT NULL,
	[MaKhach] [nvarchar](50) NOT NULL,
	[NgayHopDong] [nvarchar](20) NOT NULL,
	[TriGiaHopDong] [decimal](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetLichSuKhachHang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetLichSuKhachHang](
	[Makhach] [nvarchar](50) NOT NULL,
	[TenKhach] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[ThongTinKhac] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetLichSuPhuLucHopDong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetLichSuPhuLucHopDong](
	[SoHopDong] [nvarchar](50) NOT NULL,
	[IdDotThanhToan] [int] NOT NULL,
	[NgayThanhToan] [nvarchar](20) NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
	[DongChua] [nvarchar](1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetLichSuThanhToanTienDot]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetLichSuThanhToanTienDot](
	[Id_DotThu] [decimal](18, 0) NOT NULL,
	[MaKhach] [nvarchar](50) NOT NULL,
	[SoHopDong] [nvarchar](50) NOT NULL,
	[IdDotThanhToan] [int] NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
	[NgayThutien] [nvarchar](20) NOT NULL,
	[SoNgayTre] [int] NOT NULL,
	[PhatKhong] [nvarchar](1) NOT NULL,
	[MucPhat] [nvarchar](20) NOT NULL,
	[TienPhat] [decimal](18, 0) NOT NULL,
	[PhieuThu] [nvarchar](50) NOT NULL,
	[ThuPhat] [nvarchar](1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetLichSuThuPhat]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetLichSuThuPhat](
	[Id_DotThu] [decimal](18, 0) NOT NULL,
	[SoHopDong] [nvarchar](50) NOT NULL,
	[IdDotThanhToan] [int] NOT NULL,
	[NgayPhat] [nvarchar](20) NOT NULL,
	[NgayNopPhat] [nvarchar](20) NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
	[ThuChua] [nvarchar](1) NOT NULL,
	[PhieuThu] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetNguoidung]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetNguoidung](
	[MaNguoiDung] [int] NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[MaBoPhan] [int] NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetPhongban]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetPhongban](
	[MaPhongBan] [int] NOT NULL,
	[TenPhongBan] [nvarchar](200) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetPhuLucHopDong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetPhuLucHopDong](
	[SoHopDong] [nvarchar](50) NOT NULL,
	[IdDotThanhToan] [int] NOT NULL,
	[NgayThanhToan] [nvarchar](20) NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
	[DongChua] [nvarchar](1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetSoDoKhachHang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetSoDoKhachHang](
	[MaDuAn] [nvarchar](20) NOT NULL,
	[TenLoDat] [nvarchar](20) NOT NULL,
	[MaKhach] [nvarchar](50) NOT NULL,
	[SoQD] [nvarchar](50) NOT NULL,
	[NgayQD] [nvarchar](20) NOT NULL,
	[NoiQD] [nvarchar](300) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetTemp_KhachHangSoDo]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetTemp_KhachHangSoDo](
	[TenKhach] [nvarchar](200) NOT NULL,
	[DiaChi] [nvarchar](300) NOT NULL,
	[DienThoai] [nvarchar](20) NOT NULL,
	[TenLoDat] [nvarchar](20) NOT NULL,
	[SoQD] [nvarchar](50) NOT NULL,
	[NgayQD] [nvarchar](20) NOT NULL,
	[NoiCap] [nvarchar](300) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetTemp_KhachHangTreHan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetTemp_KhachHangTreHan](
	[TenKhach] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](300) NOT NULL,
	[DienThoai] [nvarchar](50) NOT NULL,
	[TenLoDat] [nvarchar](50) NOT NULL,
	[IdDotThanhToan] [nvarchar](300) NOT NULL,
	[SoTien] [nvarchar](300) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetTemp_LoDatChuaBan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetTemp_LoDatChuaBan](
	[TenLoDat] [nvarchar](40) NOT NULL,
	[DienTich] [nvarchar](50) NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
	[GiamGia] [decimal](18, 0) NOT NULL,
	[ThanhTien] [decimal](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetTemp_LoDatKyHopDong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetTemp_LoDatKyHopDong](
	[TenLoDat] [nvarchar](50) NOT NULL,
	[DienTich] [nvarchar](50) NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
	[ThanhTien] [decimal](18, 0) NOT NULL,
	[TenKhach] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[DienThoai] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[SoHopDong] [nvarchar](50) NOT NULL,
	[NgayHopDong] [nvarchar](20) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetTemp_TheoDoiHopDong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetTemp_TheoDoiHopDong](
	[TenLoDat] [nvarchar](50) NOT NULL,
	[TenKhach] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](300) NOT NULL,
	[DienThoai] [nvarchar](50) NOT NULL,
	[Thang1] [decimal](18, 0) NOT NULL,
	[Thang2] [decimal](18, 0) NOT NULL,
	[Thang3] [decimal](18, 0) NOT NULL,
	[Thang4] [decimal](18, 0) NOT NULL,
	[Thang5] [decimal](18, 0) NOT NULL,
	[Thang6] [decimal](18, 0) NOT NULL,
	[TenCongty] [nvarchar](300) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetTemp_TheoDoiHopDongWeb]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetTemp_TheoDoiHopDongWeb](
	[MaCongTy] [int] NOT NULL,
	[TenCongty] [nvarchar](300) NOT NULL,
	[SoHopDong] [nvarchar](50) NOT NULL,
	[TenLoDat] [nvarchar](50) NOT NULL,
	[TenKhach] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](300) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Thang1] [decimal](18, 0) NOT NULL,
	[Thang2] [decimal](18, 0) NOT NULL,
	[Thang3] [decimal](18, 0) NOT NULL,
	[Thang4] [decimal](18, 0) NOT NULL,
	[Thang5] [decimal](18, 0) NOT NULL,
	[Thang6] [decimal](18, 0) NOT NULL,
	[Thang7] [decimal](18, 0) NOT NULL,
	[Thang8] [decimal](18, 0) NOT NULL,
	[Thang9] [decimal](18, 0) NOT NULL,
	[Thang10] [decimal](18, 0) NOT NULL,
	[Thang11] [decimal](18, 0) NOT NULL,
	[Thang12] [decimal](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetThanhToanTienDot]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetThanhToanTienDot](
	[Id_DotThu] [decimal](18, 0) NOT NULL,
	[MaKhach] [nvarchar](50) NOT NULL,
	[SoHopDong] [nvarchar](50) NOT NULL,
	[IdDotThanhToan] [int] NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
	[NgayThuTien] [nvarchar](20) NOT NULL,
	[SoNgayTre] [int] NOT NULL,
	[PhatKhong] [nvarchar](1) NOT NULL,
	[MucPhat] [nvarchar](20) NULL,
	[TienPhat] [decimal](18, 0) NULL,
	[PhieuThu] [nvarchar](50) NOT NULL,
	[ThuPhat] [nvarchar](1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetThuTienPhat]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetThuTienPhat](
	[Id_DotThu] [decimal](18, 0) NOT NULL,
	[SoHopDong] [nvarchar](50) NOT NULL,
	[IdDotThanhToan] [int] NOT NULL,
	[NgayPhat] [nvarchar](20) NOT NULL,
	[NgayNopPhat] [nvarchar](20) NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
	[ThuChua] [nvarchar](1) NOT NULL,
	[PhieuThu] [nvarchar](80) NULL,
	[GhiChu] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NgayNghi]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NgayNghi](
	[Id] [int] NOT NULL,
	[DienGiai] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NghiPhep]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NghiPhep](
	[IdNghiphep] [decimal](18, 0) NOT NULL,
	[MsNV] [varchar](10) NOT NULL,
	[NgayNghi] [int] NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[LoaiNghi] [int] NULL,
	[SoNgay] [real] NULL,
	[NghiSang] [bit] NOT NULL,
	[NghiChieu] [bit] NOT NULL,
	[HuongLuong] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[Maso] [varchar](50) NOT NULL,
	[HoTen] [varchar](100) NOT NULL,
	[Pass] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanSuBienDong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanSuBienDong](
	[Ngay] [varchar](2) NULL,
	[Thang] [varchar](2) NULL,
	[Nam] [varchar](4) NULL,
	[NamTang] [decimal](18, 0) NULL,
	[NuTang] [decimal](18, 0) NULL,
	[NamGiam] [decimal](18, 0) NULL,
	[NuGiam] [decimal](18, 0) NULL,
	[GhiChuTang] [varchar](500) NULL,
	[GhiChuGiam] [varchar](500) NULL,
	[TongSo] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[MSNV] [varchar](10) NOT NULL,
	[Hoten] [varchar](200) NOT NULL,
	[Ten] [varchar](50) NOT NULL,
	[Tructiep] [varchar](1) NULL,
	[NgaySinh] [varchar](20) NULL,
	[NoiSinh] [varchar](250) NULL,
	[Choohiennay] [varchar](1000) NULL,
	[DiaChi] [varchar](1000) NULL,
	[QueQuan] [varchar](500) NULL,
	[Dienthoainha] [varchar](20) NULL,
	[DTDD] [varchar](20) NULL,
	[CMND] [varchar](20) NULL,
	[NgayCap] [varchar](20) NULL,
	[NoiCap] [varchar](500) NULL,
	[GioiTinh] [bit] NOT NULL,
	[DanToc] [varchar](50) NULL,
	[TonGiao] [varchar](50) NULL,
	[IDPhoto] [varchar](50) NULL,
	[MSP] [varchar](50) NULL,
	[HSBA] [varchar](50) NULL,
	[Chucvu] [varchar](500) NULL,
	[idphong] [int] NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[LoaiNhanVien] [int] NULL,
	[Email] [varchar](100) NULL,
	[MaCty] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nhanvien_Temp]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nhanvien_Temp](
	[MSNV] [varchar](10) NOT NULL,
	[Hoten] [varchar](200) NULL,
	[Ten] [varchar](50) NULL,
	[Tructiep] [varchar](1) NULL,
	[NgaySinh] [varchar](20) NULL,
	[NoiSinh] [varchar](250) NULL,
	[Choohiennay] [varchar](1000) NULL,
	[DiaChi] [varchar](1000) NULL,
	[QueQuan] [varchar](500) NULL,
	[Dienthoainha] [varchar](20) NULL,
	[DTDD] [varchar](20) NULL,
	[CMND] [varchar](20) NULL,
	[NgayCap] [varchar](20) NULL,
	[NoiCap] [varchar](500) NULL,
	[GioiTinh] [bit] NOT NULL,
	[DanToc] [varchar](50) NULL,
	[TonGiao] [varchar](50) NULL,
	[IDPhoto] [varchar](50) NULL,
	[MSP] [varchar](50) NULL,
	[HSBA] [varchar](50) NULL,
	[Chucvu] [varchar](500) NULL,
	[idphong] [int] NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[LoaiNhanVien] [int] NULL,
	[Email] [varchar](100) NULL,
	[MaCty] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanvienBHYT]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanvienBHYT](
	[Msnv] [varchar](10) NOT NULL,
	[MaLoai] [int] NULL,
	[Ngay] [varchar](2) NOT NULL,
	[Thang] [varchar](2) NOT NULL,
	[Nam] [varchar](4) NOT NULL,
	[Trinhtrang] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanvienCon]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanvienCon](
	[IdCon] [int] NOT NULL,
	[MsNV] [varchar](10) NOT NULL,
	[Hoten] [varchar](150) NULL,
	[Ten] [varchar](50) NULL,
	[ngaysinh] [varchar](50) NULL,
	[gioitinh] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanvienHD]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanvienHD](
	[Msnv] [varchar](10) NOT NULL,
	[SoLan] [int] NOT NULL,
	[MaloaiHD] [int] NOT NULL,
	[Mahs] [varchar](20) NULL,
	[Ngayky] [varchar](20) NOT NULL,
	[Ngayhet] [varchar](50) NOT NULL,
	[SoHopDong] [varchar](500) NULL,
	[idphong] [int] NOT NULL,
	[Chucvu] [varchar](250) NOT NULL,
	[DienGiai] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVienKhoaHoc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVienKhoaHoc](
	[Msnv] [varchar](20) NOT NULL,
	[IdTruong] [int] NULL,
	[IdKhoa] [int] NULL,
	[IdLop] [int] NULL,
	[IdPhong] [int] NULL,
	[NgayBD] [varchar](10) NULL,
	[NgayKT] [varchar](10) NULL,
	[Nam] [varchar](4) NULL,
	[DatHayKhong] [varchar](50) NULL,
	[TyLeDat] [varchar](50) NULL,
	[GhiChu] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanvienKT]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanvienKT](
	[Msnv] [varchar](10) NOT NULL,
	[Idkt] [decimal](18, 0) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanvienLopHoc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanvienLopHoc](
	[IdLop] [int] NOT NULL,
	[TenLop] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVienNghiViec]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVienNghiViec](
	[Msnv] [char](20) NOT NULL,
	[HoTen] [varchar](90) NOT NULL,
	[NgayVaoLam] [nvarchar](10) NULL,
	[BoPhan] [varchar](150) NULL,
	[ChuyenMon] [nvarchar](70) NULL,
	[ChucVu] [varchar](200) NULL,
	[NgayNghiViec] [nvarchar](10) NULL,
	[LyDoNghi] [nvarchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanvienTangLuong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanvienTangLuong](
	[Msnv] [varchar](10) NOT NULL,
	[Mahs] [int] NOT NULL,
	[Ngay] [varchar](50) NOT NULL,
	[Diengiai] [varchar](500) NULL,
	[Chucvu] [varchar](250) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanvienTruong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanvienTruong](
	[IDTruong] [int] NOT NULL,
	[TenTruong] [varchar](350) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanvienTruongKhoa]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanvienTruongKhoa](
	[Idkhoa] [int] NOT NULL,
	[IdTruong] [int] NULL,
	[TenKhoa] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nhap]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nhap](
	[IdNhap] [decimal](18, 0) NOT NULL,
	[Mahang] [int] NOT NULL,
	[NgayNhap] [char](10) NOT NULL,
	[Soluong] [decimal](18, 0) NOT NULL,
	[Diengiai] [char](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanCongCongTac]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanCongCongTac](
	[MsNV] [varchar](10) NOT NULL,
	[ngaydi] [varchar](10) NOT NULL,
	[thangdi] [varchar](10) NOT NULL,
	[namdi] [varchar](10) NOT NULL,
	[ngayve] [varchar](10) NULL,
	[thangve] [varchar](10) NULL,
	[namve] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phongban]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phongban](
	[idphong] [int] NOT NULL,
	[Tenphong] [varchar](250) NULL,
	[indexten] [int] NULL,
	[TenTat] [varchar](50) NULL,
	[MaCty] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongBan_LichTuan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan_LichTuan](
	[Id] [decimal](18, 0) NULL,
	[LoaiBaoCao] [int] NULL,
	[MaDuAn] [int] NULL,
	[Msnv] [varchar](50) NULL,
	[IdPhong] [int] NULL,
	[Ngay] [varchar](50) NULL,
	[TieuDe] [varchar](500) NULL,
	[NoiDung] [text] NULL,
	[FileKem] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quan](
	[QuanID] [int] NOT NULL,
	[TenQuan] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuatrinhHD]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuatrinhHD](
	[Msnv] [varchar](10) NOT NULL,
	[SoLan] [int] NOT NULL,
	[Maloaihd] [varchar](5) NOT NULL,
	[Mahs] [varchar](20) NULL,
	[Ngayky] [varchar](20) NOT NULL,
	[Ngayhet] [varchar](50) NOT NULL,
	[SoHopDong] [varchar](500) NULL,
	[idphong] [int] NOT NULL,
	[Chucvu] [varchar](250) NOT NULL,
	[DienGiai] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuatrinhLuong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuatrinhLuong](
	[Msnv] [varchar](10) NOT NULL,
	[SoLan] [int] NOT NULL,
	[QuyetDinh] [varchar](50) NOT NULL,
	[NgayTang] [varchar](20) NOT NULL,
	[Heso] [varchar](10) NULL,
	[DienGiai] [varchar](200) NULL,
	[chucdanhcv] [varchar](20) NULL,
	[bacluong] [varchar](10) NULL,
	[ngaydenhan] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuaTrinhThangChuc]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuaTrinhThangChuc](
	[Msnv] [varchar](20) NOT NULL,
	[SoLan] [int] NOT NULL,
	[SoQD] [varchar](50) NOT NULL,
	[NgayQD] [varchar](50) NOT NULL,
	[ChucVu] [varchar](50) NOT NULL,
	[DienGiai] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuyetdinhKT]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuyetdinhKT](
	[Idkt] [decimal](18, 0) NOT NULL,
	[Loaikt] [int] NULL,
	[Soqd] [varchar](30) NULL,
	[Ngayqd] [varchar](20) NULL,
	[Noiqd] [varchar](300) NULL,
	[Tieude] [varchar](5000) NULL,
	[Trichyeu] [varchar](1000) NULL,
	[Noinhan] [varchar](300) NULL,
	[Sotien] [varchar](50) NULL,
	[Nguoiky] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanXuatKinhDoanhChinh]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanXuatKinhDoanhChinh](
	[id] [int] NOT NULL,
	[TieuDe] [varchar](500) NOT NULL,
	[Ngay] [varchar](20) NOT NULL,
	[NguoiNhap] [varchar](50) NOT NULL,
	[TenFile] [varchar](50) NOT NULL,
	[TomLuoc] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanXuatKinhDoanhPhu]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanXuatKinhDoanhPhu](
	[Id] [int] NOT NULL,
	[SoFile] [int] NOT NULL,
	[TieuDe] [varchar](500) NOT NULL,
	[TenFile] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[scratch]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[scratch](
	[id] [int] NOT NULL,
	[text_field] [varchar](50) NULL,
	[integer_field] [int] NULL,
	[date_time_field] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SendMail]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SendMail](
	[Msnv] [varchar](20) NOT NULL,
	[ngay] [varchar](2) NOT NULL,
	[thang] [varchar](2) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SoDangKyCongVan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SoDangKyCongVan](
	[SoDangKy] [int] NOT NULL,
	[DienGiai] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TABLE1]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TABLE1](
	[id] [int] NOT NULL,
	[name] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiChinhDuAn]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiChinhDuAn](
	[Id] [int] NULL,
	[MaDuAn] [varchar](50) NULL,
	[TongSo] [decimal](18, 0) NULL,
	[DonViTS] [int] NULL,
	[VonGop] [decimal](18, 0) NULL,
	[DonViVG] [int] NULL,
	[ThongTinThem] [text] NULL,
	[FileKem] [varchar](50) NULL,
	[LoaiDuAn] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLoai]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLoai](
	[Id] [int] NOT NULL,
	[TenLoai] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teamwork]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teamwork](
	[Id] [int] NULL,
	[TenDuAn] [varchar](200) NULL,
	[NgayThanhLap] [varchar](10) NULL,
	[NgayKetThuc] [varchar](10) NULL,
	[ChucNang] [text] NULL,
	[QuyetDinhSo] [varchar](20) NULL,
	[NguoiKy] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temp_GioLamThang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Temp_GioLamThang](
	[HoTen] [varchar](100) NOT NULL,
	[SoPhutTre] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[LanKhongLyDo] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temp_SanPham]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Temp_SanPham](
	[MaSP] [char](10) NOT NULL,
	[TenSP] [char](40) NOT NULL,
	[MaNCC] [char](10) NOT NULL,
	[Gia] [decimal](18, 0) NOT NULL,
	[NamSX] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temp_TreGio]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_TreGio](
	[Msnv] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[Giovaosang] [nvarchar](50) NULL,
	[Giorasang] [nvarchar](50) NULL,
	[TreSang] [int] NULL,
	[Giovaochieu] [nvarchar](50) NULL,
	[Giorachieu] [nvarchar](50) NULL,
	[TreChieu] [int] NULL,
	[TongTre] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhToanA]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhToanA](
	[MaTT] [int] NOT NULL,
	[ngay] [varchar](20) NULL,
	[sotien] [decimal](18, 0) NULL,
	[MaCT] [int] NOT NULL,
	[ttthem] [varchar](500) NULL,
	[ngaynhap] [varchar](50) NULL,
	[nguoinhap] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaNV] [varchar](50) NULL,
	[TeamID] [int] NULL,
	[ChucVuID] [int] NULL,
	[NgayVaoTeam] [varchar](10) NULL,
	[NgayRa] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhVienBatDongSan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhVienBatDongSan](
	[MaSo] [varchar](20) NOT NULL,
	[HoVaTen] [varchar](100) NOT NULL,
	[CoQuan] [varchar](500) NOT NULL,
	[ChucVu] [int] NOT NULL,
	[DienThoai] [varchar](50) NULL,
	[NhiemKy] [varchar](50) NULL,
	[GhiChu] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThoiKyThanhToan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiKyThanhToan](
	[MaLoDat] [int] NOT NULL,
	[TenThoiKy] [int] NOT NULL,
	[NgayThanhToan] [datetime] NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
	[DongChua] [varchar](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongBao](
	[Id] [decimal](18, 0) NOT NULL,
	[TenTB] [varchar](500) NULL,
	[LoaiId] [int] NULL,
	[NgayRaTB] [varchar](20) NULL,
	[FileKem] [varchar](250) NULL,
	[NguoiNhap] [varchar](30) NULL,
	[NgayNhap] [varchar](20) NULL,
	[Tomluoc] [varchar](2000) NULL,
	[Lienket] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongBaoBanTong]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongBaoBanTong](
	[Id] [real] NULL,
	[TieuDe] [varchar](500) NULL,
	[LoaiTB] [int] NULL,
	[Ngay] [varchar](2) NULL,
	[Thang] [varchar](2) NULL,
	[Nam] [varchar](4) NULL,
	[NguoiKy] [varchar](50) NULL,
	[FileKem] [varchar](50) NULL,
	[TomLuoc] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongKeKhachHang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongKeKhachHang](
	[Ngay] [varchar](2) NULL,
	[Thang] [varchar](2) NULL,
	[Nam] [varchar](4) NULL,
	[KHHienTai] [decimal](18, 0) NULL,
	[KHTuongLai] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongTinDuAn]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinDuAn](
	[MaDuAn] [int] NOT NULL,
	[TenDuAn] [varchar](500) NOT NULL,
	[DiaChi] [varchar](500) NULL,
	[NoiDungKem] [text] NULL,
	[FileKem] [varchar](50) NULL,
	[LoaiDA] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongTinDuAnChiTiet]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinDuAnChiTiet](
	[Id] [int] NULL,
	[MaDuAn] [int] NULL,
	[MaTinhTrang] [int] NULL,
	[NoiDung] [text] NULL,
	[FileKem] [varchar](50) NULL,
	[LoaiDuAn] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[thongtinkhac]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[thongtinkhac](
	[msnv] [varchar](10) NOT NULL,
	[Mahv] [int] NULL,
	[trinhdovh] [varchar](500) NULL,
	[trinhdonn] [varchar](500) NULL,
	[trinhdovt] [varchar](500) NULL,
	[trinhdocmkt] [varchar](500) NULL,
	[trinhdochinhtri] [varchar](500) NULL,
	[nganh] [varchar](250) NULL,
	[hesoluong] [varchar](20) NULL,
	[bangcap] [varchar](500) NULL,
	[ngayduoccapbang] [varchar](250) NULL,
	[bangcapbosung] [text] NULL,
	[ngayvaocd] [varchar](20) NULL,
	[sosocd] [varchar](50) NULL,
	[ngaykybhxh] [varchar](20) NULL,
	[sosobhxh] [varchar](50) NULL,
	[ngaykysold] [varchar](20) NULL,
	[sosold] [varchar](20) NULL,
	[ngaythoiviec] [varchar](20) NULL,
	[ngayvaocoquan] [varchar](20) NULL,
	[ngayvaodang] [varchar](20) NULL,
	[ngaykyhdld] [varchar](20) NULL,
	[sohdld] [varchar](50) NULL,
	[tenvochong] [varchar](250) NULL,
	[tencon1] [varchar](250) NULL,
	[tencon2] [varchar](250) NULL,
	[tencon3] [varchar](250) NULL,
	[tencon4] [varchar](250) NULL,
	[tencon5] [varchar](250) NULL,
	[tencon6] [varchar](250) NULL,
	[quatrinhct] [text] NULL,
	[dinuocngoai] [text] NULL,
	[lichsubanthan] [text] NULL,
	[quatrinhchamdiem] [text] NULL,
	[quatrinhtangluong] [text] NULL,
	[thanhtich] [text] NULL,
	[khenthuong] [text] NULL,
	[kyluat] [text] NULL,
	[lylichgd] [text] NULL,
	[ghichu] [text] NULL,
	[Truong] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[thongtinkhac_temp]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[thongtinkhac_temp](
	[msnv] [varchar](10) NOT NULL,
	[Mahv] [int] NULL,
	[trinhdovh] [varchar](500) NULL,
	[trinhdonn] [varchar](500) NULL,
	[trinhdovt] [varchar](500) NULL,
	[trinhdocmkt] [varchar](500) NULL,
	[trinhdochinhtri] [varchar](500) NULL,
	[nganh] [varchar](250) NULL,
	[hesoluong] [varchar](20) NULL,
	[bangcap] [varchar](500) NULL,
	[ngayduoccapbang] [varchar](250) NULL,
	[bangcapbosung] [text] NULL,
	[ngayvaocd] [varchar](20) NULL,
	[sosocd] [varchar](50) NULL,
	[ngaykybhxh] [varchar](20) NULL,
	[sosobhxh] [varchar](50) NULL,
	[ngaykysold] [varchar](20) NULL,
	[sosold] [varchar](20) NULL,
	[ngayvaocoquan] [varchar](20) NULL,
	[ngayvaodang] [varchar](20) NULL,
	[ngaykyhdld] [varchar](20) NULL,
	[sohdld] [varchar](50) NULL,
	[tenvochong] [varchar](250) NULL,
	[tencon1] [varchar](250) NULL,
	[tencon2] [varchar](250) NULL,
	[tencon3] [varchar](250) NULL,
	[tencon4] [varchar](250) NULL,
	[tencon5] [varchar](250) NULL,
	[tencon6] [varchar](250) NULL,
	[quatrinhct] [text] NULL,
	[dinuocngoai] [text] NULL,
	[lichsubanthan] [text] NULL,
	[quatrinhchamdiem] [text] NULL,
	[quatrinhtangluong] [text] NULL,
	[thanhtich] [text] NULL,
	[khenthuong] [text] NULL,
	[kyluat] [text] NULL,
	[lylichgd] [text] NULL,
	[ghichu] [text] NULL,
	[Truong] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongTinKyGoi]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinKyGoi](
	[MaDuAnKG] [int] NULL CONSTRAINT [DF_ThongTinKyGoi_MaDuAnKG]  DEFAULT ((0)),
	[MaCapTren] [int] NULL,
	[DienGiai] [varchar](200) NULL,
	[FileKem] [varchar](50) NULL,
	[SoCan] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongTinNhanSu]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinNhanSu](
	[Id] [decimal](18, 0) NULL,
	[LoaiTin] [int] NULL,
	[TieuDe] [text] NULL,
	[VanTat] [text] NULL,
	[NoiDung] [text] NULL,
	[NguonTin] [nvarchar](200) NULL,
	[NgayNhap] [nvarchar](10) NULL,
	[HinhAnh] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThuPhat]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThuPhat](
	[IdThuPhat] [decimal](18, 0) NOT NULL,
	[MaLodat] [int] NOT NULL,
	[LanThu] [int] NOT NULL,
	[NgayThu] [datetime] NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
	[GhiChu] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TienDo]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TienDo](
	[tiendoID] [int] NOT NULL,
	[thutucID] [int] NOT NULL,
	[MaDA] [varchar](30) NOT NULL,
	[ngayTH] [varchar](20) NULL,
	[nguoiTH] [varchar](10) NULL,
	[tiendoTH] [varchar](2000) NULL,
	[kehoachTH] [varchar](2000) NULL,
	[vbkemtheo] [varchar](50) NULL,
	[ngaynhap] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TienTe]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TienTe](
	[MaTT] [int] NULL,
	[TenTienTe] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TinBatDongSan]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TinBatDongSan](
	[Id] [real] NOT NULL,
	[Ngay] [nvarchar](2) NULL,
	[Thang] [nvarchar](2) NULL,
	[Nam] [nvarchar](4) NULL,
	[TieuDe] [varchar](500) NULL,
	[TrichDan] [text] NULL,
	[HinhAnh] [varchar](50) NULL,
	[BaiViet] [varchar](50) NULL,
	[link] [varchar](500) NULL,
	[loaiId] [int] NULL,
	[tailieu] [varchar](300) NULL,
	[nguoinhap] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TinhTrangDuAn]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TinhTrangDuAn](
	[MaTT] [int] NULL,
	[DienGiai] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trangthai]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trangthai](
	[id] [int] NOT NULL,
	[tentt] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TruyCap]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TruyCap](
	[QuyenTruyCap] [int] NULL,
	[TenTruyCap] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VanBanGiaoDich]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VanBanGiaoDich](
	[Id] [decimal](18, 0) NOT NULL,
	[TieuDe] [varchar](500) NOT NULL,
	[TomLuoc] [char](1000) NOT NULL,
	[NguoiNhap] [varchar](20) NOT NULL,
	[PhongBan] [int] NOT NULL,
	[LoaiVanBan] [int] NOT NULL,
	[NgayNhap] [varchar](2) NOT NULL,
	[ThangNhap] [varchar](2) NOT NULL,
	[NamNhap] [varchar](4) NOT NULL,
	[NguoiKy] [varchar](50) NOT NULL,
	[TenFile] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XepLoaiThang]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XepLoaiThang](
	[Msnv] [varchar](10) NOT NULL,
	[Thang] [varchar](2) NOT NULL,
	[Nam] [varchar](4) NOT NULL,
	[Loai] [varchar](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Xuat]    Script Date: 6/27/2017 3:59:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Xuat](
	[IdXuat] [decimal](18, 0) NOT NULL,
	[Mahang] [int] NOT NULL,
	[Ngayxuat] [char](10) NOT NULL,
	[Soluong] [decimal](18, 0) NOT NULL,
	[Diengiai] [char](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[dtproperties] ADD  DEFAULT ((0)) FOR [version]
GO

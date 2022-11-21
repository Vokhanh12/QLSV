/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     21/11/2022 8:56:54 AM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Association4') and o.name = 'FK_ASSOCIAT_ASSOCIATI_DOITUONG')
alter table Association4
   drop constraint FK_ASSOCIAT_ASSOCIATI_DOITUONG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Association4') and o.name = 'FK_ASSOCIAT_ASSOCIATI_SINHVIEN')
alter table Association4
   drop constraint FK_ASSOCIAT_ASSOCIATI_SINHVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Association7') and o.name = 'FK_ASSOCIAT_ASSOCIATI_MONHOC')
alter table Association7
   drop constraint FK_ASSOCIAT_ASSOCIATI_MONHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Association7') and o.name = 'FK_ASSOCIAT_ASSOCIATI_PHIEUDK')
alter table Association7
   drop constraint FK_ASSOCIAT_ASSOCIATI_PHIEUDK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Hknk') and o.name = 'FK_HKNK_ASSOCIATI_PHIEUDK')
alter table Hknk
   drop constraint FK_HKNK_ASSOCIATI_PHIEUDK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Nganh') and o.name = 'FK_NGANH_ASSOCIATI_SINHVIEN')
alter table Nganh
   drop constraint FK_NGANH_ASSOCIATI_SINHVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Phieuthu') and o.name = 'FK_PHIEUTHU_ASSOCIATI_HKNK')
alter table Phieuthu
   drop constraint FK_PHIEUTHU_ASSOCIATI_HKNK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Quequan') and o.name = 'FK_QUEQUAN_ASSOCIATI_SINHVIEN')
alter table Quequan
   drop constraint FK_QUEQUAN_ASSOCIATI_SINHVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sinhvien') and o.name = 'FK_SINHVIEN_ASSOCIATI_PHIEUDK')
alter table Sinhvien
   drop constraint FK_SINHVIEN_ASSOCIATI_PHIEUDK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sinhvien') and o.name = 'FK_SINHVIEN_ASSOCIATI_PHIEUTHU')
alter table Sinhvien
   drop constraint FK_SINHVIEN_ASSOCIATI_PHIEUTHU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Association4')
            and   name  = 'ASSOCIATION4_FK2'
            and   indid > 0
            and   indid < 255)
   drop index Association4.ASSOCIATION4_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Association4')
            and   name  = 'ASSOCIATION4_FK'
            and   indid > 0
            and   indid < 255)
   drop index Association4.ASSOCIATION4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Association4')
            and   type = 'U')
   drop table Association4
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Association7')
            and   name  = 'ASSOCIATION7_FK2'
            and   indid > 0
            and   indid < 255)
   drop index Association7.ASSOCIATION7_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Association7')
            and   name  = 'ASSOCIATION7_FK'
            and   indid > 0
            and   indid < 255)
   drop index Association7.ASSOCIATION7_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Association7')
            and   type = 'U')
   drop table Association7
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Doituong')
            and   type = 'U')
   drop table Doituong
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Hknk')
            and   name  = 'ASSOCIATION8_FK'
            and   indid > 0
            and   indid < 255)
   drop index Hknk.ASSOCIATION8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Hknk')
            and   type = 'U')
   drop table Hknk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Khoa')
            and   type = 'U')
   drop table Khoa
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Monhoc')
            and   type = 'U')
   drop table Monhoc
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Nganh')
            and   name  = 'ASSOCIATION3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Nganh.ASSOCIATION3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Nganh')
            and   type = 'U')
   drop table Nganh
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PhieuDK')
            and   type = 'U')
   drop table PhieuDK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Phieuthu')
            and   name  = 'ASSOCIATION9_FK'
            and   indid > 0
            and   indid < 255)
   drop index Phieuthu.ASSOCIATION9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Phieuthu')
            and   type = 'U')
   drop table Phieuthu
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Quequan')
            and   name  = 'ASSOCIATION1_FK'
            and   indid > 0
            and   indid < 255)
   drop index Quequan.ASSOCIATION1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Quequan')
            and   type = 'U')
   drop table Quequan
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sinhvien')
            and   name  = 'ASSOCIATION6_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sinhvien.ASSOCIATION6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sinhvien')
            and   name  = 'ASSOCIATION5_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sinhvien.ASSOCIATION5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sinhvien')
            and   type = 'U')
   drop table Sinhvien
go

/*==============================================================*/
/* Table: Association4                                          */
/*==============================================================*/
create table Association4 (
   mssv                 char(1)              not null,
   maDT                 char(1)              not null,
   constraint PK_ASSOCIATION4 primary key (mssv, maDT)
)
go

/*==============================================================*/
/* Index: ASSOCIATION4_FK                                       */
/*==============================================================*/




create nonclustered index ASSOCIATION4_FK on Association4 (mssv ASC)
go

/*==============================================================*/
/* Index: ASSOCIATION4_FK2                                      */
/*==============================================================*/




create nonclustered index ASSOCIATION4_FK2 on Association4 (maDT ASC)
go

/*==============================================================*/
/* Table: Association7                                          */
/*==============================================================*/
create table Association7 (
   sttpdk               char(1)              not null,
   mamon                char(1)              not null,
   constraint PK_ASSOCIATION7 primary key (sttpdk, mamon)
)
go

/*==============================================================*/
/* Index: ASSOCIATION7_FK                                       */
/*==============================================================*/




create nonclustered index ASSOCIATION7_FK on Association7 (sttpdk ASC)
go

/*==============================================================*/
/* Index: ASSOCIATION7_FK2                                      */
/*==============================================================*/




create nonclustered index ASSOCIATION7_FK2 on Association7 (mamon ASC)
go

/*==============================================================*/
/* Table: Doituong                                              */
/*==============================================================*/
create table Doituong (
   maDT                 char(1)              not null,
   tenDT                char(1)              null,
   tylegiam             int                  null,
   constraint PK_DOITUONG primary key (maDT)
)
go

/*==============================================================*/
/* Table: Hknk                                                  */
/*==============================================================*/
create table Hknk (
   hknh                 char(1)              not null,
   sttpdk               char(1)              not null,
   ngayhethanDHP        datetime             null,
   ngayhethanDKHP       datetime             null,
   ngayhethangiamHP     datetime             null,
   constraint PK_HKNK primary key (hknh)
)
go

/*==============================================================*/
/* Index: ASSOCIATION8_FK                                       */
/*==============================================================*/




create nonclustered index ASSOCIATION8_FK on Hknk (sttpdk ASC)
go

/*==============================================================*/
/* Table: Khoa                                                  */
/*==============================================================*/
create table Khoa (
   makhoa               char(1)              not null,
   tenkhoa              char(1)              null,
   constraint PK_KHOA primary key (makhoa)
)
go

/*==============================================================*/
/* Table: Monhoc                                                */
/*==============================================================*/
create table Monhoc (
   mamon                char(1)              not null,
   tenmon               char(1)              null,
   soTC                 int                  null,
   montienquyet         char(1)              null,
   constraint PK_MONHOC primary key (mamon)
)
go

/*==============================================================*/
/* Table: Nganh                                                 */
/*==============================================================*/
create table Nganh (
   maNganh              char(1)              not null,
   mssv                 char(1)              not null,
   tenNganh             char(1)              null,
   constraint PK_NGANH primary key (maNganh)
)
go

/*==============================================================*/
/* Index: ASSOCIATION3_FK                                       */
/*==============================================================*/




create nonclustered index ASSOCIATION3_FK on Nganh (mssv ASC)
go

/*==============================================================*/
/* Table: PhieuDK                                               */
/*==============================================================*/
create table PhieuDK (
   sttpdk               char(1)              not null,
   ngayDK               datetime             null,
   constraint PK_PHIEUDK primary key (sttpdk)
)
go

/*==============================================================*/
/* Table: Phieuthu                                              */
/*==============================================================*/
create table Phieuthu (
   sttpt                char(1)              not null,
   hknh                 char(1)              not null,
   ngaplap              datetime             null,
   sotien               double precision     null,
   constraint PK_PHIEUTHU primary key (sttpt)
)
go

/*==============================================================*/
/* Index: ASSOCIATION9_FK                                       */
/*==============================================================*/




create nonclustered index ASSOCIATION9_FK on Phieuthu (hknh ASC)
go

/*==============================================================*/
/* Table: Quequan                                               */
/*==============================================================*/
create table Quequan (
   maqq                 char(1)              not null,
   mssv                 char(1)              not null,
   diengiai             char(1)              null,
   constraint PK_QUEQUAN primary key (maqq)
)
go

/*==============================================================*/
/* Index: ASSOCIATION1_FK                                       */
/*==============================================================*/




create nonclustered index ASSOCIATION1_FK on Quequan (mssv ASC)
go

/*==============================================================*/
/* Table: Sinhvien                                              */
/*==============================================================*/
create table Sinhvien (
   mssv                 char(1)              not null,
   sttpdk               char(1)              not null,
   sttpt                char(1)              not null,
   hoten                char(1)              null,
   phai                 char(1)              null,
   ngaysinh             datetime             null,
   constraint PK_SINHVIEN primary key (mssv)
)
go

/*==============================================================*/
/* Index: ASSOCIATION5_FK                                       */
/*==============================================================*/




create nonclustered index ASSOCIATION5_FK on Sinhvien (sttpdk ASC)
go

/*==============================================================*/
/* Index: ASSOCIATION6_FK                                       */
/*==============================================================*/




create nonclustered index ASSOCIATION6_FK on Sinhvien (sttpt ASC)
go

alter table Association4
   add constraint FK_ASSOCIAT_ASSOCIATI_DOITUONG foreign key (maDT)
      references Doituong (maDT)
go

alter table Association4
   add constraint FK_ASSOCIAT_ASSOCIATI_SINHVIEN foreign key (mssv)
      references Sinhvien (mssv)
go

alter table Association7
   add constraint FK_ASSOCIAT_ASSOCIATI_MONHOC foreign key (mamon)
      references Monhoc (mamon)
go

alter table Association7
   add constraint FK_ASSOCIAT_ASSOCIATI_PHIEUDK foreign key (sttpdk)
      references PhieuDK (sttpdk)
go

alter table Hknk
   add constraint FK_HKNK_ASSOCIATI_PHIEUDK foreign key (sttpdk)
      references PhieuDK (sttpdk)
go

alter table Nganh
   add constraint FK_NGANH_ASSOCIATI_SINHVIEN foreign key (mssv)
      references Sinhvien (mssv)
go

alter table Phieuthu
   add constraint FK_PHIEUTHU_ASSOCIATI_HKNK foreign key (hknh)
      references Hknk (hknh)
go

alter table Quequan
   add constraint FK_QUEQUAN_ASSOCIATI_SINHVIEN foreign key (mssv)
      references Sinhvien (mssv)
go

alter table Sinhvien
   add constraint FK_SINHVIEN_ASSOCIATI_PHIEUDK foreign key (sttpdk)
      references PhieuDK (sttpdk)
go

alter table Sinhvien
   add constraint FK_SINHVIEN_ASSOCIATI_PHIEUTHU foreign key (sttpt)
      references Phieuthu (sttpt)
go


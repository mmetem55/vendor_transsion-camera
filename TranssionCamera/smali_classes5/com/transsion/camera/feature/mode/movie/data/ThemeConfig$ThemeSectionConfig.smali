.class public Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;
.super Ljava/lang/Object;
.source "ThemeConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeSectionConfig"
.end annotation


# instance fields
.field private duration:J

.field private filter:Ljava/lang/String;

.field private filterInstallPath:Ljava/lang/String;

.field private sectionId:Ljava/lang/String;

.field private trans:Ljava/lang/String;

.field private transInstallPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;Ljava/lang/String;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->enrichOriginData(Ljava/lang/String;)V

    return-void
.end method

.method private enrichOriginData(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->filter:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->filterInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->filterInstallPath:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->trans:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->tranInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->transInstallPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->duration:J

    return-wide v0
.end method

.method public getFilterInstallPath()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->filterInstallPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSectionId()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->sectionId:Ljava/lang/String;

    return-object p0
.end method

.method public getTransInstallPath()Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->transInstallPath:Ljava/lang/String;

    return-object p0
.end method

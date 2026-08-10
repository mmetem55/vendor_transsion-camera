.class public Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;
.super Ljava/lang/Object;
.source "ThemeConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;
    }
.end annotation


# instance fields
.field private assetMusicPath:Ljava/lang/String;

.field private cover:Ljava/lang/String;

.field private coverPicturePath:Ljava/lang/String;

.field private descriptionId:Ljava/lang/String;

.field private duration:J

.field private id:Ljava/lang/String;

.field private lutFilter:Ljava/lang/String;

.field private lutFilterInstallPath:Ljava/lang/String;

.field private music:Ljava/lang/String;

.field private musicDuration:J

.field private musicPath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nameId:Ljava/lang/String;

.field private preview:Ljava/lang/String;

.field private previewVideoPath:Ljava/lang/String;

.field private sectionNum:I

.field private tailDuration:J

.field private tailFilter:Ljava/lang/String;

.field private tailFilterInstallPath:Ljava/lang/String;

.field private tailTrans:Ljava/lang/String;

.field private tailTransInstallPath:Ljava/lang/String;

.field private themeSection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private timelineFilter:Ljava/lang/String;

.field private timelineFilterInstallPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enrichOriginData(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->tailFilter:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->filterInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->tailFilterInstallPath:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->tailTrans:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->tranInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->tailTransInstallPath:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->cover:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->themeInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->coverPicturePath:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->preview:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->themeInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->previewVideoPath:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->music:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->assetThemeInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->assetMusicPath:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->music:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->themeInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->musicPath:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->lutFilter:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->filterInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->lutFilterInstallPath:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->timelineFilter:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->filterInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->timelineFilterInstallPath:Ljava/lang/String;

    return-void
.end method

.method public static loadLocalTheme(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeUtil;->getThemeListFromAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method enrichOriginData()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->enrichOriginData(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->themeSection:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    .line 46
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->access$000(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAssetMusicFilePath()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->assetMusicPath:Ljava/lang/String;

    return-object p0
.end method

.method public getCacheFold(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movie"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCoverPicturePath()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->coverPicturePath:Ljava/lang/String;

    return-object p0
.end method

.method public getDescriptionId()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->descriptionId:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->duration:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getLutFilterInstallPath()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->lutFilterInstallPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMusicDuration()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->musicDuration:J

    return-wide v0
.end method

.method public getMusicPath()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->musicPath:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNameId()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->nameId:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviewVideoPath()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->previewVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSectionNum()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->sectionNum:I

    return p0
.end method

.method public getTailFilterInstallPath()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->tailFilterInstallPath:Ljava/lang/String;

    return-object p0
.end method

.method public getTailTransInstallPath()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->tailTransInstallPath:Ljava/lang/String;

    return-object p0
.end method

.method public getThemeSection()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->themeSection:Ljava/util/List;

    return-object p0
.end method

.method public getTimelineFilterInstallPath()Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->timelineFilterInstallPath:Ljava/lang/String;

    return-object p0
.end method

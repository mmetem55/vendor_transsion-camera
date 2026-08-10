.class public Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;
.super Ljava/lang/Object;
.source "MovieTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$NullFilterEffect;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CACHE_FILE_NAME_PREFIX:Ljava/lang/String; = "theme_section_"

.field private static final CACHE_FILE_NAME_SUFFIX:Ljava/lang/String; = ".mp4"

.field private static final CAMERA:Ljava/lang/String; = "Camera"

.field private static final NULL_FILTER:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

.field public static final RENDER_EFFECT_OK:I = 0x0

.field public static final RENDER_EFFECT_SDK_ERROR:I = -0x1

.field public static final RENDER_INVALID_STATE:I = -0x2

.field public static final RENDER_TIME_END:I = -0x3

.field public static final RENDER_WITHOUT_EFFECT:I = -0x4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEMP_FILE_NAME:Ljava/lang/String; = ".movie.tmp"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayOrientation:I

.field private final mDisplaySurfaceHeight:I

.field private final mDisplaySurfaceWidth:I

.field private mDrawTime:J

.field private mFirstFrameTime:J

.field private mFrameCount:J

.field private mFrameTimeStamp:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;

.field private mLutFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

.field private final mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

.field private mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

.field private final mRecordLock:Ljava/lang/Object;

.field private final mRender:Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSetEglContext:Z

.field private final mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

.field private mThemeCurrentSection:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme<",
            "TT;>.ThemeSection;"
        }
    .end annotation
.end field

.field private final mThemeSection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme<",
            "TT;>.ThemeSection;>;"
        }
    .end annotation
.end field

.field private mTimeStamp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MovieTheme"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 468
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$NullFilterEffect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$NullFilterEffect;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->NULL_FILTER:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;II)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mSetEglContext:Z

    .line 51
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplayOrientation:I

    .line 57
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->NULL_FILTER:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mLutFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mRecordLock:Ljava/lang/Object;

    .line 153
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    .line 338
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mTimeStamp:Ljava/util/Map;

    .line 339
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$2;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mFrameTimeStamp:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    .line 62
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getThemeSection()Ljava/util/List;

    move-result-object p1

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mRender:Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    .line 67
    iput p4, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceWidth:I

    .line 68
    iput p5, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceHeight:I

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDrawTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDrawTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mRender:Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeCurrentSection:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-object p1
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mSetEglContext:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/lang/Object;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mRecordLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/util/Map;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mTimeStamp:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;
    .locals 1

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->NULL_FILTER:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/io/File;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->makeCacheFold()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mFirstFrameTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mFirstFrameTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mFrameCount:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mFrameCount:J

    return-wide p1
.end method

.method static synthetic access$908(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)J
    .locals 4

    .line 29
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mFrameCount:J

    return-wide v0
.end method

.method private clearMovieFile()Ljava/lang/String;
    .locals 2

    .line 308
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getMovieFold()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 312
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v1, ".movie.tmp"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 316
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCameraTextureHeight()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceWidth:I

    return p0
.end method

.method private getCameraTextureWidth()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceHeight:I

    return p0
.end method

.method private getMovieFilePath()Ljava/lang/String;
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->clearMovieFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMovieFold()Ljava/lang/String;
    .locals 1

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getExternalStoragePublicDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Camera"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSectionDurations()[J
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 145
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    .line 146
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->getDuration()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getVideoHeight()I
    .locals 2

    .line 126
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplayOrientation:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceWidth:I

    return p0

    .line 127
    :cond_1
    :goto_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceHeight:I

    return p0
.end method

.method private getVideoOrientation()I
    .locals 4

    .line 206
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplayOrientation:I

    const/16 v0, 0x10e

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    const/16 v2, 0x5a

    if-eq p0, v2, :cond_2

    const/16 v3, 0xb4

    if-eq p0, v3, :cond_1

    if-eq p0, v0, :cond_0

    .line 216
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getVideoOrientation no display orientation!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method private getVideoWidth()I
    .locals 2

    .line 118
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplayOrientation:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceHeight:I

    return p0

    .line 119
    :cond_1
    :goto_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceWidth:I

    return p0
.end method

.method private invalidSectionIndex(I)Z
    .locals 0

    if-ltz p1, :cond_1

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private makeCacheFold()Ljava/io/File;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getCacheFold(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p0
.end method

.method private startMuxer(Ljava/lang/String;)V
    .locals 7

    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getCameraTextureWidth()I

    move-result v4

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getCameraTextureHeight()I

    move-result v5

    .line 183
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    .line 184
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mFrameTimeStamp:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;

    const/16 v6, 0xde1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;III)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getVideoOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->prepare()V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->startRecording()V

    .line 188
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMuxer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mMuxer:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearEffectResource()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mLutFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;->clearFilterEffect()V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    .line 275
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->clearFilterEffect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDrawTime()J
    .locals 2

    .line 363
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDrawTime:J

    return-wide v0
.end method

.method public getDuration(I)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    if-ge v2, p1, :cond_0

    .line 240
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->getDuration()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getMovieInfo()Lcom/transsion/camera/feature/mode/movie/MovieInfo;
    .locals 2

    .line 103
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;-><init>()V

    .line 104
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->setWidth(I)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->setHeight(I)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplayOrientation:I

    .line 106
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->setOrientation(I)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;

    move-result-object v0

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getSectionDurations()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->setDurations([J)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;

    move-result-object v0

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getMovieFold()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->setFolder(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;

    move-result-object v0

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getMovieFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->setTempPath(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->build()Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMusicAssetFD()Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getMusicPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getPlayMovieFeed(II)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;
    .locals 9

    if-ltz p1, :cond_4

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_4

    if-gez p2, :cond_0

    goto :goto_3

    .line 80
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    .line 81
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getAssetMusicFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getVideoWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->appendSize(II)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplayOrientation:I

    .line 83
    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->appendOrientation(I)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;

    const/4 v1, 0x0

    if-le p1, p2, :cond_1

    sub-int p2, p1, p2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_1
    if-ge v1, p1, :cond_3

    .line 89
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    if-ge v1, p2, :cond_2

    .line 91
    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->getDuration()J

    move-result-wide v7

    add-long/2addr v2, v7

    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->getRecordFilePath()Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-static {v6}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->getTransInstallPath()Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-virtual {v0, v7, v8}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->appendPart(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;

    .line 96
    :goto_2
    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->appendAudioTrim(JJ)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;

    .line 99
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->build()Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    move-result-object p0

    return-object p0

    .line 77
    :cond_4
    :goto_3
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid count: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSectionNum()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public installFilterEffect()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mRender:Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getLutFilterInstallPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->installEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mLutFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;->clearFilterEffect()V

    .line 282
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mLutFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    .line 283
    sget-object v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installFilterEffect for theme:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mLutFilter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    .line 285
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->installFilterEffect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(IIIIZ)I
    .locals 7

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mSetEglContext:Z

    if-nez v1, :cond_0

    .line 353
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->setEglContext(Landroid/opengl/EGLContext;)V

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mSetEglContext:Z

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeCurrentSection:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    if-eqz v1, :cond_1

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p2

    move v6, p5

    .line 357
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->draw(IIIIZ)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method public renderBaseFilter(IIII)I
    .locals 7

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mLutFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    const-wide/16 v5, 0x0

    move v1, p3

    move v2, p4

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;->render(IIIIJ)I

    move-result p0

    return p0
.end method

.method public setRecordOrientation(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 202
    :goto_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplayOrientation:I

    return-void
.end method

.method public startRecording(I)J
    .locals 5

    .line 222
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->invalidSectionIndex(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeCurrentSection:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->getDuration()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeCurrentSection:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->clearCacheFile()V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeCurrentSection:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->getRecordFilePath()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->startMuxer(Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeCurrentSection:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->getDuration()J

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v1
.end method

.method public stopRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mRecordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mRecordLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 257
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mTimeStamp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 259
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording finish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 257
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateFilterEffect()V
    .locals 2

    .line 290
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getCameraTextureWidth()I

    move-result v0

    .line 291
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getCameraTextureHeight()I

    move-result v1

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mLutFilter:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;->updateFilterEffect(II)V

    return-void
.end method

.method public updateFilterEffect(I)V
    .locals 3

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getCameraTextureWidth()I

    move-result v0

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getCameraTextureHeight()I

    move-result v1

    if-ltz p1, :cond_0

    .line 298
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeSection:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$ThemeSection;->updateFilterEffect(II)V

    :cond_0
    return-void
.end method

.method public updateRecordedHistory(I)V
    .locals 2

    .line 263
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;-><init>(Landroid/content/Context;)V

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->setThemeId(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;

    move-result-object v0

    .line 265
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->setRecordedCount(I)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplayOrientation:I

    .line 266
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->setOrientation(I)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceWidth:I

    .line 267
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->setWidth(I)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;

    move-result-object p1

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->mDisplaySurfaceHeight:I

    .line 268
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->setHeight(I)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->save()V

    return-void
.end method

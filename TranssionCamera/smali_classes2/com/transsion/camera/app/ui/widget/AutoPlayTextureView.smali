.class public Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;
.super Landroid/view/TextureView;
.source "AutoPlayTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mPlayer:Landroid/media/MediaPlayer;

.field private mVideoSource:Ljava/lang/String;

.field private mVideoSurface:Landroid/view/Surface;


# direct methods
.method public static synthetic $r8$lambda$owCT7lr4Dc857ZYI9X3175zRuCI(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->lambda$startCodec$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 26
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 26
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 34
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 26
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 39
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 26
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 44
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 48
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 49
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->AutoPlayVideoView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->AutoPlayVideoView_video_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static synthetic lambda$startCodec$0(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 66
    sget-object v0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method private startCodec(Landroid/view/Surface;)V
    .locals 3

    .line 58
    sget-object v0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCodec surface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 61
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCodec mVideoSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 80
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 81
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 82
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->startCodec(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 93
    sget-object p1, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

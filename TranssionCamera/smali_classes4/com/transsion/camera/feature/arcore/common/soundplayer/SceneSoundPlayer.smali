.class public Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;
.super Ljava/lang/Object;
.source "SceneSoundPlayer.java"


# instance fields
.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->owner:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private initMediaPlayer(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method private pauseMediaPlayer()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private startMediaPlayer()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method private stopMediaPlayer()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public releaseMedaiPlayer()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->stopMediaPlayer()V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public switchSoundEffect(I)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->releaseMedaiPlayer()V

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->initMediaPlayer(I)V

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->startMediaPlayer()V

    return-void
.end method

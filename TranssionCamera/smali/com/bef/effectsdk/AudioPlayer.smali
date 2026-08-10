.class public Lcom/bef/effectsdk/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioPlayer"


# instance fields
.field private mFilename:Ljava/lang/String;

.field private mIsPrepared:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    .line 28
    iput-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mFilename:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bef/effectsdk/AudioPlayer;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/bef/effectsdk/AudioPlayer;JII)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/AudioPlayer;->nativeOnInfo(JII)V

    return-void
.end method

.method static synthetic access$200(Lcom/bef/effectsdk/AudioPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/bef/effectsdk/AudioPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/bef/effectsdk/AudioPlayer;JII)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/AudioPlayer;->nativeOnError(JII)V

    return-void
.end method

.method static synthetic access$402(Lcom/bef/effectsdk/AudioPlayer;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bef/effectsdk/AudioPlayer;J)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/bef/effectsdk/AudioPlayer;->nativeOnPrepared(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/bef/effectsdk/AudioPlayer;J)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/bef/effectsdk/AudioPlayer;->nativeOnCompletion(J)V

    return-void
.end method

.method private native nativeOnCompletion(J)V
.end method

.method private native nativeOnError(JII)V
.end method

.method private native nativeOnInfo(JII)V
.end method

.method private native nativeOnPrepared(J)V
.end method


# virtual methods
.method public getCurrentPlayTime()F
    .locals 1

    .line 265
    iget-object p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_0

    .line 266
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v0, "MediaPlayer is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getTotalPlayTime()F
    .locals 1

    .line 274
    iget-object p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_0

    .line 275
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v0, "MediaPlayer is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public init()I
    .locals 3

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    .line 34
    iget-object v1, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 36
    iget-object v1, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 38
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 39
    new-instance v2, Lcom/bef/effectsdk/AudioPlayer$1;

    invoke-direct {v2, p0}, Lcom/bef/effectsdk/AudioPlayer$1;-><init>(Lcom/bef/effectsdk/AudioPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 47
    iget-object v1, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/bef/effectsdk/AudioPlayer$2;

    invoke-direct {v2, p0}, Lcom/bef/effectsdk/AudioPlayer$2;-><init>(Lcom/bef/effectsdk/AudioPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 63
    iget-object v1, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/bef/effectsdk/AudioPlayer$3;

    invoke-direct {v2, p0}, Lcom/bef/effectsdk/AudioPlayer$3;-><init>(Lcom/bef/effectsdk/AudioPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 73
    iget-object v1, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/bef/effectsdk/AudioPlayer$4;

    invoke-direct {v2, p0}, Lcom/bef/effectsdk/AudioPlayer$4;-><init>(Lcom/bef/effectsdk/AudioPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v1, "MediaPlayer is null!"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 193
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 197
    :cond_0
    iget-boolean p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    if-nez p0, :cond_1

    .line 198
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 204
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    sget-object v0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer isPlaying exception. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public pause()Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const-string v2, "MediaPlayer is null!"

    if-nez v0, :cond_0

    .line 159
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 163
    :cond_0
    iget-boolean p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    if-nez p0, :cond_1

    .line 164
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 168
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 p0, 0x1

    return p0
.end method

.method public release()I
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 88
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    sget-object v1, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer stop exception on release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resume()Z
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const-string v2, "MediaPlayer is null!"

    if-nez v0, :cond_0

    .line 176
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 180
    :cond_0
    iget-boolean p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    if-nez p0, :cond_1

    .line 181
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 185
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public seek(I)Z
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const-string v2, "MediaPlayer is null!"

    if-nez v0, :cond_0

    .line 216
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 220
    :cond_0
    iget-boolean p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    if-nez p0, :cond_1

    .line 221
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 226
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    sget-object p1, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer seek exception. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/bef/effectsdk/AudioPlayer;->init()I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 108
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 109
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    sget-object v1, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer setDataSource exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    iput-object p1, p0, Lcom/bef/effectsdk/AudioPlayer;->mFilename:Ljava/lang/String;

    return-void
.end method

.method public setLoop(Z)Z
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 254
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    const-string p1, "MediaPlayer is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 258
    :cond_0
    sget-object v0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set isLoop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setNativePtr(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/bef/effectsdk/AudioPlayer;->mNativePtr:J

    return-void
.end method

.method public setVolume(F)Z
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const-string v2, "MediaPlayer is null!"

    if-nez v0, :cond_0

    .line 238
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 242
    :cond_0
    iget-boolean p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    if-nez p0, :cond_1

    .line 243
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 247
    :cond_1
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public startPlay()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    if-nez v1, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    .line 129
    :cond_1
    iget-object p0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    sget-object v0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer setDataSource exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 139
    sget-object p0, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v0, "MediaPlayer is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_0
    iget-boolean v1, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    if-eqz v1, :cond_1

    .line 145
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 146
    iget-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    sget-object v1, Lcom/bef/effectsdk/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer stop exception on stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/bef/effectsdk/AudioPlayer;->mIsPrepared:Z

    :cond_1
    return-void
.end method

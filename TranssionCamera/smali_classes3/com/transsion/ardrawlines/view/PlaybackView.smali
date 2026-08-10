.class public Lcom/transsion/ardrawlines/view/PlaybackView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PlaybackView.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;
    }
.end annotation


# static fields
.field public static final ALARM_START:Ljava/lang/String; = "com.android.deskclock.ALARM_ALERT"

.field public static final ALARM_STOP:Ljava/lang/String; = "com.android.deskclock.ALARM_DONE"

.field private static FILE_PROVIDER_AUTHORITY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmReceiver:Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;

.field private mImageFile:Ljava/io/File;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsImage:Z

.field private mIsOpen:Z

.field private mMediaFilePath:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPaused:Z

.field private mPlaybackViewListener:Lcom/transsion/ardrawlines/view/IPlaybackViewListener;

.field private mReplayButton:Landroid/widget/ImageButton;

.field private mSurface:Landroid/view/Surface;

.field private mUri:Landroid/net/Uri;

.field private mVideoFile:Ljava/io/File;

.field private mVideoTextureView:Landroid/view/TextureView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcom/transsion/ardrawlines/view/PlaybackView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/view/PlaybackView;->TAG:Ljava/lang/String;

    const-string v0, "${applicationId}.fileprovider"

    .line 40
    sput-object v0, Lcom/transsion/ardrawlines/view/PlaybackView;->FILE_PROVIDER_AUTHORITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPaused:Z

    .line 70
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPaused:Z

    .line 75
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPaused:Z

    .line 80
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$layout;->view_playback:I

    invoke-static {v0, v1, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/view/PlaybackView;->FILE_PROVIDER_AUTHORITY:Ljava/lang/String;

    const/4 v0, -0x1

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 94
    sget v0, Lcom/transsion/ardrawlines/R$id;->image_playback:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mImageView:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcom/transsion/ardrawlines/R$id;->video_playback:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mVideoTextureView:Landroid/view/TextureView;

    .line 98
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 101
    sget v0, Lcom/transsion/ardrawlines/R$id;->replay_button:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mReplayButton:Landroid/widget/ImageButton;

    .line 102
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;-><init>(Lcom/transsion/ardrawlines/view/PlaybackView;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mAlarmReceiver:Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;

    .line 105
    invoke-direct {p0, v0}, Lcom/transsion/ardrawlines/view/PlaybackView;->registerAlarmReceiver(Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;)V

    return-void
.end method

.method private prepareMediaPlayer(Landroid/net/Uri;)V
    .locals 2

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 224
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 226
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 228
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 229
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x1

    .line 230
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x3

    .line 231
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 233
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 235
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    const-string p1, "ml_record_duration"

    .line 236
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerAlarmReceiver(Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;)V
    .locals 2

    .line 343
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.deskclock.ALARM_DONE"

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsOpen:Z

    .line 142
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mReplayButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 150
    :cond_0
    iput-object v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaFilePath:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mUri:Landroid/net/Uri;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 156
    iput-object v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 159
    :cond_2
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPlaybackViewListener:Lcom/transsion/ardrawlines/view/IPlaybackViewListener;

    if-eqz p0, :cond_3

    .line 160
    invoke-interface {p0}, Lcom/transsion/ardrawlines/view/IPlaybackViewListener;->onPlaybackViewClosed()V

    :cond_3
    return-void
.end method

.method public getVideoBGBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 208
    new-instance p0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    const-wide/16 v0, 0x0

    .line 215
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public isOpen()Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsOpen:Z

    return p0
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 310
    sget-object p0, Lcom/transsion/ardrawlines/view/PlaybackView;->TAG:Ljava/lang/String;

    const-string p1, "FocusChange: OTHERS"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_0
    sget-object p1, Lcom/transsion/ardrawlines/view/PlaybackView;->TAG:Ljava/lang/String;

    const-string v0, "FocusChange: AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->pause()V

    goto :goto_0

    .line 306
    :cond_1
    sget-object p1, Lcom/transsion/ardrawlines/view/PlaybackView;->TAG:Ljava/lang/String;

    const-string v0, "FocusChange: AUDIOFOCUS_LOSS"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->close()V

    goto :goto_0

    .line 302
    :cond_2
    sget-object p1, Lcom/transsion/ardrawlines/view/PlaybackView;->TAG:Ljava/lang/String;

    const-string v0, "FocusChange: AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->pause()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/ardrawlines/R$id;->replay_button:I

    if-ne p1, v0, :cond_0

    .line 245
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 247
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 248
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mReplayButton:Landroid/widget/ImageButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 316
    iget-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsImage:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mReplayButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 318
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPlaybackViewListener:Lcom/transsion/ardrawlines/view/IPlaybackViewListener;

    if-eqz p0, :cond_1

    .line 322
    invoke-interface {p0, v0}, Lcom/transsion/ardrawlines/view/IPlaybackViewListener;->onPlaybackPlaying(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mAlarmReceiver:Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mAlarmReceiver:Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 332
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 280
    iget-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsImage:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPaused:Z

    if-nez p1, :cond_0

    .line 281
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mReplayButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 282
    sget-object p1, Lcom/transsion/ardrawlines/view/PlaybackView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared: wow mediaPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 285
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 289
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPlaybackViewListener:Lcom/transsion/ardrawlines/view/IPlaybackViewListener;

    if-eqz p0, :cond_1

    .line 290
    invoke-interface {p0, v0}, Lcom/transsion/ardrawlines/view/IPlaybackViewListener;->onPlaybackPlaying(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 256
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mSurface:Landroid/view/Surface;

    .line 257
    iget-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsImage:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/view/PlaybackView;->prepareMediaPlayer(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mSurface:Landroid/view/Surface;

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 275
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public open(Ljava/io/File;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsOpen:Z

    .line 113
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsImage:Z

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaFilePath:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/ardrawlines/view/PlaybackView;->FILE_PROVIDER_AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object p2, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mImageFile:Ljava/io/File;

    goto :goto_0

    .line 121
    :cond_0
    iget-object p2, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object p2, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaFilePath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/transsion/ardrawlines/view/PlaybackView;->getVideoBGBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 124
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mVideoFile:Ljava/io/File;

    .line 127
    sget-object p1, Lcom/transsion/ardrawlines/view/PlaybackView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open: wow "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mSurface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/view/PlaybackView;->prepareMediaPlayer(Landroid/net/Uri;)V

    .line 132
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPlaybackViewListener:Lcom/transsion/ardrawlines/view/IPlaybackViewListener;

    if-eqz p0, :cond_2

    .line 133
    invoke-interface {p0}, Lcom/transsion/ardrawlines/view/IPlaybackViewListener;->onPlaybackViewOpened()V

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPaused:Z

    .line 175
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsImage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 177
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mReplayButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 178
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPaused:Z

    .line 187
    iget-boolean v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsOpen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPlaybackViewListener:Lcom/transsion/ardrawlines/view/IPlaybackViewListener;

    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v1}, Lcom/transsion/ardrawlines/view/IPlaybackViewListener;->onPlaybackViewResume()V

    .line 190
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mIsImage:Z

    if-nez v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mReplayButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPlaybackViewListener:Lcom/transsion/ardrawlines/view/IPlaybackViewListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v1, v2}, Lcom/transsion/ardrawlines/view/IPlaybackViewListener;->onPlaybackPlaying(Z)V

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 198
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setPlaybackViewListener(Lcom/transsion/ardrawlines/view/IPlaybackViewListener;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView;->mPlaybackViewListener:Lcom/transsion/ardrawlines/view/IPlaybackViewListener;

    return-void
.end method

.class public Lcom/transsion/ardrawlines/service/VolumeChangeObserver;
.super Ljava/lang/Object;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ardrawlines/service/VolumeChangeObserver$RingerModeChangeListener;,
        Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;,
        Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static PhoneRingerMode:I = -0x1

.field private static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "VolumeChangeObserver"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static attributesBuilder:Landroid/media/AudioAttributes$Builder;

.field private static audioFocusVoice:Landroid/media/AudioFocusRequest;

.field private static mContextAudioManager:Landroid/media/AudioManager;

.field private static requestBuilder:Landroid/media/AudioFocusRequest$Builder;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mRegistered:Z

.field private mRingerModeChangeListener:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$RingerModeChangeListener;

.field private mVolumeBroadcastReceiver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;

.field private mVolumeChangeListener:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mRegistered:Z

    .line 34
    iput-object p1, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static buildMediaFocusParameters(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/ARDrawLinesActivity;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mContextAudioManager:Landroid/media/AudioManager;

    .line 44
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    sput-object p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->attributesBuilder:Landroid/media/AudioAttributes$Builder;

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 46
    new-instance p0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {p0, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    sput-object p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->requestBuilder:Landroid/media/AudioFocusRequest$Builder;

    .line 47
    sget-object v0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->attributesBuilder:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    new-instance v0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver$1;

    invoke-direct {v0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver$1;-><init>()V

    .line 48
    invoke-virtual {p0, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 54
    sget-object p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->requestBuilder:Landroid/media/AudioFocusRequest$Builder;

    invoke-virtual {p0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p0

    sput-object p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->audioFocusVoice:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public static getContextAudioManager()Landroid/media/AudioManager;
    .locals 1

    .line 39
    sget-object v0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mContextAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static releaseMediaFocus()V
    .locals 2

    .line 62
    sget-object v0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mContextAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->audioFocusVoice:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    return-void
.end method

.method public static requestMediaFocus()V
    .locals 2

    .line 58
    sget-object v0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mContextAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->audioFocusVoice:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    return-void
.end method


# virtual methods
.method public getCurrentMusicVolume()I
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMaxMusicVolume()I
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method public getRingerModeChangeListener()Lcom/transsion/ardrawlines/service/VolumeChangeObserver$RingerModeChangeListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mRingerModeChangeListener:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$RingerModeChangeListener;

    return-object p0
.end method

.method public getVolumeChangeListener()Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mVolumeChangeListener:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;

    return-object p0
.end method

.method public registerReceiver()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->unregisterReceiver()V

    .line 120
    new-instance v0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;-><init>(Lcom/transsion/ardrawlines/service/VolumeChangeObserver;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mVolumeBroadcastReceiver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mVolumeBroadcastReceiver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mRegistered:Z

    return-void
.end method

.method public setMicMute(Z)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    return-void
.end method

.method public setRingerModeChangeListener(Lcom/transsion/ardrawlines/service/VolumeChangeObserver$RingerModeChangeListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mRingerModeChangeListener:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$RingerModeChangeListener;

    return-void
.end method

.method public setSystemMusicMute(Z)V
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 95
    invoke-virtual {p0, v0, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    return-void
.end method

.method public setVolumeChangeListener(Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mVolumeChangeListener:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mVolumeBroadcastReceiver:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mVolumeChangeListener:Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->mRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

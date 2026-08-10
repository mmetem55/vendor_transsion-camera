.class Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ardrawlines/service/VolumeChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeBroadcastReceiver"
.end annotation


# instance fields
.field private mObserverWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/service/VolumeChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/ardrawlines/service/VolumeChangeObserver;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;->mObserverWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 173
    iget-object p0, p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeBroadcastReceiver;->mObserverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->getVolumeChangeListener()Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->getCurrentMusicVolume()I

    move-result p0

    if-ltz p0, :cond_0

    .line 179
    invoke-interface {p1, p0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver$VolumeChangeListener;->onVolumeChanged(I)V

    :cond_0
    return-void
.end method

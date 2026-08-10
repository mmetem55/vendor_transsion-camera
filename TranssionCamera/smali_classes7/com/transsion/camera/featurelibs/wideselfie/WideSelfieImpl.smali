.class Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;
.super Ljava/lang/Object;
.source "WideSelfieImpl.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;,
        Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "jniwideselfie"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile mLock:Ljava/lang/Object;


# instance fields
.field private mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

.field private mNativeContext:J

.field private mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mLock:Ljava/lang/Object;

    const-string v0, "jniwideselfie"

    .line 50
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeSetup(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mNativeContext:J

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;)Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    return-object p0
.end method

.method private initEventHandler()V
    .locals 3

    .line 77
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    new-instance v2, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$1;)V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v2, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$1;)V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    goto :goto_0

    .line 82
    :cond_1
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    :goto_0
    return-void
.end method

.method private native nativeConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeProcess(I[B[Landroid/graphics/Rect;)Z
.end method

.method private native nativeReset()Z
.end method

.method private native nativeSetup(Ljava/lang/Object;)J
.end method

.method private native nativeUnInit()Z
.end method

.method private static postEventFromNative(Ljava/lang/ref/WeakReference;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;

    if-nez p0, :cond_0

    .line 137
    sget-object p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "postEventFromNative wideSelfie is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z

    move-result p0

    .line 70
    sget-object p1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config wide selfie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public init()Z
    .locals 4

    .line 59
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeInit()Z

    move-result p0

    .line 61
    sget-object v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init wide selfie "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public process(ILandroid/util/Pair;[Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;[",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 102
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [B

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeProcess(I[B[Landroid/graphics/Rect;)Z

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()Z
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeReset()Z

    move-result p0

    .line 113
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset wide selfie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 89
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    return-void

    .line 93
    :cond_0
    new-instance v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;

    invoke-direct {v1, p1, v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$1;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->initEventHandler()V

    return-void
.end method

.method public unInit()Z
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mEventHandler:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;

    .line 125
    :cond_0
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->nativeUnInit()Z

    move-result p0

    .line 127
    sget-object v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unInit wide selfie "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

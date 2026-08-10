.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;
.super Landroid/os/Handler;
.source "TimeLapseVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# static fields
.field private static final MSG_STOP_RECORDING:I = 0x1

.field private static final MSG_VIDEO_RECORDING_STARTED:I


# instance fields
.field private final mTimeLapseVideoMode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V
    .locals 1

    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;->mTimeLapseVideoMode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$MainHandler;->mTimeLapseVideoMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    if-nez p0, :cond_0

    .line 120
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleMessage mode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onBackPressed()Z

    :goto_0
    return-void
.end method

.class Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;
.super Landroid/os/Handler;
.source "SlowMotionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/SlowMotionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mSlowMotionModeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/video/SlowMotionMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->mSlowMotionModeRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/feature/mode/video/SlowMotionMode$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;)V

    return-void
.end method

.method private stopRecording()V
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->mSlowMotionModeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;

    if-nez p0, :cond_0

    .line 134
    sget-object p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "slowMotionMode has been gc"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->stopSlowMotionRecording()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 125
    sget-object p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;->stopRecording()V

    :goto_0
    return-void
.end method

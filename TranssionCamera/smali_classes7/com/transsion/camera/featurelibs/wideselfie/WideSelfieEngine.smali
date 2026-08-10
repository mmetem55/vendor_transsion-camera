.class public Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;
.super Ljava/lang/Object;
.source "WideSelfieEngine.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;
    }
.end annotation


# static fields
.field private static final ENGINE_THREAD_NAME:Ljava/lang/String; = "WideSelfieEngine"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mEngineHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WideSelfieEngine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$1;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public init()Z
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v0
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

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    .line 63
    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    const/4 p3, 0x4

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p3, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reset()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    const/4 p0, 0x1

    return p0
.end method

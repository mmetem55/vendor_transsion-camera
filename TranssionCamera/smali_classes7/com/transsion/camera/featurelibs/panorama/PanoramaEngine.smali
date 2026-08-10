.class public Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;
.super Ljava/lang/Object;
.source "PanoramaEngine.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/panorama/IPanorama;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;
    }
.end annotation


# static fields
.field private static final ENGINE_THREAD_NAME:Ljava/lang/String; = "PanoramaEngine"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mEngineHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PanoramaEngine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v1, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$1;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 23
    sget-object v0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public init(Z)Z
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v0
.end method

.method public process(ILandroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;)V"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reset()Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    const/4 p0, 0x1

    return p0
.end method

.class public Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;
.super Ljava/lang/Object;
.source "CameraThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager$Holder;
    }
.end annotation


# instance fields
.field private final mRespondThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Response_Camera_AR3.0"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;->mRespondThread:Landroid/os/HandlerThread;

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager$Holder;->instance:Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;

    return-object v0
.end method


# virtual methods
.method public getRespondThread()Landroid/os/HandlerThread;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;->mRespondThread:Landroid/os/HandlerThread;

    return-object p0
.end method

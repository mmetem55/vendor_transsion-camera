.class public Lcom/transsion/camera/adapter/CameraAgentFactory;
.super Ljava/lang/Object;
.source "CameraAgentFactory.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

.field private static sCameraAgentClientCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraAgentFactory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraAgentFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static declared-synchronized createCameraAgent(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/transsion/camera/adapter/CameraAgentFactory;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    .line 16
    sput v2, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgentClientCount:I

    goto :goto_0

    .line 18
    :cond_0
    sget p0, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgentClientCount:I

    add-int/2addr p0, v2

    sput p0, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgentClientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;
    .locals 2

    const-class v0, Lcom/transsion/camera/adapter/CameraAgentFactory;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

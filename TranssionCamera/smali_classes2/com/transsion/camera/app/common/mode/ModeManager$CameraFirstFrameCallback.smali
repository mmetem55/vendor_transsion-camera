.class Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraFirstFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    return-void
.end method


# virtual methods
.method public onFirstSteadyFrame(Ljava/lang/String;)V
    .locals 2

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 312
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFirstSteadyFrame, mModeChangeLock notifyAll"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 314
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

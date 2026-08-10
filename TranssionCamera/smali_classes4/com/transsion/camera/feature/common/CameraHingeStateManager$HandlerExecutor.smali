.class Lcom/transsion/camera/feature/common/CameraHingeStateManager$HandlerExecutor;
.super Ljava/lang/Object;
.source "CameraHingeStateManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/CameraHingeStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerExecutor"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager$HandlerExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "system HandlerExecutor execute"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

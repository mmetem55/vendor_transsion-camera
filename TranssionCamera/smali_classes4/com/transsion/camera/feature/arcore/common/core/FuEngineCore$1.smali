.class Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;
.super Ljava/lang/Object;
.source "FuEngineCore.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceCreated()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceCreated() called"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$100(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->surfaceCreated()V

    const/4 v0, 0x1

    .line 43
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$200(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 5

    const-string v0, "avatar release"

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$100(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->surfaceDestory()V

    .line 50
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$300(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/transsion/camera/utils/StateWait;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$400(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/base/FUItemHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$500(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/base/FUItemHandler;

    move-result-object v1

    new-instance v3, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1$1;-><init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$300(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/transsion/camera/utils/StateWait;

    move-result-object v1

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$600(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/AvatarHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 62
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$600(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/AvatarHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$600(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/AvatarHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/faceunity/pta_art/core/AvatarHandle;->release()V

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$602(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/AvatarHandle;

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$700(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V

    .line 69
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyAllItems()V

    .line 70
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnDeviceLost()V

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->clearEvents()V

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$802(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    .line 73
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 64
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$600(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/AvatarHandle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$600(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/AvatarHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/faceunity/pta_art/core/AvatarHandle;->release()V

    .line 66
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v3, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$602(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/AvatarHandle;

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$700(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V

    .line 69
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyAllItems()V

    .line 70
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnDeviceLost()V

    .line 71
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-virtual {v3}, Lcom/faceunity/pta_art/core/base/BaseCore;->clearEvents()V

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$802(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    .line 73
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    throw v1
.end method

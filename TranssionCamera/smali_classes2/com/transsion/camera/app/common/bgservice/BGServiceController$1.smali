.class Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;
.super Ljava/lang/Object;
.source "BGServiceController.java"

# interfaces
.implements Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/bgservice/BGServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventCompleted(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->access$100(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDied()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->access$200(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->access$200(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 165
    iget-object v3, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {v3}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->access$100(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->access$200(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

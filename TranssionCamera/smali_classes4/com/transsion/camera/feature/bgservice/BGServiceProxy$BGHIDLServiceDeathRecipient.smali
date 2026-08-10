.class Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;
.super Ljava/lang/Object;
.source "BGServiceProxy.java"

# interfaces
.implements Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/bgservice/BGServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BGHIDLServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-static {p1}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->access$000(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 55
    :try_start_0
    iget-object p2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->access$102(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;Lcom/transsion/camera/feature/bgservice/BGService;)Lcom/transsion/camera/feature/bgservice/BGService;

    .line 56
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-static {p1}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->access$200(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;->onServiceDied()V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0xc8

    .line 60
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 61
    iget-object p2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-static {p2}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->access$300(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Lcom/transsion/camera/feature/bgservice/BGService;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 62
    invoke-static {}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "retry BGHIDLService success."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.class Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;
.super Ljava/lang/Object;
.source "BGServiceProxy.java"

# interfaces
.implements Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/bgservice/BGServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(III)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-static {v0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->access$200(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-static {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->access$200(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/bgservice/BgEvent;-><init>(III)V

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;->onEventCompleted(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.class Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;
.super Landroid/os/Handler;
.source "BGServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/bgservice/BGServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/bgservice/BGServiceController;Landroid/os/Looper;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    .line 130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->onBGServiceDied()V

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    iget v0, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mImgReaderId:I

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->access$000(Lcom/transsion/camera/app/common/bgservice/BGServiceController;I)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 140
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->notifyBgEventCallback(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

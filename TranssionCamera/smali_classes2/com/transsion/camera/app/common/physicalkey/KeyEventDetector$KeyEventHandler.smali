.class Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;
.super Landroid/os/Handler;
.source "KeyEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Landroid/os/Looper;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    .line 36
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->access$000(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onLongPressStart(I)V

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->access$102(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Z)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->access$000(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onLongPressCancel(I)V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->access$102(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;Z)Z

    goto :goto_0

    .line 50
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->access$000(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onLongPress(I)V

    goto :goto_0

    .line 43
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$KeyEventHandler;->this$0:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->access$000(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;->onClick(I)V

    :goto_0
    return-void
.end method

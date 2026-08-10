.class Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;
.super Landroid/os/Handler;
.source "CommonVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 196
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(I)Z

    goto :goto_0

    .line 198
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSnapShotStart()V

    :goto_0
    return-void
.end method

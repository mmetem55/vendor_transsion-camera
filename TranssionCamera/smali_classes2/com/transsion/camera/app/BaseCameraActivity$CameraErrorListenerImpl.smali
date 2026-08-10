.class Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraErrorListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V
    .locals 0

    .line 1117
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onCameraError(I)V
    .locals 2

    .line 1120
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 1121
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1122
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1123
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1600(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

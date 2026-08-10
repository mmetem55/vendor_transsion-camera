.class Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 1411
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V
    .locals 0

    .line 1411
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onCameraStateChanged(I)V
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_0

    .line 1415
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onCameraStateChanged(I)V

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_1

    .line 1418
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateCameraState(I)V

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1421
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1422
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1423
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1600(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 1425
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2500(Lcom/transsion/camera/app/BaseCameraActivity;)V

    :cond_3
    :goto_0
    return-void
.end method

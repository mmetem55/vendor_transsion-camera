.class Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraDisconnectedImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 1127
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V
    .locals 0

    .line 1127
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onCameraDeviceDisconnected()V
    .locals 1

    .line 1130
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1600(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

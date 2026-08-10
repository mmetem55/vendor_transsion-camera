.class Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;
.super Ljava/lang/Object;
.source "BrightnessValue.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/bv/BrightnessValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;->this$0:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;->this$0:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->access$000(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;)Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;->this$0:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->access$000(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;)Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;->this$0:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;->this$0:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->access$000(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;)Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;->this$0:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->access$000(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;)Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;->this$0:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->access$000(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;)Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    :cond_0
    return-void
.end method

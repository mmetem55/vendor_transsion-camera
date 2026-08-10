.class Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection$1;
.super Ljava/lang/Object;
.source "DistortionCorrection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection$1;->this$0:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection$1;->this$0:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;->access$000(Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection$1;->this$0:Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/distortioncorrection/DistortionCorrection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method

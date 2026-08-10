.class Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure$1;
.super Ljava/lang/Object;
.source "StereoParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .locals 3

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualLensWarningCallback,type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->refreshToUI(I)V

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;)Lcom/transsion/camera/feature/setting/stereo/Stereo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->updateWarningTypeAndSendRequest(I)V

    return-void
.end method

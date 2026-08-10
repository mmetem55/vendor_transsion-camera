.class Lcom/transsion/camera/feature/setting/stereo/Stereo$2;
.super Ljava/lang/Object;
.source "Stereo.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/stereo/Stereo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/stereo/Stereo;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;->this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureEnd()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    return-void
.end method

.method public takePictureEnd(Z)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;->this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->access$102(Lcom/transsion/camera/feature/setting/stereo/Stereo;Z)Z

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;->this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->access$100(Lcom/transsion/camera/feature/setting/stereo/Stereo;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->access$200(Lcom/transsion/camera/feature/setting/stereo/Stereo;Z)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;->this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->access$400(Lcom/transsion/camera/feature/setting/stereo/Stereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;->this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public takePictureStart()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;->this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->access$102(Lcom/transsion/camera/feature/setting/stereo/Stereo;Z)Z

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;->this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->access$100(Lcom/transsion/camera/feature/setting/stereo/Stereo;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->access$200(Lcom/transsion/camera/feature/setting/stereo/Stereo;Z)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;->this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->access$300(Lcom/transsion/camera/feature/setting/stereo/Stereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;->this$0:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

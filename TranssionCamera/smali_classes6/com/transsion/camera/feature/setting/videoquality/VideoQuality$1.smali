.class Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;
.super Ljava/lang/Object;
.source "VideoQuality.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$200(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updatePreviewState(Z)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$400(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$200(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updatePreviewState(Z)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$300(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

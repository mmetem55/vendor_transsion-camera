.class Lcom/transsion/camera/feature/setting/zoom/Zoom$2;
.super Ljava/lang/Object;
.source "Zoom.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/zoom/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$600(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$700(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->showTeleTips()V

    goto :goto_1

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$800(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->updatePreviewState(Z)V

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$1000(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$600(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$700(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$800(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->updatePreviewState(Z)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$900(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 125
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 127
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

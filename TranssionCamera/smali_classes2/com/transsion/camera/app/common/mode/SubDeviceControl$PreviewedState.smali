.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SubDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method public static synthetic $r8$lambda$P_0HjAa9XaypYMX49G3MGtR7ET4(Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->lambda$shutterSoundPlay$0(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1206
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$shutterSoundPlay$0(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .locals 0

    .line 1324
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "shutterSoundPlay, onPlayDone"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1326
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method cancelTakePicture()V
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->cancelTakePicture()V

    .line 1275
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 1276
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStarted()V

    return-void
.end method

.method changeParameter(Ljava/lang/String;)V
    .locals 5

    .line 1338
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1342
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v1

    .line 1343
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PreviewedState], changeParameter restartpreview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_1

    .line 1345
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1346
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 1348
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :cond_2
    :goto_0
    return-void
.end method

.method changeParameterSelf(Ljava/lang/String;)V
    .locals 5

    .line 1354
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1358
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    move-result v1

    .line 1359
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PreviewedState], changeParameterSelf restartpreview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_1

    .line 1361
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1362
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 1364
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :cond_2
    :goto_0
    return-void
.end method

.method configCommand(Ljava/lang/String;)V
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method enableVideoAutoFlash(Z)V
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1387
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->enableVideoAutoFlash(Z)V

    return-void
.end method

.method onCameraError(I)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$902(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)Lcom/transsion/camera/adapter/CameraProxy;

    .line 1215
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    .line 1216
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceError(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 2

    .line 1320
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/adapter/CameraProxy;->shutterSoundPlay(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method shutterSoundPlay(Ljava/lang/String;)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1315
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->shutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method snapShotForVideoHDR()V
    .locals 7

    .line 1424
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1428
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getOrientationInfo(Ljava/lang/String;)I

    move-result v0

    .line 1431
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 1432
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2800(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 1434
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCurShutterPriority()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/adapter/CameraProxy;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;I)V

    return-void
.end method

.method startContinuousShot(I)V
    .locals 7

    .line 1281
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1285
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getOrientationInfo(Ljava/lang/String;)I

    move-result v0

    .line 1288
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 1289
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2800(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 1291
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$3100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$3200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    move-result-object v4

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCurShutterPriority()I

    move-result v6

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/adapter/CameraProxy;->startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;II)V

    return-void
.end method

.method startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1374
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getVideoOrientationInfo(Ljava/lang/String;)I

    move-result v0

    .line 1377
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setVideoOrientation(I)V

    .line 1378
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    .line 1379
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$3300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    return-void
.end method

.method stopContinuousShot()V
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1299
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->stopContinuousShot()V

    return-void
.end method

.method stopContinuousShotCount()V
    .locals 1

    .line 1304
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1307
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->stopContinuousShotCount()V

    return-void
.end method

.method stopPreview()V
    .locals 2

    .line 1235
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->stopPreview()V

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 1239
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyStopPreview(Ljava/lang/String;)V

    .line 1242
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    return-void
.end method

.method stopRepeating()V
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->stopRepeating()V

    :cond_0
    return-void
.end method

.method takePicture()V
    .locals 8

    .line 1254
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureStarted()V

    const/4 v0, 0x0

    .line 1259
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getOrientationInfo(Ljava/lang/String;)I

    move-result v0

    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 1263
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2800(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 1265
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$3000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    move-result-object v5

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1266
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isNeedDeviceCaptureSound()Z

    move-result v6

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCurShutterPriority()I

    move-result v7

    .line 1265
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/adapter/CameraProxy;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZI)V

    return-void
.end method

.method updateAuxSurfaceModeSupport(Z)V
    .locals 1

    .line 1400
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1403
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method updateAuxSurfaceStatus(Z)V
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1395
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceStatus(Z)V

    return-void
.end method

.method updateBackgroundSurfaceModeSupport(Z)V
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1419
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateBackgroundSurfaceModeSupport(Z)V

    return-void
.end method

.method updateBackgroundSurfaceStatus(Z)V
    .locals 1

    .line 1408
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1411
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateBackgroundSurfaceStatus(Z)V

    return-void
.end method

.method updateOutputChannel()V
    .locals 4

    .line 1225
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->channelReadyForUpdate(Landroid/util/Size;)Z

    move-result v0

    .line 1226
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOutputChannel channelReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",camera state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->access$2200(Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopPreview()V

    .line 1229
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    :cond_0
    return-void
.end method

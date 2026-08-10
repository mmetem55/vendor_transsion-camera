.class abstract Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
.super Ljava/lang/Object;
.source "SuperNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CaptureFlow"
.end annotation


# instance fields
.field protected mIsCapturing:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 674
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    return-void
.end method

.method private refreshShutterUI()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getShutterTypeSelftimerOff()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 687
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method getShutterTypeSelfTimerOff()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method getType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isNeedDeviceCaptureSound()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onCaptureDone()Z
    .locals 3

    .line 734
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onCaptureDone. mIsCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 735
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 736
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    .line 737
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->isNeedDeviceCaptureSound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 744
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    :cond_1
    return v1
.end method

.method onCaptureStart()V
    .locals 5

    const/4 v0, 0x1

    .line 719
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    .line 720
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->isNeedDeviceCaptureSound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_shutter_sound"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 723
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 724
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CaptureFlow] onCaptureStart. shutterValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", flow: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x96

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    return-void
.end method

.method onEnter()V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onEnter: , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 698
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->refreshShutterUI()V

    return-void
.end method

.method onExit()V
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$2400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onExit: , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method onSettingChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onShutterClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onShutterStart()V
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onShutterStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

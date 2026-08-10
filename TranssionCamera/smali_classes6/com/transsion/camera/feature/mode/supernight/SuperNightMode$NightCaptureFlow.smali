.class Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;
.super Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
.source "SuperNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NightCaptureFlow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    return-void
.end method


# virtual methods
.method getType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method onCaptureDone()Z
    .locals 2

    .line 805
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method onCaptureStart()V
    .locals 2

    .line 797
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureStart()V

    .line 798
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->superNightAlgorithm(I)V

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->getType()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;IZ)V

    return-void
.end method

.method onEnter()V
    .locals 2

    .line 783
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 785
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "key_super_night"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method onExit()V
    .locals 2

    .line 790
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onExit()V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$3900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "key_super_night"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method onShutterStart()V
    .locals 3

    .line 817
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onShutterStart()V

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureFlow] onShutterStart, mIsCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 819
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->mIsCapturing:Z

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->startProcessStepAnim(Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.class Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;
.super Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
.source "SuperNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StableNightCaptureFlow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    return-void
.end method


# virtual methods
.method getShutterTypeSelfTimerOff()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method onCaptureDone()Z
    .locals 2

    .line 862
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$5300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 865
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method onCaptureStart()V
    .locals 2

    .line 854
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureStart()V

    .line 855
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->superNightAlgorithm(I)V

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$5200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 857
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->getType()I

    move-result p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;IZ)V

    return-void
.end method

.method onEnter()V
    .locals 2

    .line 838
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V

    .line 839
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const/4 v1, 0x1

    .line 840
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getStableNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 839
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 841
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$4900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "key_super_night"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method onExit()V
    .locals 2

    .line 846
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onExit()V

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$5000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const/4 v1, 0x0

    .line 848
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getStableNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 847
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 849
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$5100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "key_super_night"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method onSettingChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "key_self_timer_status"

    .line 874
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const-string p0, "status_self_timer_begin"

    .line 875
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "status_self_timer_end"

    .line 876
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1
.end method

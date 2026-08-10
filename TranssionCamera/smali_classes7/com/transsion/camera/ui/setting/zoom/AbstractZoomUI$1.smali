.class Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;
.super Ljava/lang/Object;
.source "AbstractZoomUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviewStateScaleStart:Z

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomClick(Z)V
    .locals 5

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_9

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 801
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    if-nez v1, :cond_9

    .line 802
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$800(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    if-nez v1, :cond_1

    .line 814
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onZoomClick,return] mIsSupported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 817
    :cond_1
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomClick] mModeDisableTouchZoom isIncrease = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 825
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-nez v0, :cond_3

    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1002(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 828
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    if-nez v0, :cond_5

    const/16 v1, 0xa

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    .line 830
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v2, p1, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->calculateZoomPosByClick(ZIZ)I

    move-result v0

    .line 831
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 832
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nextZoomPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    const/4 v4, -0x1

    :goto_2
    invoke-static {v0, v1, v2, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 836
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onZoomClick,return] switchCamera,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 840
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isBoundaryPointToWideCam(Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 844
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 845
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 846
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    return-void

    .line 850
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x17

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 852
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 853
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 854
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 855
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 857
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x18

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 803
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomClick,return] mPreviewStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 804
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsCapturing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsFilterSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 805
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsModeOrCameraSwitching:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsSizeChanging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInOrderEditorFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 807
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInEditWaterMarkFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 808
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInRemoteCaptureFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 809
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInMicroPanTilt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 810
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$800(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mRecordStopZoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 803
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .locals 2

    .line 949
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 952
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1502(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Z)Z

    .line 953
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1402(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I

    .line 955
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 956
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 957
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x18

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onZoomScaleStart(Z)V
    .locals 6

    .line 863
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    if-eqz v0, :cond_5

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_5

    .line 865
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 866
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$800(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    sget v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_0

    .line 875
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 877
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1002(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I

    .line 878
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1402(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I

    .line 880
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_1
    invoke-static {v0, v2, v3, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1502(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Z)Z

    return-void

    .line 885
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iput-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 886
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isBoundaryPointToWideCam(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 887
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 888
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    return-void

    .line 892
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 893
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 894
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 895
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 896
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    return-void

    .line 867
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onZoomScaleStart,return] "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomScaling(Z)V
    .locals 5

    .line 902
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 903
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 904
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$800(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    invoke-static {v0, v1, v2, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1502(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Z)Z

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onZoomScaling,switchCamera,return]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1408(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->calculateZoomPosByLongPress(ZI)I

    move-result v0

    .line 928
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 929
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCurrentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v2, v2, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStepCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 933
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 934
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isBoundaryPointToWideCam(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 935
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 936
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    return-void

    .line 940
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 941
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 942
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 943
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    return-void

    .line 924
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomScaling,onZoomScaling,return] mIsSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsCameraSwitchByLongKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 905
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomScaling,return] mPreviewStateScaleStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->mPreviewStateScaleStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 906
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsCapturing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsFilterSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 907
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsZoomUIHidedWhileScaling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsModeOrCameraSwitching:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isZoomLayoutUpdated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 909
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInEditWaterMarkFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 910
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInRemoteCaptureFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 911
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mInOrderEditorFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 912
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mRecordStopZoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    .line 913
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 905
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

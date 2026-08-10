.class Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "AbstractZoomUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V
    .locals 0

    .line 1380
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1380
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyStatusChangeListener: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "key_macro"

    .line 1386
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "on"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iput-boolean v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 1389
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    :cond_1
    :goto_0
    const-string v0, "wide_camera"

    .line 1393
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1394
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iput-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    .line 1398
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v3, :cond_7

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v0, :cond_7

    const-string v0, "key_normal_camera_item_long_click"

    .line 1399
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1400
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "value_normal_camera_item_long_click_in_normal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "value_normal_camera_item_long_click_in_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 1402
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iput-boolean v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsLongTouchToNormal:Z

    goto :goto_1

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    goto :goto_1

    :cond_5
    const-string v0, "key_wide_camera_item_long_click"

    .line 1408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1409
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    goto :goto_1

    :cond_6
    const-string v0, "key_tele_camera_item_long_click"

    .line 1410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1411
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    :cond_7
    :goto_1
    const-string v0, "key_wide_camera_item_seleccted"

    .line 1415
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1416
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "value_wide_camera_item_second_zoom_seleccted"

    .line 1417
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "100"

    if-eqz v3, :cond_9

    .line 1418
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v5, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-eqz v5, :cond_8

    iget-boolean v5, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    if-eqz v5, :cond_8

    if-eqz v0, :cond_8

    .line 1419
    iget-object v0, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v6, v6, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1420
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    iget v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI(II)V

    goto :goto_2

    .line 1422
    :cond_8
    iget-object v0, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1423
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 1425
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v3, :cond_11

    .line 1426
    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    goto/16 :goto_4

    :cond_9
    const-string v3, "value_wide_camera_item_first_zoom_seleccted"

    .line 1428
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1429
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v5, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-eqz v5, :cond_a

    iget-boolean v5, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    if-eqz v5, :cond_a

    if-nez v0, :cond_b

    :cond_a
    iget-object v0, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1430
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v6, v6, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1431
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    iget v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI(II)V

    goto :goto_3

    .line 1433
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1434
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 1436
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v3, :cond_11

    .line 1437
    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    goto :goto_4

    :cond_d
    const-string v3, "value_wide_camera_item_wide_cam_seleccted"

    .line 1440
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1441
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v4, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-eqz v4, :cond_e

    iget-boolean v4, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    if-eqz v4, :cond_e

    if-nez v0, :cond_f

    :cond_e
    iget-object v0, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1442
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "60"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1443
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    iget v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI(II)V

    .line 1445
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v3, :cond_11

    .line 1446
    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    :cond_11
    :goto_4
    const-string v0, "mode_entry_key"

    .line 1451
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1452
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    .line 1453
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    .line 1454
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    .line 1455
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    .line 1456
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.supermoon.SuperMoonModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    .line 1457
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    .line 1458
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDocumentMode:Z

    .line 1459
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    .line 1460
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDUalVideoMode:Z

    .line 1461
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    .line 1462
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v3, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInProfessionMode:Z

    :cond_12
    const-string v0, "key_conflict_ui_state"

    .line 1465
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1466
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v0, "value_filter_ui_off_no_show"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_5

    :cond_13
    const/4 p1, 0x2

    goto :goto_5

    :sswitch_1
    const-string v0, "value_filter_ui_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto :goto_5

    :cond_14
    move p1, v2

    goto :goto_5

    :sswitch_2
    const-string v0, "value_filter_ui_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_5

    :cond_15
    move p1, v1

    :goto_5
    packed-switch p1, :pswitch_data_0

    goto :goto_6

    .line 1468
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setWheelViewShowFlag(Z)V

    goto :goto_6

    .line 1472
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setWheelViewShowFlag(Z)V

    :cond_16
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71d81a63 -> :sswitch_2
        -0x66c4e80f -> :sswitch_1
        -0x593d69e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

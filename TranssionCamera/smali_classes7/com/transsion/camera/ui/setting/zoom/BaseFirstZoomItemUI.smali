.class public Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.source "BaseFirstZoomItemUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;
    }
.end annotation


# instance fields
.field private mSecondInitValue:I

.field private mSlowMotionMode:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mSlowMotionMode:Z

    .line 35
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const p1, 0x7f05009e

    .line 72
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    .line 73
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method private canZoomShowByStore(Ljava/lang/String;)Z
    .locals 4

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "100"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 134
    :goto_0
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mSlowMotionMode:Z

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mSecondInitValue:I

    if-ge p1, p0, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomValue()I

    move-result p0

    if-ge p1, p0, :cond_2

    :goto_1
    move p0, v2

    goto :goto_2

    :cond_2
    move p0, v3

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2
.end method

.method private deviceZoomInShowRange(I)Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    .line 123
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mSlowMotionMode:Z

    if-eqz v1, :cond_0

    .line 124
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mSecondInitValue:I

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mSecondInitValue:I

    .line 128
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMiniZoom()I

    move-result p0

    if-lt p1, p0, :cond_2

    if-ge p1, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .locals 0

    .line 95
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object p0
.end method

.method protected init()V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDefaultSecondValue:I

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mSecondInitValue:I

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->deviceZoomInShowRange(I)Z

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[init] baseZoomCamera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->baseZoomCamera()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , zoomValueInStore:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , zoomInRange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->baseZoomCamera()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->deviceZoomInShowRange(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method protected onClickEvent()Z
    .locals 8

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirstZoomItemUI mCurrentEntryValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mEntryView.isSelected():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "value_wide_camera_item_first_zoom_seleccted"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "key_wide_camera_item_seleccted"

    const-string v5, "100"

    if-eqz v0, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v5, v7, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 165
    invoke-virtual {p0, v4, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->updateTextEntryView()V

    :goto_0
    return v3

    .line 173
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v2, "1x_dual_exchange"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 176
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 181
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v5, v7, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 178
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v2, "off"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 188
    :goto_2
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_7

    .line 189
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->startSelectedAnimation(Landroid/view/View;)V

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v4, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 196
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBlurCamera:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-nez v0, :cond_9

    .line 197
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->showCenterZoomRatio()V

    :cond_9
    return v3
.end method

.method protected onLongClickEvent()Z
    .locals 2

    .line 210
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_item_long_click"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_normal_camera_item_long_click"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_normal_camera_item_long_click_in_normal"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public restoreDefaultValue()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->updateTextEntryView()V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_zoom_limit_monitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_zoom_limit_monitor"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unInit()V

    return-void
.end method

.method public updateEntryValue(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    const-string v0, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    .line 108
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->mSlowMotionMode:Z

    .line 109
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->baseZoomCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->deviceZoomInShowRange(I)Z

    move-result p1

    .line 111
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->updateTextEntryView()V

    :cond_1
    return-void
.end method

.method protected updateTextEntryView()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "100"

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->baseZoomCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->canZoomShowByStore(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

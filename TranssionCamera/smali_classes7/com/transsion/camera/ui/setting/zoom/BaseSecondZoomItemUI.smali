.class public Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.source "BaseSecondZoomItemUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;
    }
.end annotation


# instance fields
.field private mInitValue:Ljava/lang/String;

.field private mSatReplaceWide:Z

.field private mShowingZoom:Ljava/lang/String;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 34
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 57
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const p1, 0x7f05008a

    .line 58
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mSatReplaceWide:Z

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mInitValue:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .locals 0

    .line 77
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object p0
.end method

.method protected init()V
    .locals 4

    .line 63
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDefaultSecondValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mInitValue:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "100"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[init] mIsSATCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mIsBackCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mIsVideoCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsVideoCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , baseZoomCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->baseZoomCamera()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , zoomValueInStore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mInitValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mInitValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->baseZoomCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mInitValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method protected onClickEvent()Z
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecondZoomItemUI mShowingZoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mInitValue:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->updateTextEntryView()V

    return v1

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    const-string v2, "value_wide_camera_item_second_zoom_seleccted"

    const-string v3, "key_wide_camera_item_seleccted"

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBlurCamera:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsHighDefiniteCamera:Z

    if-eqz v0, :cond_4

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->showCenterZoomRatio()V

    goto :goto_1

    .line 116
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v4, "second_exchange"

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 129
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return v1
.end method

.method protected onLongClickEvent()Z
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_item_long_click"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 163
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

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mInitValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->updateTextEntryView()V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_zoom_limit_monitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_zoom_limit_monitor"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unInit()V

    return-void
.end method

.method public updateEntryValue(Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->baseZoomCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mInitValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mInitValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->updateTextEntryView()V

    :cond_1
    return-void
.end method

.method protected updateTextEntryView()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "100"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 98
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->mShowingZoom:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
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

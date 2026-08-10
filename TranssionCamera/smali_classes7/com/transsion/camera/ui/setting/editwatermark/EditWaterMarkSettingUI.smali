.class public Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "EditWaterMarkSettingUI.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "key_edit_watermark"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method public static synthetic $r8$lambda$OpJb15uLKHIqMhTmeWGXypZsGpA(Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 104
    new-instance p1, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 41
    sget-object p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "EditWaterMarkSettingUI "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 105
    sget-object v0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_edit_watermark_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "VALUE_edit_watermark_state_writing"

    .line 108
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateCustomState(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const-string p1, "VALUE_edit_watermark_state_done"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateCustomState(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_edit_watermark"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 0

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    .line 131
    sget-object v0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    .line 142
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 136
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterClick(I)Z

    move-result p0

    return p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_edit_watermark_state"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 81
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_edit_watermark_state"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz p0, :cond_1

    const-string v0, "VALUE_edit_watermark_state_done"

    .line 87
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateCustomState(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

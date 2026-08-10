.class public Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "FakeDualLensUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;,
        Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_GUIDE:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mResources:Landroid/content/res/Resources;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 36
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mResources:Landroid/content/res/Resources;

    .line 70
    new-instance p1, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mUIHandler:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 33
    sget-object v0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->showGuideView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;)Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mUIHandler:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;

    return-object p0
.end method

.method private isNeedShowDistanceHint()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 178
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 179
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBackFakeDualCameraId()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showGuideView(I)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setPriority(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f10011f

    goto :goto_0

    :cond_1
    const v1, 0x7f10011e

    goto :goto_0

    :cond_2
    const v1, 0x7f10011d

    .line 160
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setPriority(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f10011c

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_5

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_1

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->isNeedShowDistanceHint()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f10011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 78
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_fake_dual_lens"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x77

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->isNeedShowDistanceHint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_1

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 127
    sget-object p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

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
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mUIHandler:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 104
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.class public Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;
.super Ljava/lang/Object;
.source "SettingGuideItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;


# instance fields
.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStringArrayId:I


# direct methods
.method public constructor <init>(ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;->mStringArrayId:I

    .line 16
    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStringArrayId()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;->mStringArrayId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 0

    return-void
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 0

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 0

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .locals 0

    return-void
.end method

.method public shouldShow()Z
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.class public Lcom/transsion/camera/feature/mode/professional/ui/SettingItemUI;
.super Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;
.source "SettingItemUI.java"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-void
.end method


# virtual methods
.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 0

    return-void
.end method

.method public onValueChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

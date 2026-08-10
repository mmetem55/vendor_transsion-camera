.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpOptionItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "VideoMakeUpOptionItemUI.java"


# direct methods
.method public static synthetic $r8$lambda$k5oiranpiLSo0sbpvdaj3cKuorE(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpOptionItemUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpOptionItemUI;->onClick(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 22
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpOptionItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpOptionItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpOptionItemUI;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onClick(Landroid/view/View;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 0

    const-string p0, "OPTION_BAR"

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

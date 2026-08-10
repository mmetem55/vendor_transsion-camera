.class Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyOptionItemUI;
.super Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;
.source "VideoFaceBeautyOptionItemUI.java"


# direct methods
.method public static synthetic $r8$lambda$xvDPnHNYVTM8GIk80PGeQWDMwAs(Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyOptionItemUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyOptionItemUI;->onClick(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 13
    new-instance p1, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyOptionItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyOptionItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyOptionItemUI;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onClick(Landroid/view/View;)V
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p1, :cond_0

    .line 19
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

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

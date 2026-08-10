.class Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "VideoFaceBeautyTopBarItemUI.java"


# instance fields
.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 1

    .line 27
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 23
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private hideBeautyHint()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showBeautyHint()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f10034b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doOnStatusChanged(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "video_facebeauty_on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->showBeautyHint()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->hideBeautyHint()V

    :goto_0
    return-void
.end method

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

.method public unInit()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videofacebeauty/VideoFaceBeautyTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 36
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method

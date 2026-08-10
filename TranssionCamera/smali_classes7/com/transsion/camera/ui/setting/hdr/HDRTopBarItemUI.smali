.class Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "HDRTopBarItemUI.java"


# instance fields
.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 2

    .line 27
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 23
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public doOnStatusChanged(Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method protected doOnValueChanged()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_1

    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f100169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

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
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 36
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method

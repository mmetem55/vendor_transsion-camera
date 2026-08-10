.class Lcom/transsion/camera/ui/setting/videoduration/VideoDurationTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "VideoDurationTopBarItemUI.java"


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

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoduration/VideoDurationTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoduration/VideoDurationTopBarItemUI;->mResources:Landroid/content/res/Resources;

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

.method public unInit()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoduration/VideoDurationTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 36
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method

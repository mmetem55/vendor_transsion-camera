.class public Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "VideoFlashSettingUIEntry.java"


# instance fields
.field private final mFlashFacadeSupport:Z

.field private final mFrontDualFlashSupport:Z

.field private final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private final mUseNewLuminanceInteraction:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    const v0, 0x7f050034

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mFlashFacadeSupport:Z

    const v1, 0x7f0500b9

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mUseNewLuminanceInteraction:Z

    const v1, 0x7f050035

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/VideoFlashFacadeSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/flash/VideoFlashFacadeSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {p1, v0}, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    :goto_0
    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    goto :goto_0

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mUseNewLuminanceInteraction:Z

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 68
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object p0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 3

    .line 49
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mFlashFacadeSupport:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 54
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object p0
.end method

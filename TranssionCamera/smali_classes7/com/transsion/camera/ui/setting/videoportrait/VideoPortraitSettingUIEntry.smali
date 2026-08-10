.class public Lcom/transsion/camera/ui/setting/videoportrait/VideoPortraitSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "VideoPortraitSettingUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportrait/VideoPortraitSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportrait/VideoPortraitSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .locals 2

    .line 41
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportrait/VideoPortraitSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportrait/VideoPortraitSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    const p0, 0x7f030068

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;-><init>(ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 3

    .line 35
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportrait/VideoPortraitTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/transsion/camera/ui/setting/videoportrait/VideoPortraitSettingUISpec;

    invoke-direct {v2, v1}, Lcom/transsion/camera/ui/setting/videoportrait/VideoPortraitSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videoportrait/VideoPortraitTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method

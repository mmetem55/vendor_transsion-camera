.class public Lcom/transsion/camera/ui/setting/antivideo/AntiVideoSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "AntiVideoSettingUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/antivideo/AntiVideoSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/antivideo/AntiVideoSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    const p0, 0x7f030066

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;-><init>(ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 3

    .line 27
    new-instance v0, Lcom/transsion/camera/ui/setting/antivideo/AntiVideoTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/transsion/camera/ui/setting/antivideo/AntiVideoSettingUISpec;

    invoke-direct {v2, v1}, Lcom/transsion/camera/ui/setting/antivideo/AntiVideoSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/antivideo/AntiVideoTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method

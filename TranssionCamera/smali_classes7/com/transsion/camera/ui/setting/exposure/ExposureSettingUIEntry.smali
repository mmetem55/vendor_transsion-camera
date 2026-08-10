.class public Lcom/transsion/camera/ui/setting/exposure/ExposureSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "ExposureSettingUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .locals 1

    .line 39
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureSettingUIEntry;->createSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public createSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .locals 1

    .line 34
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/ExposureSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.class public Lcom/transsion/camera/ui/setting/hdr/HdrSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "HdrSettingUIEntry.java"


# instance fields
.field private final mFlagType:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 30
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0a0037

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/hdr/HdrSettingUIEntry;->mFlagType:I

    return-void
.end method


# virtual methods
.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .locals 2

    .line 45
    iget v0, p0, Lcom/transsion/camera/ui/setting/hdr/HdrSettingUIEntry;->mFlagType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/hdr/HDRSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/hdr/HDRSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 3

    .line 35
    iget v0, p0, Lcom/transsion/camera/ui/setting/hdr/HdrSettingUIEntry;->mFlagType:I

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/transsion/camera/ui/setting/hdr/HDRSettingUISpec;

    invoke-direct {v2, v1}, Lcom/transsion/camera/ui/setting/hdr/HDRSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/hdr/HDRTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

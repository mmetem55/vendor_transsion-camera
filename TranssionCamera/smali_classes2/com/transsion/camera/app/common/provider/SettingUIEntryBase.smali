.class public Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.super Ljava/lang/Object;
.source "SettingUIEntryBase.java"

# interfaces
.implements Lcom/transsion/camera/app/common/provider/ISettingUIEntry;


# instance fields
.field protected mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

.field protected mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createWideCameraItemUI()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object p0
.end method

.method public resetSettingUIEntry()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 79
    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-void
.end method

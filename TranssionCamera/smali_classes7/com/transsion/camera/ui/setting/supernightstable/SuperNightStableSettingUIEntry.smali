.class public Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStableSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SuperNightStableSettingUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 3

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStableSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStableSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method

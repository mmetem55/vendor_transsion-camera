.class public Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SuperDefinitionSettingUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 4

    .line 25
    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method

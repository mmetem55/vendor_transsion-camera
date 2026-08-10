.class public Lcom/transsion/camera/feature/arcore/ARCoreModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "ARCoreModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 3

    .line 52
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/ARCoreModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/arcore/R$bool;->enable_ar_entrance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/arcore/R$string;->ar_space_mode_title:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/arcore/R$string;->arcore_mode_title:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->arcore_mode_description:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    .line 57
    sget p0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_ar_shot:I

    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method protected createZoomSpec()V
    .locals 0

    return-void
.end method

.method protected currentModeSupportFrontWideCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportTeleCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportWideCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 47
    const-class p0, Lcom/transsion/camera/feature/arcore/ARCoreModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 42
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

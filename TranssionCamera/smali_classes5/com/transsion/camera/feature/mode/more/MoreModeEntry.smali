.class public Lcom/transsion/camera/feature/mode/more/MoreModeEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "MoreModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/feature/mode/more/MoreMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/more/MoreModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/more/MoreMode;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/more/MoreModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 33
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportPreviewHoverForm(Z)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 2

    .line 50
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/more/MoreModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1001d9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 45
    const-class p0, Lcom/transsion/camera/feature/mode/more/MoreModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 40
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

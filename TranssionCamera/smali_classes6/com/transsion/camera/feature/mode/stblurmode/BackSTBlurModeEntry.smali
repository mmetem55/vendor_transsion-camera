.class public Lcom/transsion/camera/feature/mode/stblurmode/BackSTBlurModeEntry;
.super Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeEntry;
.source "BackSTBlurModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeEntry;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/BackSTBlurModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/stblurmode/R$string;->back_stblur_mode_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 27
    sget p0, Lcom/transsion/camera/feature/mode/stblurmode/R$drawable;->ic_bokeh:I

    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 19
    const-class p0, Lcom/transsion/camera/feature/mode/stblurmode/BackSTBlurModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

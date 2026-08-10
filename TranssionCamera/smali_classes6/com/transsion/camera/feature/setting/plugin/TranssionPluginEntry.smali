.class public Lcom/transsion/camera/feature/setting/plugin/TranssionPluginEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "TranssionPluginEntry.java"


# instance fields
.field private volatile mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginEntry;->mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginEntry;->mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginEntry;->mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 31
    const-class p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 26
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

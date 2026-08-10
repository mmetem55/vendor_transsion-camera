.class public Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "AutoColorLevelEntry.java"


# instance fields
.field private mAutoColorLevel:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelEntry;->mAutoColorLevel:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelEntry;->mAutoColorLevel:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelEntry;->mAutoColorLevel:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 44
    const-class p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelEntry;

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

    .line 39
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

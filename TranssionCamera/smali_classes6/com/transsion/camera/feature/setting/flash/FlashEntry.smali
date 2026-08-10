.class public Lcom/transsion/camera/feature/setting/flash/FlashEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "FlashEntry.java"


# instance fields
.field private volatile mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

.field private final mFlashFacadeSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "flash_facade_support"

    .line 31
    invoke-static {p1, v0, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlashFacadeSupport:Z

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_1

    .line 38
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlashFacadeSupport:Z

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/flash/Flash;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 44
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 54
    const-class p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 49
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

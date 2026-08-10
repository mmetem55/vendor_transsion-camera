.class public Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "ScreenFlashEntry.java"


# instance fields
.field private final mFlashFacadeSupport:Z

.field private mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "flash_facade_support"

    .line 29
    invoke-static {p1, v0, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mFlashFacadeSupport:Z

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mFlashFacadeSupport:Z

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 48
    const-class p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 43
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

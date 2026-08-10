.class public Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCaptureEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "FingerprintCaptureEntry.java"


# instance fields
.field private mFingerprintCapture:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCaptureEntry;->mFingerprintCapture:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCaptureEntry;->mFingerprintCapture:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCaptureEntry;->mFingerprintCapture:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 41
    const-class p0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCaptureEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 36
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

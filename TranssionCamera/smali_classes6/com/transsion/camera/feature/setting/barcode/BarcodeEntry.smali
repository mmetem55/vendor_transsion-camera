.class public Lcom/transsion/camera/feature/setting/barcode/BarcodeEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "BarcodeEntry.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/barcode/BarcodeEntry;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/barcode/BarcodeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 2

    .line 31
    sget-object v0, Lcom/transsion/camera/feature/setting/barcode/BarcodeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "create"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeEntry;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeEntry;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeEntry;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 21
    const-class p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeEntry;

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

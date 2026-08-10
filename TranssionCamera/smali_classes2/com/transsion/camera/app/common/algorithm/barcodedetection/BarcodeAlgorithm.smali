.class public Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;
.super Ljava/lang/Object;
.source "BarcodeAlgorithm.java"


# static fields
.field private static sInstance:Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;


# instance fields
.field private mBarcodeEntry:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.transsion.camera.feature.setting.barcode.BarcodeEntry"

    .line 17
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->mBarcodeEntry:Ljava/lang/Class;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;
    .locals 2

    const-class v0, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->sInstance:Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;-><init>()V

    sput-object v1, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->sInstance:Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;

    .line 28
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->sInstance:Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public algorithmSupport()Z
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->mBarcodeEntry:Ljava/lang/Class;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

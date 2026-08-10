.class public Lcom/transsion/camera/feature/setting/liveresult/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private final mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private final mPreviewSize:Landroid/util/Size;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 25
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mPreviewSize:Landroid/util/Size;

    .line 26
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-void
.end method

.method static buildFrom(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/feature/setting/liveresult/Result;
    .locals 1

    .line 43
    new-instance v0, Lcom/transsion/camera/feature/setting/liveresult/Result;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/feature/setting/liveresult/Result;-><init>(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-object v0
.end method


# virtual methods
.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public getPlatformCamera()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-object p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

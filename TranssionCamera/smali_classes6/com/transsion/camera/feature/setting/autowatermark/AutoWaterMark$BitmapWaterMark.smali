.class Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;
.super Ljava/lang/Object;
.source "AutoWaterMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWaterMark"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;
    }
.end annotation


# static fields
.field private static final MSG_CREATE_WATER_BITMAP:I


# instance fields
.field private mBitmapHandler:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;

.field private mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mPreviewStarted:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)V
    .locals 2

    .line 282
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStarted:Z

    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    .line 243
    new-instance v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 263
    new-instance v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 283
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "water_mark"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 285
    new-instance v1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapHandler:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->createWatermarkBitmapAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->createWatermarkBitmap()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Z)Z
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStarted:Z

    return p1
.end method

.method private createWatermarkBitmap()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 3

    .line 353
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->getWaterMarkDrawableId()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 355
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$800(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->scaleBitmapParameter(Landroid/graphics/Bitmap;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method private createWatermarkBitmapAsync()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapHandler:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapHandler:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private getWaterMarkDrawableId()I
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$700(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$900(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$800(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ic_watermark_source_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    .line 375
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$800(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "ic_watermark_source"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private scaleBitmapParameter(Landroid/graphics/Bitmap;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 18

    move-object/from16 v0, p0

    .line 379
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 380
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$1000(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "key_mirror"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    new-instance v2, Landroid/util/Size;

    const/4 v8, 0x0

    invoke-direct {v2, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 383
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$700(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v3

    sget-object v9, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/high16 v4, 0x41200000    # 10.0f

    if-ne v3, v9, :cond_1

    .line 384
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$1100(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v3

    const-string v5, "key_picture_size"

    invoke-interface {v3, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 386
    invoke-static {v3}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    move-object/from16 v17, v2

    goto :goto_1

    .line 390
    :cond_1
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$1200(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v2

    const-string v3, "key_video_quality"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 391
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    .line 392
    iget v3, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 393
    new-instance v4, Landroid/util/Size;

    iget v5, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v4, v5, v2}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v17, v4

    .line 395
    :goto_1
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    neg-float v1, v3

    .line 396
    invoke-virtual {v6, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    .line 398
    :cond_2
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 404
    :cond_3
    new-instance v1, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$700(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v2, v9, :cond_4

    move v11, v3

    goto :goto_3

    :cond_4
    const/4 v2, 0x5

    move v11, v2

    :goto_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 405
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$700(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    if-ne v0, v9, :cond_5

    move/from16 v16, v8

    goto :goto_4

    :cond_5
    move/from16 v16, v3

    :goto_4
    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;-><init>(ILandroid/graphics/Bitmap;IIIILandroid/util/Size;)V

    return-object v1
.end method


# virtual methods
.method getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method getWaterMarkParam()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 4

    .line 310
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$000(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    if-eqz v2, :cond_2

    .line 313
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->getModeType()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 314
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$700(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 315
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    .line 316
    sget-object v1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "mode type changed, need to create an other water mark bitmap"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    if-nez v1, :cond_3

    .line 320
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->createWatermarkBitmap()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    .line 322
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 323
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method pause()V
    .locals 1

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapHandler:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method unInit()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapHandler:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapHandler:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;

    :cond_0
    return-void
.end method

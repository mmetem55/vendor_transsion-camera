.class public Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "EditWaterMark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;,
        Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_BRAND_PICTURE_HEIGHT:F = 984.0f

.field public static final DEFAULT_TEXT_PICTURE_HEIGHT:I = 0xd80

.field private static final EDIT_WATERMARK_LOCATION_THREAD:Ljava/lang/String; = "edit_watermark_location_thread"

.field private static final EDIT_WATERMARK_SHADOW_COLOR:Ljava/lang/String; = "#33000000"

.field private static final EDIT_WATERMARK_WORK_THREAD:Ljava/lang/String; = "edit_watermark_work_thread"

.field public static final FOCUS_UPDATE:I = 0x1

.field public static final MSG_EDIT_WATERMARK_HANDLE:I = 0x65

.field public static final MSG_EDIT_WATERMARK_LOCATION_UPDATE:I = 0xc9

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBrandHeight:I

.field private mCityInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultHeight:I

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mEditWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;

.field private mEditWaterMarkUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEditWatermarkSupport:Z

.field private mEnableUpdate:Z

.field private mFansSupport:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsModeSupport:Z

.field private mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mLocationHandler:Landroid/os/Handler;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPause:Z

.field private mPictureHeight:I

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mStateWait:Lcom/transsion/camera/utils/StateWait;

.field private mTextWaterMarkInfo:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$E33YJF6X8cLz6wtOUCQOwpB9q0o(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Lcom/transsion/camera/app/common/location/LocationManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->lambda$getCityInfo$0(Lcom/transsion/camera/app/common/location/LocationManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ERZeCvryfKrLG9CknDgXNL-_KN0(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->lambda$writeWaterMarkGuard$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEnableUpdate:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v0}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    .line 109
    new-instance v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 290
    new-instance v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$2;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 304
    new-instance v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPictureHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPictureHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;III)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->writeWaterMarkGuard(III)V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->doNotUpdateWatermark()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isEditWaterMarkClose()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/content/Context;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    return-object p1
.end method

.method private covertWaterMarkBitmapToNV21(III)[B
    .locals 0

    .line 449
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->createWaterMarkBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 451
    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->getNV21(IILandroid/graphics/Bitmap;)[B

    move-result-object p3

    .line 452
    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->intToBytes(I)[B

    move-result-object p1

    .line 453
    invoke-static {p2}, Lcom/transsion/camera/utils/BitmapUtils;->intToBytes(I)[B

    move-result-object p2

    .line 454
    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->getAlpha(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    .line 455
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/BitmapUtils;->mergeBytes([B[B)[B

    move-result-object p1

    .line 456
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/BitmapUtils;->mergeBytes([B[B)[B

    move-result-object p1

    .line 457
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/BitmapUtils;->mergeBytes([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createWaterMarkBitmap(III)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 463
    iget-object v3, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_edit_watermark_item"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    iget-object v4, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v5, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    const-string v7, "text_water_mark_input_tip"

    invoke-static {v5, v7}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    const-string v9, "key_text_watermark_info"

    invoke-virtual {v4, v9, v5, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mTextWaterMarkInfo:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 467
    array-length v5, v3

    move v8, v4

    :goto_0
    if-ge v8, v5, :cond_0

    aget-char v9, v3, v8

    .line 468
    iget-object v10, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    add-int/lit8 v9, v9, -0x30

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 471
    :cond_0
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mFansSupport:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 475
    new-instance v8, Landroid/text/TextPaint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/TextPaint;-><init>(I)V

    const/4 v10, -0x1

    .line 476
    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->setColor(I)V

    move/from16 v11, p3

    int-to-float v11, v11

    .line 477
    invoke-virtual {v8, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v12, "sans-serif-medium"

    .line 478
    invoke-static {v12, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v12, "#33000000"

    .line 479
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v8, v14, v15, v4, v13}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 480
    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 481
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 482
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 483
    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 485
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v13, v14, v15, v4, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 486
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 487
    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 489
    iget v10, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mBrandHeight:I

    iget v11, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mDefaultHeight:I

    if-eq v10, v11, :cond_2

    move/from16 v16, v9

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .line 490
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getBrandInfo(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 491
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v11, v12

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v11, v4

    div-float/2addr v11, v14

    mul-int/lit8 v4, v2, 0x7

    int-to-float v4, v4

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v4, v12

    add-float/2addr v11, v4

    .line 495
    :try_start_0
    iget-object v14, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v9

    :goto_2
    if-ltz v14, :cond_8

    .line 496
    iget-object v12, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/high16 v17, 0x41d00000    # 26.0f

    if-ne v12, v5, :cond_4

    if-eqz v16, :cond_3

    .line 498
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    int-to-float v12, v12

    add-float/2addr v15, v12

    :cond_3
    int-to-float v12, v1

    div-float v12, v12, v17

    sub-float v5, v4, v15

    .line 500
    invoke-virtual {v6, v10, v12, v5, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v16, :cond_7

    .line 502
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    add-float/2addr v15, v5

    goto :goto_5

    .line 505
    :cond_4
    iget-object v5, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_5

    iget-object v5, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v5, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 506
    :goto_3
    iget-object v12, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v0, v12}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getStringFromType(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getStringFromType(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    mul-int/lit8 v12, v1, 0xc

    int-to-float v12, v12

    const/high16 v18, 0x41500000    # 13.0f

    div-float v12, v12, v18

    .line 507
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v8, v12, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 508
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-float v9, v1

    div-float v9, v9, v17

    sub-float v12, v11, v15

    invoke-virtual {v6, v5, v9, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_5
    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v5, v9

    add-float/2addr v15, v5

    add-int/lit8 v14, v14, -0x1

    move v12, v9

    const/4 v5, 0x3

    const/4 v9, 0x1

    goto/16 :goto_2

    .line 512
    :cond_8
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private doNotUpdateWatermark()Z
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_definition"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->get4in1Size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->needIgnoreFilter()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getPictureSize()Landroid/util/Size;
    .locals 2

    .line 535
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_picture_size"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 538
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getStringFromType(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mTextWaterMarkInfo:Ljava/lang/String;

    return-object p0

    .line 526
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    return-object p0

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getTimeInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isEditWaterMarkClose()Z
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_time_watermark"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v4, "key_city_watermark"

    invoke-virtual {v1, v4, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 402
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_text_watermark"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_brand_watermark"

    invoke-virtual {p0, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getCityInfo$0(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .locals 1

    .line 353
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const-string v0, "key_edit_watermark"

    .line 356
    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    const/4 p0, 0x1

    .line 357
    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$writeWaterMarkGuard$1()V
    .locals 2

    .line 409
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyState"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

.method private needIgnoreFilter()Z
    .locals 2

    .line 660
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLargestSupportedPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->get4in1Size()I

    move-result p0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/2addr v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private scaleBitmapParameter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 389
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 390
    iget p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mBrandHeight:I

    mul-int/2addr p0, p2

    int-to-float p0, p0

    const/high16 p2, 0x44760000    # 984.0f

    div-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p0, p2

    .line 391
    invoke-virtual {v5, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p0
.end method

.method private setLocationManagerStatus(Z)V
    .locals 3

    .line 649
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationManagerStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 650
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object p0

    const-string v0, "key_edit_watermark"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    return-void
.end method

.method private updateCityInfoFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/LocationUtil;->getAddress(Landroid/location/Location;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 374
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 377
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/utils/LocationUtil;->getLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeWaterMarkGuard(III)V
    .locals 4

    .line 408
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/manager/ScreenRelay;->waitCapturing(Ljava/lang/Runnable;)Z

    move-result v0

    .line 412
    sget-object v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeWaterMarkGuard waitCapturing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 418
    sget-object v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeWaterMarkGuard wait exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 421
    :cond_0
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "writeYUVByRandomAccessFile start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->writeYUVByRandomAccessFile(III)V

    const-string p0, "writeYUVByRandomAccessFile end"

    .line 423
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private writeYUVByRandomAccessFile(III)V
    .locals 5

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "/data/vendor/camera_watermark/watermark.nv21"

    .line 430
    invoke-static {v2}, Lcom/transsion/camera/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "watermark file don\'t exist return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 434
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->covertWaterMarkBitmapToNV21(III)[B

    move-result-object p0

    .line 435
    sget-object p1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeYUVByRandomAccessFile covertWaterMarkBitmapToNV21 : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 438
    :try_start_0
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string p2, "rw"

    invoke-direct {p1, v2, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 440
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 442
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 444
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeYUVByRandomAccessFile: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getBrandInfo(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getBrandWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->scaleBitmapParameter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method getBrandWatermark()Ljava/lang/String;
    .locals 0

    .line 679
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "edit_watermark_brand_special"

    return-object p0

    :cond_0
    const-string p0, "edit_watermark_brand"

    return-object p0
.end method

.method public getCityInfo(I)Ljava/lang/String;
    .locals 4

    .line 343
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getCityInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_edit_watermark"

    .line 346
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 348
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->updateCityInfoFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 350
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    if-nez v2, :cond_1

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentLocation = null retry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Lcom/transsion/camera/app/common/location/LocationManager;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    .line 359
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 p1, p1, -0x1

    .line 360
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getCityInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 362
    :cond_1
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "currentLocation = null lastKnownLocation = null "

    .line 364
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, ""

    goto :goto_0

    .line 366
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->updateCityInfoFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_edit_watermark"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 216
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSystemTime()Ljava/lang/String;
    .locals 3

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 330
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 331
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 332
    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeInSecond()Ljava/lang/String;
    .locals 3

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 337
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 338
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 339
    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getSystemTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "edit_watermark_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-nez p2, :cond_0

    .line 150
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "init UnSupport "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_0
    sget-object p2, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "init"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    const-string p1, "sys.transsion.nvcolor"

    const-string p3, ""

    .line 155
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCmfColor = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "edit_watermark_work_thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 159
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "edit_watermark_location_thread"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance p3, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance p1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationHandler:Landroid/os/Handler;

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_time_watermark"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_picture_size"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_edit_watermark_update"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_picture_size_sat"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    const-string p2, "edit_watermark_brand_height"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mBrandHeight:I

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    const-string p2, "default_edit_watermark_height"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mDefaultHeight:I

    const-string p1, "persist.sys.fans.support"

    const-string p2, "0"

    .line 169
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mFansSupport:Ljava/lang/String;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-nez v0, :cond_0

    .line 175
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "initValueAndSupport UnSupport "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPictureHeight:I

    .line 179
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPictureHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 184
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isEditWatermarkSupport()Z
    .locals 0

    .line 665
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    return p0
.end method

.method public isModeSupport()Z
    .locals 0

    .line 670
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    return p0
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 1

    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 252
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const-string p2, "key_edit_watermark"

    .line 256
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    .line 257
    sget-object p2, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsModeSupport  = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mode  = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 5

    .line 226
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "off"

    if-nez v0, :cond_1

    const-string v0, "value_edit_watermark_on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 233
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_brand_watermark"

    invoke-virtual {p0, v2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setEditWaterMarkBrandValue(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 274
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->setLocationManagerStatus(Z)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 4

    .line 195
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->postRestrictionAfterInitialized()V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_city_watermark"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->setLocationManagerStatus(Z)V

    .line 198
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    if-eqz v1, :cond_2

    .line 199
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->doNotUpdateWatermark()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pictureSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " return"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isEditWaterMarkClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const-string v1, "on"

    .line 207
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_city_watermark_info"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationHandler:Landroid/os/Handler;

    const/16 v0, 0xc9

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 1

    .line 267
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEnableUpdate:Z

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public turnOnSwitch(Z)V
    .locals 0

    .line 675
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEnableUpdate:Z

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 545
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 546
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 547
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_time_watermark"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_picture_size"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_edit_watermark_update"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_picture_size_sat"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

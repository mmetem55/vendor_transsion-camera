.class public Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "DocumentMode.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;,
        Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;,
        Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;"
    }
.end annotation


# static fields
.field public static final DOC_LICENCE_BASE_64:Ljava/lang/String; = "oWxLt1xJmA3f1sRtPJwbY9frvu8+7f7ZeOnf6Ug//BSuDF40cJoVL+9UUfHwStdYs6QEDV1cYTSlM9QXA4QDWjpDdjS+cxEHmjwL7aH6PV5W2eQ6EMKft7c9kEfODN327rIyVrzIfIGsssT/Y5RJ4K0cIcsI6a3xvsUeJLthdq+/LKGWev8rl9ao0cALG4+HpwWzksjF3w96Gaz8PZ5VCtr0bec4SGXzWhLGDN/nzsQE8l3uYLZ8IKQkrbUL8A/NpZ32SXyB4MqSA6oIJS7yghon4f9E69pOk+Mp/RQ4TxnDtWK6tG7FIsO1Yrq0bsUiw7ViurRuxSLDtWK6tG7FIsO1Yrq0bsUiw7ViurRuxSLDtWK6tG7FIsO1Yrq0bsUiw7ViurRuxSLDtWK6tG7FIsO1Yrq0bsUiEPnlM7fbvD4fcRLEWmhUozSiQw5euy2yWx5UVPr2LoHH7n/2kSmAc3sImRfKMek4BrhYOYfNKMQcvUN0+epDRxF0ZeDAu1dY"

.field public static final MSG_DOC_DETECTOR_HANDLE:I = 0x65

.field public static final MSG_DOC_HIDE_DIALOG:I = 0x2

.field public static final MSG_DOC_INIT_HANDLE:I = 0x66

.field public static final MSG_DOC_SHOW_DIALOG:I = 0x1

.field public static final MSG_DOC_UNINIT_HANDLE:I = 0x67

.field public static final MSG_DOC_UPDATE_THUMBNAIL:I = 0x3

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static sCheckDetectorLicense:Z


# instance fields
.field private mCallBack:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

.field private mCount:I

.field private mCurrentEnable:Z

.field private mCurrentUri:Landroid/net/Uri;

.field private mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

.field mDocHDSupport:Z

.field private mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

.field private mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

.field private mFlagDraw:Z

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mGLLine:Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

.field private final mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIgnoreFrame:I

.field private mIsCheck:Z

.field private mIsModeInit:Z

.field private mIsShowDialog:Z

.field private mLimitBV:I

.field private mMaxHeight:F

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mShutterClick:Z

.field private mXnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

.field mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# direct methods
.method public static synthetic $r8$lambda$kb3Jn1hBzpCykSjKSzEWz-YZ_sE(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 110
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 73
    sget-object p1, Lcom/youtu/ocr/docprocess/DocDetector;->sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mXnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

    .line 74
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 85
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    .line 90
    new-instance v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    const/16 v1, 0x2710

    .line 91
    iput v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mLimitBV:I

    .line 92
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentEnable:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    .line 369
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->startVibrator()V

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    return p1
.end method

.method static synthetic access$108(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)I
    .locals 2

    .line 57
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    return v0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mXnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mGLLine:Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mGLLine:Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/media/Image;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->detectorImage(Landroid/media/Image;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/net/Uri;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    return-object p0
.end method

.method private detectorImage(Landroid/media/Image;II)V
    .locals 2

    .line 379
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object p1

    .line 380
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCount:I

    div-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCount:I

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 384
    iput v1, v0, Landroid/os/Message;->what:I

    .line 385
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 387
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 390
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCount:I

    :goto_0
    return-void
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 97
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 98
    array-length p2, p1

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 100
    aget p1, p1, p2

    iget p3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mLimitBV:I

    if-le p1, p3, :cond_0

    const/4 p2, 0x1

    .line 101
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentEnable:Z

    if-eq p1, p2, :cond_2

    .line 102
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentEnable:Z

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getSuperDefinitionRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getMFNRRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 103
    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_2
    return-void
.end method

.method private resetTips()V
    .locals 3

    .line 424
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$string;->doc_mode_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private startVibrator()V
    .locals 3

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 345
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 432
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;
    .locals 1

    .line 437
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 3

    .line 406
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    const/4 p2, 0x0

    .line 407
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    .line 408
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p3, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->shouldDiaplay()Z

    move-result p3

    .line 409
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnFileSaved show dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsShowDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 410
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    if-eqz p3, :cond_0

    .line 411
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 413
    iput v0, p2, Landroid/os/Message;->what:I

    .line 414
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentUri:Landroid/net/Uri;

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 417
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 418
    iput p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    .line 419
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    :goto_0
    return-void
.end method

.method public getDataFlowType()I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 219
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getExpectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 352
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 356
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mMaxHeight:F

    int-to-float v1, v3

    cmpg-float v2, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    div-float v1, v0, v1

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    int-to-float v2, v4

    cmpg-float v6, v0, v2

    if-gez v6, :cond_1

    div-float v5, v0, v2

    :cond_1
    cmpg-float v0, v5, v1

    if-gez v0, :cond_2

    move v1, v5

    .line 363
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 364
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 365
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 366
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .line 224
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_tran_plugin"

    .line 225
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_distortion_correction"

    .line 226
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_fingerprint_capture"

    .line 227
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    if-eqz p0, :cond_0

    const-string p0, "key_super_definition"

    .line 229
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_high_resolution"

    .line 230
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_setting_smart_denoise"

    .line 231
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p0, "key_taint_detection"

    .line 233
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 236
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 14

    .line 241
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_picture_size"

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 245
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const-wide v5, 0x3ff5555555555555L    # 1.3333333333333333

    .line 248
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 249
    invoke-static {v8}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    .line 250
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-double v12, v9

    div-double/2addr v10, v12

    sub-double/2addr v10, v5

    .line 251
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_0

    move-object v4, v8

    :cond_1
    if-nez v4, :cond_2

    .line 258
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 260
    :cond_2
    invoke-virtual {v0, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_3
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultPictureSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    if-eqz p0, :cond_4

    const-string p0, "key_super_definition"

    const-string v1, "off"

    .line 265
    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_4
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method public getThumbnailSource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hideDialog()V
    .locals 1

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 134
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p4, "doc_high_definition_mode"

    invoke-static {p1, p4, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    .line 136
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCallBack:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

    .line 137
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 138
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCallBack:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 139
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    .line 140
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_image_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mMaxHeight:F

    .line 143
    new-instance p1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p3

    sget p4, Lcom/transsion/camera/feature/mode/doc/R$layout;->doc_layout:I

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    .line 144
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->initScreenForm(I)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->setDocStatusListener(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;)V

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected isShot2ShotEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    .line 446
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onModeCaptureFailed()V
    .locals 2

    .line 396
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed()V

    .line 397
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModeCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    const/4 v1, 0x1

    .line 399
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 400
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    .line 401
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onPostViewData([BIIII)V
    .locals 0

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->onScreenFormChanged(I)V

    return-void
.end method

.method public onSettingReady()V
    .locals 3

    .line 115
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 116
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraDeviceControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 125
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_1
    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .locals 3

    .line 151
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$string;->doc_mode_tips_correcting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    .line 155
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 156
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    return p1

    :cond_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    .line 171
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->hideView()V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_0
    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentEnable:Z

    return-void
.end method

.method public performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V
    .locals 1

    .line 273
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    if-nez p2, :cond_0

    .line 275
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "on"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 182
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    .line 186
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->unInit()V

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->quitDocThread()V

    return-void
.end method

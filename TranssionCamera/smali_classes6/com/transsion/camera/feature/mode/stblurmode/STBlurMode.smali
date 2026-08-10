.class public Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "STBlurMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;,
        Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLASH_SUPPORT_ALL:I = 0x3

.field private static final FLASH_SUPPORT_BACK:I = 0x2

.field private static final FLASH_SUPPORT_FRONT:I = 0x1

.field private static final HUMAN_EFFECT_INDEX_DEFAULT:Ljava/lang/String; = "0"

.field private static final STBLUR_WORK_THREAD:Ljava/lang/String; = "stblur_work_thread"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mAlgoProcessed:Z

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAsdSupport:Z

.field private mBackFakeDualLensSupport:Z

.field private volatile mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

.field private mFrameData:[B

.field private mFrontFakeDualLensSupport:Z

.field private mHasFace:Z

.field private volatile mHumanEffectFaceChecked:Z

.field private mHumanEffectIndex:Ljava/lang/String;

.field private mHumanEffectInited:Z

.field private volatile mModeInit:Z

.field private mRotation:I

.field private volatile mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

.field private mSTBlurClientHandler:Landroid/os/Handler;

.field private mSTBlurClientOn:Z

.field private mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private volatile mSTBlurClientValid:Z

.field private final mSupportFlashType:I

.field private mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    .line 96
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mRotation:I

    const-string p1, "0"

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    .line 373
    new-instance p1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    .line 109
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->readFakeDualLensSupport(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/stblurmode/R$integer;->stblur_flash_support_type:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSupportFlashType:I

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mRotation:I

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mRotation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->destroyFacelighting()V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->createFacelighting()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAlgoProcessed:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAlgoProcessed:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientValid:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleInitSTBlur()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleResumeSTBlur()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrameData:[B

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handlePauseSTBlur()V

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;[B)[B
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrameData:[B

    return-object p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleUnInitSTBlur()V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleInitRender()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleChangeConfig(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleInitFacelighting()V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mModeInit:Z

    return p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 72
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectFaceChecked:Z

    return p0
.end method

.method private changeSTBlurConfig(ZZ)V
    .locals 1

    .line 253
    new-instance v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;-><init>()V

    .line 254
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->hasFace(Z)Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->stBlurOn(Z)Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->build()Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;

    move-result-object p1

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private createFacelighting()V
    .locals 3

    .line 705
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createFacelighting"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 707
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->getFacelightingClient()Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->init(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    .line 711
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "0"

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->setConfig(ZLjava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private destroyFacelighting()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->isFacelightingInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    .line 720
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->release()V

    :cond_0
    return-void
.end method

.method private handleChangeConfig(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->changeConfigs(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V

    .line 753
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_1

    .line 754
    check-cast p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->isSTBlurOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->updateSTBlurValue(Z)V

    :cond_1
    return-void
.end method

.method private handleInitFacelighting()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    new-instance v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$2;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleInitRender()V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 745
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->initRender()V

    :cond_0
    return-void
.end method

.method private handleInitSTBlur()V
    .locals 3

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 680
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "handleInitSTBlur mContext is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 684
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 685
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isFrontCamera(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->frontCamera(Z)Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->build()Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;

    move-result-object v0

    .line 686
    new-instance v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    .line 687
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->configSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->initSTBlur()V

    const/4 v0, 0x1

    .line 689
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientValid:Z

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->getSTBlurCapture()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->setSTBlurCapture(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;)V

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->initSTBlurCapture()V

    return-void
.end method

.method private handlePauseSTBlur()V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 732
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->unInitSTBlur()V

    :cond_0
    return-void
.end method

.method private handleResumeSTBlur()V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->initSTBlur()V

    :cond_0
    return-void
.end method

.method private handleUnInitSTBlur()V
    .locals 1

    const/4 v0, 0x0

    .line 737
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientValid:Z

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    if-eqz v0, :cond_0

    .line 739
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->unInitSTBlur()V

    :cond_0
    return-void
.end method

.method private initSTBlurThread()V
    .locals 3

    .line 142
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "stblur_work_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 144
    new-instance v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFakeDualLens()Z
    .locals 2

    .line 607
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 610
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBackFakeDualCameraId()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "1"

    .line 611
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFrontCamera(Ljava/lang/String;)Z
    .locals 0

    .line 162
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    .line 163
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHumanEffectSupported()Z
    .locals 1

    .line 759
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.transsion.camera.ui.setting.humaneffect.HumanEffectSettingUIEntry"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isFeatureConfiged(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportFlash()Z
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isFrontCamera(Ljava/lang/String;)Z

    move-result v0

    .line 150
    iget p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSupportFlashType:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private readFakeDualLensSupport(Landroid/content/Context;)V
    .locals 2

    .line 589
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/stblurmode/R$integer;->stblur_fake_dual_lens_type:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    .line 599
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    goto :goto_0

    .line 595
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    goto :goto_0

    .line 592
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 617
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

    .line 72
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;
    .locals 1

    .line 622
    new-instance v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public getDataFlowType()I
    .locals 1

    .line 361
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 362
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0

    .line 365
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    .line 366
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    .line 369
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_st_blur"

    .line 278
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_tran_plugin"

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_smile_detection"

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_edit_watermark"

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_super_flash"

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_night_3dnr"

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_fingerprint_capture"

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAsdSupport:Z

    if-eqz v1, :cond_0

    const-string v1, "key_asd"

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isFakeDualLens()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "key_is_stblur_fake"

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "key_algorithm_migrate"

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "mild_beauty_type"

    .line 294
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v1, "key_mild_beauty"

    .line 296
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "key_human_effect_index"

    .line 299
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string p0, "key_auto_color_level"

    .line 301
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/mode/stblurmode/R$array;->stblur_mode_preference_setting_ui_entries:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.transsion.camera.ui.setting.picturequality.PictureQualitySettingUIEntry"

    .line 304
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "key_picture_quality"

    .line 306
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string p0, "key_taint_detection"

    .line 308
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 311
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 346
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isSupportFlash()Z

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->getRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 349
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Itel"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "key_camera_zoom"

    const-string v1, "100"

    .line 350
    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_volume_key"

    const-string v1, "Shutter"

    .line 351
    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 0

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isSupportFrontFakeDualLens()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "1"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 329
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontFakeDualCamera()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isSupportBackFakeDualLens()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "0"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 331
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackFakeDualCamera()Ljava/lang/String;

    move-result-object p5

    :cond_1
    :goto_0
    return-object p5
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v0

    invoke-super {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSizeMatch64(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailSource()I
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 341
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getThumbnailSource()I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 117
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 118
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->initSTBlurThread()V

    .line 120
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 121
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p2, :cond_0

    .line 123
    new-instance p4, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;)V

    invoke-interface {p2, p4}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 126
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p4, 0x7

    const-wide/16 p5, 0xc8

    invoke-virtual {p2, p4, p5, p6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const-string p2, "key_has_valid_face"

    .line 129
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p2, "key_st_blur"

    .line 130
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "key_human_effect_index"

    .line 132
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p4, "key_human_effect_face_checked"

    .line 133
    invoke-virtual {p0, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 134
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p4

    .line 135
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p5

    const-string p6, "0"

    invoke-virtual {p4, p2, p6, p5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    .line 137
    :cond_2
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mModeInit:Z

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "stblur_mode_asd_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAsdSupport:Z

    return-void
.end method

.method public isSupportBackFakeDualLens()Z
    .locals 0

    .line 321
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    return p0
.end method

.method public isSupportFrontFakeDualLens()Z
    .locals 0

    .line 316
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    return p0
.end method

.method public onFirstSteadyFrame()V
    .locals 2

    .line 270
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onFirstSteadyFrame()V

    .line 271
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFirstSteadyFrame"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "key_human_effect_face_checked"

    .line 247
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectFaceChecked:Z

    :cond_0
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 210
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_has_valid_face"

    .line 213
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "face_valid"

    .line 215
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    goto :goto_0

    .line 218
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "key_st_blur"

    .line 221
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "1"

    .line 223
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    goto :goto_2

    .line 226
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    .line 231
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->changeSTBlurConfig(ZZ)V

    :cond_4
    const-string v0, "key_human_effect_index"

    .line 234
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->updateConfig(Ljava/lang/String;)V

    .line 237
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    :cond_5
    return-void

    .line 242
    :cond_6
    sget-object p1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasFace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mSTBlurClientOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mHumanEffectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSettingReady()V
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modePause()V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeResume()V

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .locals 3

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mModeInit:Z

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    const-string v1, "key_has_valid_face"

    .line 193
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_st_blur"

    .line 194
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_human_effect_index"

    .line 195
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_human_effect_face_checked"

    .line 196
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 198
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 200
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectFaceChecked:Z

    return-void
.end method

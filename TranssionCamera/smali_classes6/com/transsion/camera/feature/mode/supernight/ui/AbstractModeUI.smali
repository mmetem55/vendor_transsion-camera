.class public abstract Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
.super Ljava/lang/Object;
.source "AbstractModeUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/supernight/ui/IModeUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;,
        Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_PROCESS_STEP_COVER:I = 0x3ea

.field private static final MSG_SHOW_PROCESS_STEP_COVER:I = 0x3e9

.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final THREAD_NAME:Ljava/lang/String; = "SuperNight_Animation"


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOrientation:I

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field private mProcessHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;

.field private mProgressAnimDuration:I

.field protected mResources:Landroid/content/res/Resources;

.field private mRootResourceId:I

.field private mRootView:Landroid/view/View;

.field protected mSize:Landroid/util/Size;

.field private mSteadyHintMessage:Ljava/lang/String;

.field private mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

.field private final mUseProgressStepAnimation:Z


# direct methods
.method public static synthetic $r8$lambda$9Jqla4ppZakWHwDcFftcG2Ii43A(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->lambda$new$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$x4hgs3pdHbJ2PqsfYNlARd-bwrs(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->lambda$new$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperNightModeUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOrientation:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 91
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 70
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mResources:Landroid/content/res/Resources;

    .line 74
    sget v0, Lcom/transsion/camera/feature/supernight/R$layout;->layout_super_night_processing_root:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootResourceId:I

    .line 75
    sget v0, Lcom/transsion/camera/feature/supernight/R$bool;->supernight_use_progress_step_animation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUseProgressStepAnimation:Z

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/supernight/R$string;->supernight_mode_steady_hint:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSteadyHintMessage:Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "super_night_capture_progress_duration"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProgressAnimDuration:I

    .line 78
    sget-object p1, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mProgressAnimDuration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProgressAnimDuration:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SuperNight_Animation"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance p2, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProcessHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doShowProcessStepCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doHideProcessStepCover()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doInflateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doShowProcessingAnim(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doShowEndingAnim()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doHideProcessingAnim()V

    return-void
.end method

.method private doHideProcessStepCover()V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->hideCustomPreviewCover()V

    return-void
.end method

.method private doHideProcessingAnim()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 320
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doStopProcessingAnim()V

    :cond_0
    return-void
.end method

.method private doInflateView()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootResourceId:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 294
    sget v1, Lcom/transsion/camera/feature/supernight/R$id;->super_night_processing_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    .line 295
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->onFinishInflate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->ringScreenLightUpdateUI(Z)V

    :cond_0
    return-void
.end method

.method private doShowEndingAnim()V
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->hideCapturingHint()V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doStartEndingAnim()V

    :cond_0
    return-void
.end method

.method private doShowProcessStepCover(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private doShowProcessingAnim(Z)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->doStartProcessingAnim(Z)V

    :cond_0
    return-void
.end method

.method private hideCapturingHint()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->ringScreenLightUpdateUI(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showCapturingHint()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSteadyHintMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mCaptureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method


# virtual methods
.method protected abstract doStartEndingAnim()V
.end method

.method protected abstract doStartProcessingAnim(Z)V
.end method

.method protected abstract doStopProcessingAnim()V
.end method

.method public hideProcessingAnim()V
    .locals 3

    .line 157
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->hideCapturingHint()V

    .line 158
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUseProgressStepAnimation:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProcessHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inflateView()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public init(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 88
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method protected abstract onFinishInflate(Landroid/view/View;)V
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mOrientation:I

    return-void
.end method

.method protected abstract ringScreenLightUpdateUI(Z)V
.end method

.method public showProcessingAnim(IZ)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->showCapturingHint()V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    if-ne p1, v0, :cond_1

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/16 p2, 0xca

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iget p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProgressAnimDuration:I

    if-lez p1, :cond_1

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    int-to-long v0, p1

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public startProcessStepAnim(Landroid/util/Size;)V
    .locals 4

    .line 127
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startProcessStepAnim mUseProgressStepAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUseProgressStepAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSize:Landroid/util/Size;

    .line 130
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUseProgressStepAnimation:Z

    if-nez v1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "startProcessStepAnim getBitmap done."

    .line 135
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProcessHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 99
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mUIHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProcessHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 102
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mProcessHandler:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mRootView:Landroid/view/View;

    return-void
.end method

.class public Lcom/transsion/algorithm/STBlurAlgorithm;
.super Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;
.source "STBlurAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;
    }
.end annotation


# static fields
.field private static final STBLUR_WORK_THREAD:Ljava/lang/String; = "stblur_work_thread"


# instance fields
.field private volatile mFrameDetect:Z

.field private mHasFace:Z

.field private volatile mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

.field private mSTBlurClientHandler:Landroid/os/Handler;

.field private mSTBlurClientOn:Z

.field private volatile mSTBlurClientValid:Z

.field private mSTBlurLensCovered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mHasFace:Z

    .line 32
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 34
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurLensCovered:Z

    .line 35
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mFrameDetect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleInitSTBlur()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleResumeSTBlur()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handlePauseSTBlur()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleUnInitSTBlur()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleInitRender()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/algorithm/STBlurAlgorithm;Lcom/transsion/algorithm/STBlurConfig;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleChangeConfig(Lcom/transsion/algorithm/STBlurConfig;)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/algorithm/STBlurAlgorithm;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleChangeLevel(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/algorithm/STBlurAlgorithm;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleChangeKernel(I)V

    return-void
.end method

.method private changeSTBlurConfig(ZZ)V
    .locals 1

    .line 290
    new-instance v0, Lcom/transsion/algorithm/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/algorithm/STBlurConfig$Build;-><init>()V

    .line 291
    invoke-virtual {v0, p1}, Lcom/transsion/algorithm/STBlurConfig$Build;->hasFace(Z)Lcom/transsion/algorithm/STBlurConfig$Build;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/algorithm/STBlurConfig$Build;->stBlurOn(Z)Lcom/transsion/algorithm/STBlurConfig$Build;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/algorithm/STBlurConfig$Build;->build()Lcom/transsion/algorithm/STBlurConfig;

    move-result-object p1

    .line 292
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private changeSTBlurLevel(I)V
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x7

    .line 179
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleChangeConfig(Lcom/transsion/algorithm/STBlurConfig;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v0, p1}, Lcom/transsion/algorithm/STBlurClient;->changeConfigs(Lcom/transsion/algorithm/STBlurConfig;)V

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_1

    .line 285
    check-cast p0, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;

    invoke-virtual {p1}, Lcom/transsion/algorithm/STBlurConfig;->isSTBlurOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;->updateSTBlurValue(Z)V

    :cond_1
    return-void
.end method

.method private handleChangeKernel(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_0

    .line 305
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0, p1}, Lcom/transsion/algorithm/STBlurClient;->updateKernel(I)V

    :cond_0
    return-void
.end method

.method private handleChangeLevel(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_0

    .line 299
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0, p1}, Lcom/transsion/algorithm/STBlurClient;->updateBlurLevel(I)V

    :cond_0
    return-void
.end method

.method private handleInitRender()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_0

    .line 276
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient;->initRender()V

    :cond_0
    return-void
.end method

.method private handleInitSTBlur()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "handleInitSTBlur mContext is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_0
    new-instance v0, Lcom/transsion/algorithm/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/algorithm/STBlurConfig$Build;-><init>()V

    .line 245
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/algorithm/STBlurConfig$Build;->frontCamera(Z)Lcom/transsion/algorithm/STBlurConfig$Build;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/algorithm/STBlurConfig$Build;->build()Lcom/transsion/algorithm/STBlurConfig;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/transsion/algorithm/STBlurClient;

    iget-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/algorithm/STBlurClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    .line 247
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v1, v0}, Lcom/transsion/algorithm/STBlurClient;->configSTBlur(Lcom/transsion/algorithm/STBlurConfig;)V

    .line 248
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v0}, Lcom/transsion/algorithm/STBlurClient;->initSTBlur()V

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientValid:Z

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;

    iget-object v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v1}, Lcom/transsion/algorithm/STBlurClient;->getSTBlurCapture()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;->setSTBlurCapture(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;)V

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;->initSTBlurCapture()V

    return-void
.end method

.method private handlePauseSTBlur()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_0

    .line 263
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient;->unInitSTBlur()V

    :cond_0
    return-void
.end method

.method private handleResumeSTBlur()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_0

    .line 257
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient;->initSTBlur()V

    :cond_0
    return-void
.end method

.method private handleUnInitSTBlur()V
    .locals 1

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientValid:Z

    .line 269
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient;->unInitSTBlur()V

    :cond_0
    return-void
.end method

.method private initSTBlurThread()V
    .locals 2

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "stblur_work_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v1, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;-><init>(Lcom/transsion/algorithm/STBlurAlgorithm;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFrontCamera()Z
    .locals 1

    .line 310
    iget p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZ)Z
    .locals 7

    .line 64
    iget-object p5, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz p5, :cond_1

    iget-boolean p5, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mFrameDetect:Z

    if-nez p5, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    const/4 v1, 0x0

    iget v2, p1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    iget v3, p1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    iget v4, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/algorithm/STBlurClient;->drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIIII)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_mu_monomer"

    return-object p0
.end method

.method public init(II)Z
    .locals 1

    .line 49
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->init(II)Z

    .line 50
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientValid:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p1}, Lcom/transsion/algorithm/STBlurClient;->initPreviewBlurGLThread()V

    .line 57
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 58
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    .line 51
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init mSTBlurClient: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mSTBlurClientValid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientValid:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public needPreviewFrame()Z
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needPreviewFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 147
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->initSTBlurThread()V

    .line 148
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const-string p1, "key_has_valid_face"

    .line 149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_lens_warning"

    .line 150
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string p3, "key_mu_monomer"

    const-string p4, "f0.0"

    invoke-virtual {p1, p3, p4, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    return-void
.end method

.method public onModeUnInit()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeUnInit()V

    const-string v0, "key_has_valid_face"

    .line 158
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_lens_warning"

    .line 159
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public onPreviewFrame([BIII)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/algorithm/STBlurClient;->processPreviewBlur([BIII)V

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mFrameDetect:Z

    :cond_0
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "key_lens_warning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "key_mu_monomer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "key_has_valid_face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 119
    :pswitch_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 120
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 121
    iput-boolean v2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurLensCovered:Z

    goto :goto_2

    .line 123
    :cond_3
    iput-boolean v2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 124
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurLensCovered:Z

    goto :goto_2

    :pswitch_1
    const-string p1, "f0.0"

    .line 104
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 105
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 106
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    goto :goto_1

    .line 108
    :cond_4
    iput-boolean v2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 109
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    .line 110
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/transsion/algorithm/STBlurAlgorithm;->changeSTBlurLevel(I)V

    .line 113
    :goto_1
    iget-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurLensCovered:Z

    if-eqz p1, :cond_6

    .line 114
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    goto :goto_2

    :pswitch_2
    const-string p1, "face_valid"

    .line 96
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 97
    iput-boolean v2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mHasFace:Z

    goto :goto_2

    .line 99
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mHasFace:Z

    :cond_6
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_7

    .line 132
    iget-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mHasFace:Z

    iget-boolean p2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/algorithm/STBlurAlgorithm;->changeSTBlurConfig(ZZ)V

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x38f3fe9b -> :sswitch_2
        0x2093e60 -> :sswitch_1
        0x5f0a773b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSettingReady()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingReady()V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "f0.0"

    .line 140
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    .line 74
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-nez v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "unInit mSTBlurClient is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v0}, Lcom/transsion/algorithm/STBlurClient;->unInitPreviewBlurGLThread()V

    .line 80
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mFrameDetect:Z

    return-void
.end method

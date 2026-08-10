.class public abstract Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;
.super Ljava/lang/Object;
.source "AbstractGpuProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;


# instance fields
.field protected final DEBUG:Z

.field protected mCameraId:Ljava/lang/String;

.field protected mConfigChanged:Z

.field protected mContext:Landroid/content/Context;

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

.field protected mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

.field protected mIsOpenProcess:Z

.field private mIsPreProcessed:Z

.field protected mLensFacing:I

.field protected mModeResumed:Z

.field protected mParameter:Ljava/lang/String;

.field protected mProcessInited:Z

.field protected final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field protected mSensorOrientation:I

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->DEBUG:Z

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsPreProcessed:Z

    .line 217
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor$1;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mContext:Landroid/content/Context;

    .line 41
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onSettingChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 226
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 227
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 229
    check-cast p2, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract synthetic algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZ)Z
.end method

.method public getDefaultParameter()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract synthetic getKey()Ljava/lang/String;
.end method

.method public getPreProcessed()Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsPreProcessed:Z

    return p0
.end method

.method public init(II)Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    if-eq v0, p2, :cond_1

    .line 50
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    .line 51
    iput p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public needPreviewFrame()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraOperateAction(I)V
    .locals 0

    return-void
.end method

.method public onFirstSteadyFrame()V
    .locals 1

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onFirstSteadyFrame"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModeInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    .line 152
    iput-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mCameraId:Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    .line 154
    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    .line 155
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    .line 156
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSensorOrientation:I

    .line 157
    iput-object p3, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 158
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 159
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 160
    iput-object p4, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIGLThreadRunnable:Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;

    .line 161
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onModePaused()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModePaused, mProcessInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    :cond_0
    return-void
.end method

.method public onModeResumed()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeResumed, mProcessInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    .line 183
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-nez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    iget v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->init(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    :cond_0
    return-void
.end method

.method public onModeUnInit()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModeUnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewFrame([BIII)V
    .locals 0

    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onSettingReady()V
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onSettingReady"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceDestoryed()V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    :cond_0
    return-void
.end method

.method public process(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJ)Z
    .locals 12

    move-object v9, p0

    .line 77
    iget-boolean v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-nez v0, :cond_0

    iget-boolean v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    if-eqz v0, :cond_0

    move v3, p3

    move/from16 v4, p4

    .line 78
    invoke-virtual {p0, p3, v4}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->init(II)Z

    move-result v0

    iput-boolean v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->getDefaultParameter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->setParameter(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v3, p3

    move/from16 v4, p4

    .line 83
    :cond_1
    :goto_0
    iget-boolean v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-nez v0, :cond_2

    iget-boolean v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    .line 86
    :cond_2
    iget-boolean v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 87
    iget-boolean v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mConfigChanged:Z

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mParameter:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->setParameter(Ljava/lang/String;)V

    .line 89
    iput-boolean v1, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mConfigChanged:Z

    .line 91
    :cond_3
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v2, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mCameraId:Ljava/lang/String;

    .line 92
    invoke-interface {v0, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_4

    move v8, v2

    goto :goto_1

    :cond_4
    move v8, v1

    .line 93
    :goto_1
    iget-object v0, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "process +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    .line 95
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZ)Z

    move-result v0

    .line 96
    iget-object v1, v9, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process - : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_5
    return v1
.end method

.method protected registerKeyToMonitor(Ljava/lang/String;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerKeyToMonitor +: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method protected screenPocket()Z
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    .line 68
    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPreProcessed(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsPreProcessed:Z

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    .line 107
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    return-void
.end method

.method protected unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterKeyToMonitor -: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

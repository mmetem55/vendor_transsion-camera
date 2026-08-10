.class public Lcom/transsion/camera/app/common/ModuleTransferManager;
.super Ljava/lang/Object;
.source "ModuleTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;,
        Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;,
        Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mModuleTransferManager:Lcom/transsion/camera/app/common/ModuleTransferManager;


# instance fields
.field private isAllowedInvoke:Z

.field private isAnimatorRunning:Z

.field private final mCameraStateManager:Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

.field public mCurrentCameraId:Ljava/lang/String;

.field private mCurrentH:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mCurrentModeName:Ljava/lang/String;

.field private mCurrentW:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mModuleTransfers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/IModuleTransfer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnRegisterCompleteListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$2ikDq4fIlRVpKejNEQJaQa3biAA(ZLcom/transsion/camera/app/common/IModuleTransfer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->lambda$onRingScreenLightChange$1(ZLcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s0GC2iZKsO6Td1u13SuCwDS3VMw(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->lambda$onComplete$0(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 17
    new-instance v0, Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransferManager:Lcom/transsion/camera/app/common/ModuleTransferManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;-><init>(Lcom/transsion/camera/app/common/ModuleTransferManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCameraStateManager:Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentW:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentH:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "ASDModeEntry"

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "0"

    .line 33
    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentCameraId:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAnimatorRunning:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    return-void
.end method

.method public static getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;
    .locals 1

    .line 80
    sget-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransferManager:Lcom/transsion/camera/app/common/ModuleTransferManager;

    return-object v0
.end method

.method private static synthetic lambda$onComplete$0(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V
    .locals 0

    .line 120
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$onRingScreenLightChange$1(ZLcom/transsion/camera/app/common/IModuleTransfer;)V
    .locals 0

    .line 133
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IModuleTransfer;->onTransfer(Z)V

    return-void
.end method


# virtual methods
.method public getCameraStateManager()Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCameraStateManager:Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    return-object p0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getRingScreenLightState()Z
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFrontCamera(Ljava/lang/String;)Z
    .locals 0

    .line 84
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 85
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public declared-synchronized onComplete()V
    .locals 2

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRingScreenLightChange(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRingScreenLightChange(ZZ)V
    .locals 3

    monitor-enter p0

    .line 126
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke transfer.--->>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--->>>isAllowedInvoke:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--->>>mLightState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--->>>isLowLight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 132
    :goto_0
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z

    .line 133
    iget-object p2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setScreenFlashMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerCompleteListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 106
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V
    .locals 3

    monitor-enter p0

    .line 89
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register transfer listener.--->>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restart()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 143
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentH(I)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setCurrentW(I)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public declared-synchronized unregisterCompleteListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V
    .locals 3

    monitor-enter p0

    .line 96
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister transfer listener.--->>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --->>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

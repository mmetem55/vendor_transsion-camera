.class public Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;
.super Ljava/lang/Object;
.source "CommonPhotoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContinuousShot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;
    }
.end annotation


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field final mCaptureSoundLock:Ljava/lang/Object;

.field mCaptureSoundResId:I

.field mCaptureSoundSampleId:I

.field mLatestBurstJpegData:[B

.field private final mMaxBurstNumber:I

.field mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile mShotDone:Z

.field private mShotStartTime:J

.field volatile mShotStarted:Z

.field mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mShutterListener:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
            "TT;TD;>.ContinuousShot.InterceptShutter",
            "Listener;"
        }
    .end annotation
.end field

.field mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;


# direct methods
.method public static synthetic $r8$lambda$AIT1lhvfWB_3p_uVvUYn7a1Uc5k(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->lambda$onPreviewStarted$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/content/Context;II)V
    .locals 2

    .line 1538
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 1519
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1520
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 1522
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    .line 1524
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1525
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1528
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundLock:Ljava/lang/Object;

    if-gtz p3, :cond_0

    const/16 p2, 0x14

    .line 1540
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    goto :goto_0

    .line 1542
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    .line 1545
    :goto_0
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundResId:I

    .line 1546
    iget-object p2, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1548
    new-instance p2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

    invoke-direct {p2, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterListener:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

    .line 1549
    iget-object p0, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x9

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 1510
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 1593
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne p1, p0, :cond_0

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

.method private synthetic lambda$onPreviewStarted$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 1568
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 1570
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 1572
    :cond_0
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    .line 1574
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private lock3AForContinuousShot(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1598
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 1599
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1600
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    goto :goto_0

    .line 1603
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1604
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onContinuousShotDone()V
    .locals 4

    .line 1815
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onContinuousShotDone"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->resetState()V

    const/4 v0, 0x1

    .line 1818
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    .line 1819
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1820
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x24

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private onContinuousShotStop()V
    .locals 3

    .line 1773
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotStop mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1776
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->lock3AForContinuousShot(Z)V

    .line 1778
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;->onContinuousShotStop()V

    .line 1780
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 1783
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateUIStateSaving()V

    goto :goto_1

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1786
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    if-eqz v0, :cond_1

    .line 1787
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 1788
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateBurstBrowserData(Landroid/net/Uri;Z)V

    .line 1789
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    goto :goto_0

    .line 1791
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mLatestBurstJpegData is null in onContinuousShotStop."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1793
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateUIStateSaving()V

    .line 1794
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotDone()V

    goto :goto_1

    .line 1796
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotDone()V

    .line 1800
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    return-void
.end method

.method private saveJpegToFile([BI)V
    .locals 16

    move-object/from16 v0, p0

    .line 1732
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 1733
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 1734
    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStartTime:J

    const/4 v5, 0x0

    move-object/from16 v4, p1

    move/from16 v10, p2

    .line 1733
    invoke-virtual/range {v3 .. v10}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;JI)Landroid/content/ContentValues;

    move-result-object v11

    .line 1735
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v10, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    new-instance v14, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$1;

    invoke-direct {v14, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-object/from16 v12, p1

    invoke-interface/range {v10 .. v15}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Z)V

    return-void
.end method

.method private updateUIStateSaving()V
    .locals 3

    .line 1804
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$900(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "update UI to idle state if not resumed"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1806
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-interface {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 1810
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x3

    const/16 v2, 0x64

    invoke-interface {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isShotting()Z
    .locals 3

    monitor-enter p0

    .line 1705
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShotting mIsShotJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1706
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onContinuousShotFailed()V
    .locals 3

    monitor-enter p0

    .line 1626
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotFailed mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1629
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mShotDone onContinuousShotFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    monitor-exit p0

    return-void

    .line 1633
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1634
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShot()V

    .line 1635
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1637
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onContinuousShotProgress([B)V
    .locals 6

    monitor-enter p0

    .line 1641
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotProgress mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1644
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_0

    .line 1645
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mShotDone onContinuousShotProgress"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    monitor-exit p0

    return-void

    .line 1648
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "continuous shot has been stopped"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1650
    monitor-exit p0

    return-void

    .line 1653
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_2

    .line 1654
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1655
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1656
    monitor-exit p0

    return-void

    .line 1659
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 1661
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1663
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    invoke-interface {v2, v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;->onContinuousShotProgress(II)V

    .line 1665
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContinuousShotProgress mBurstProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mSaveProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1668
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    if-ne v2, v0, :cond_5

    .line 1669
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1670
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_4

    .line 1671
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShotCount()V

    .line 1673
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V

    .line 1676
    :cond_5
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    .line 1677
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->saveJpegToFile([BI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1678
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onFileSavedImpl(Landroid/net/Uri;)V
    .locals 3

    monitor-enter p0

    .line 1745
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1747
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileSavedImpl mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1751
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1753
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 1754
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateBurstBrowserData(Landroid/net/Uri;Z)V

    .line 1756
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    if-eqz p1, :cond_2

    .line 1757
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 1758
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateBurstBrowserData(Landroid/net/Uri;Z)V

    .line 1759
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    goto :goto_0

    .line 1761
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mLatestBurstJpegData is null in onFileSavedImpl."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1763
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotDone()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 1766
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 1767
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateBurstBrowserData(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPreviewStarted()V
    .locals 3

    .line 1562
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    if-eqz v0, :cond_0

    return-void

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_1

    .line 1567
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundResId:I

    new-instance v2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 1724
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1725
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    const/4 v1, 0x0

    .line 1726
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterListener:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1727
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method resetState()V
    .locals 2

    .line 1553
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1554
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1555
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    .line 1556
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1557
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public startContinuousShot()V
    .locals 3

    .line 1581
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startContinuousShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1583
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->resetState()V

    const/4 v0, 0x0

    .line 1584
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    const/4 v0, 0x1

    .line 1585
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    .line 1586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStartTime:J

    .line 1587
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onContinuousShotStart()V

    .line 1588
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->lock3AForContinuousShot(Z)V

    .line 1589
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startContinuousShot(I)V

    return-void
.end method

.method public declared-synchronized startContinuousShutter()V
    .locals 3

    monitor-enter p0

    .line 1682
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startContinuousShutter mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsShotJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShutterState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1685
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    if-nez v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing is continuous shot not start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    monitor-exit p0

    return-void

    .line 1689
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_1

    .line 1690
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mShotDone startContinuousShutter"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1691
    monitor-exit p0

    return-void

    .line 1694
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_shutter_sound"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 1695
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1696
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing if shutter is not on"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1697
    monitor-exit p0

    return-void

    .line 1699
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1700
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->play(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1702
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopContinuousShot()V
    .locals 3

    monitor-enter p0

    .line 1611
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopContinuousShot mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1614
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mShotDone stopContinuousShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    monitor-exit p0

    return-void

    .line 1618
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1619
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShot()V

    .line 1620
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1622
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized terminateContinuousShot()V
    .locals 3

    monitor-enter p0

    .line 1711
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateContinuousShot mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1714
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing if continuous shot is done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1716
    monitor-exit p0

    return-void

    .line 1719
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->stopContinuousShot()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1720
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

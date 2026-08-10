.class public Lcom/transsion/camera/app/common/provider/QuickCaptureManager;
.super Ljava/lang/Object;
.source "QuickCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;,
        Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurActionCount:I

.field private final mJpegItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/provider/QuickCaptureItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mQCHandle:Landroid/os/Handler;

.field private mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

.field private volatile mShutterActionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/provider/QuickCaptureItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickCaptureManager"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "quickcapture_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;-><init>(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Landroid/os/Looper;Lcom/transsion/camera/app/common/provider/QuickCaptureManager$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processShutterAction(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processShutterStart(Z)V

    return-void
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processThumbnail(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;[BZLcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processSaveData([BZLcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processFinishThisShot()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processLeave()V

    return-void
.end method

.method private actionToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SHUTTER_ACTION_CANCEL"

    return-object p0

    :cond_1
    const-string p0, "SHUTTER_ACTION_LONG"

    return-object p0

    :cond_2
    const-string p0, "SHUTTER_ACTION_CLICK"

    return-object p0

    :cond_3
    const-string p0, "SHUTTER_ACTION_UP"

    return-object p0

    :cond_4
    const-string p0, "SHUTTER_ACTION_DOWN"

    return-object p0
.end method

.method private getCurQCActionItemForShutterStart()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;
    .locals 2

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 472
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCProcessShutterStartDone()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object v0
.end method

.method private getCurQCActionItemForThumbnail()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;
    .locals 2

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 459
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 461
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCProcessThumbnailDone()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object v0
.end method

.method private getShutterActionMapHeadItem()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;
    .locals 1

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 439
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 441
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getShutterActionMapHeadKey()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 449
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 451
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private printShutterActionMap()V
    .locals 6

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 486
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 488
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 489
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    .line 490
    sget-object v3, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QuickCapture]printShutterActionMap, key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", action:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", need animation:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCNeedAnimation()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]printShutterActionMap, ActionMap size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Thumbnail List size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    .line 494
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Jpeg List size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private processFinishThisShot()V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 384
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[QuickCapture]processFinishThisShot, not need remove"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->getShutterActionMapHeadKey()Ljava/lang/String;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]processFinishThisShot remove key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    return-void
.end method

.method private processLeave()V
    .locals 6

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 396
    sget-object v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]processLeave, ActionMap size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 397
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 398
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    .line 400
    sget-object v3, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QuickCapture]processLeave, action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_5

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    goto :goto_2

    .line 417
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 419
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCProcessThumbnailDone()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "[QuickCapture]processLeave, cur item error, not need discard thumbnail."

    .line 420
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string v1, "[QuickCapture]processLeave, need discard this thumbnail data"

    .line 423
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string v1, "[QuickCapture]processLeave, need discard this jpeg data"

    .line 428
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v1, :cond_7

    .line 404
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCProcessThumbnailDone()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "[QuickCapture]processLeave, cur item error, not need update thumbnail."

    .line 405
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3

    .line 407
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getWhichThumbnail()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    .line 408
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v4

    .line 407
    invoke-interface {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)I

    .line 409
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 412
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v1, :cond_0

    .line 413
    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurJpeg()[B

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->isCurBGImage()Z

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    .line 414
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v4

    .line 413
    invoke-interface {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;)I

    .line 415
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 432
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 433
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    return-void
.end method

.method private processSaveData([BZLcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 5

    .line 345
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->getShutterActionMapHeadItem()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 347
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[QuickCapture]processSaveData, error"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p0, :cond_0

    .line 349
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;)I

    :cond_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    .line 355
    sget-object v2, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QuickCapture]processSaveData, oldActionState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isBGImage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 359
    new-instance v0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;-><init>()V

    .line 360
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setJpegItem([BZ)V

    .line 361
    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[QuickCapture]processSaveData, add new jpeg data, Jpeg List size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    goto :goto_0

    .line 372
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[QuickCapture]processSaveData, need discard this jpeg data and finish this shot, FinishThisShot remove key:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p1, :cond_5

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;)I

    .line 377
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    goto :goto_1

    .line 365
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v1, :cond_5

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]processSaveData, needQCSaveJpegToFile and FinishThisShot remove key:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;)I

    .line 369
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    :cond_5
    :goto_1
    return-void
.end method

.method private processShutterAction(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 225
    :cond_0
    iget v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    .line 230
    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCAction(I)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_1

    .line 233
    :cond_4
    :goto_0
    new-instance v2, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;-><init>()V

    .line 234
    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCAction(I)V

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCItemKey(Ljava/lang/String;)V

    .line 236
    iget-object v5, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-nez v2, :cond_5

    .line 241
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QuickCapture]processShutterAction error, action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_5
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result p1

    .line 246
    sget-object v5, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[QuickCapture]processShutterAction, action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mCurActionCount:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eq p1, v1, :cond_a

    if-ne p1, v0, :cond_6

    goto/16 :goto_2

    :cond_6
    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p1, v0, :cond_7

    if-ne p1, v1, :cond_d

    :cond_7
    if-ne p1, v1, :cond_8

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v0, :cond_8

    const/16 v1, 0x57

    .line 269
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCNotifyActionToAppUI(I)I

    .line 271
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QuickCapture]processShutterAction, need discard this thumbnail data, action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz v0, :cond_d

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[QuickCapture]processShutterAction, need discard this jpeg data, action:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", FinishThisShot remove key:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {v5, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    invoke-interface {p1, v3, v4, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;)I

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    goto/16 :goto_3

    .line 249
    :cond_a
    :goto_2
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->isQCNeedAnimation()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p1, :cond_b

    .line 250
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCNeedAnimation(Z)V

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    const/16 v0, 0x96

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCNotifyActionToAppUI(I)I

    .line 254
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p1, :cond_c

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getWhichThumbnail()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    .line 256
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v3

    .line 255
    invoke-interface {p1, v0, v1, v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)I

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p1, :cond_d

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurJpeg()[B

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->isCurBGImage()Z

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    .line 261
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v3

    .line 260
    invoke-interface {p1, v0, v1, v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;)I

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mJpegItemList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[QuickCapture]processShutterAction, needQCSaveJpegToFile and FinishThisShot remove key:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mShutterActionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->printShutterActionMap()V

    :cond_d
    :goto_3
    return-void
.end method

.method private processShutterStart(Z)V
    .locals 5

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->getCurQCActionItemForShutterStart()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 296
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[QuickCapture]processShutterStart, not need animation return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCProcessShutterStartDone(Z)V

    return-void

    .line 301
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result p1

    .line 302
    sget-object v2, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QuickCapture]processShutterStart, oldActionState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 306
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCNeedAnimation(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_4

    .line 310
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p0, :cond_4

    const/16 p1, 0x96

    .line 311
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCNotifyActionToAppUI(I)I

    .line 314
    :cond_4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCProcessShutterStartDone(Z)V

    return-void
.end method

.method private processThumbnail(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 5

    .line 318
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->getCurQCActionItemForThumbnail()Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[QuickCapture]processThumbnail, error"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCAction()I

    move-result v1

    .line 325
    sget-object v2, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QuickCapture]processThumbnail, oldActionState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->getQCItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", whichThumbnail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 329
    new-instance v1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;-><init>()V

    .line 330
    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setThumbnailItem(ILandroid/graphics/Bitmap;)V

    .line 331
    invoke-virtual {v1, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[QuickCapture]processThumbnail, add new thumbnail data, Thumbnail List size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mThumbnailItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "[QuickCapture]processThumbnail, need discard this thumbnail data."

    .line 339
    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 335
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    if-eqz p0, :cond_4

    .line 336
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;->needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)I

    .line 341
    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/provider/QuickCaptureActionItem;->setQCProcessThumbnailDone(Z)V

    return-void
.end method


# virtual methods
.method public processQCPictureData()I
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 79
    :goto_0
    sget-object v1, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]processQCPictureData, need process picture count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public sendFinishThisShot()Z
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 143
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]sendFinishThisShot, need process picture count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    if-nez p0, :cond_0

    const-string p0, "[QuickCapture]sendFinishThisShot, mQCHandle == null, return"

    .line 145
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0xcd

    .line 148
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 140
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[QuickCapture]sendFinishThisShot return, picture count is 0"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public sendSaveData([BZLcom/transsion/camera/app/common/mode/ICameraMode;)I
    .locals 3

    .line 123
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]sendSaveData, isBGImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "[QuickCapture]sendSaveData, mQCHandle == null, return"

    .line 125
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 128
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;-><init>()V

    .line 129
    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 130
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setJpegItem([BZ)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/16 p1, 0xcc

    invoke-virtual {p0, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, -0x1

    return p0
.end method

.method public sendShutterAction(II)Z
    .locals 4

    .line 84
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]sendShutterAction, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", curPriority:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", need process picture count:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mPictureProcessingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/4 p2, 0x0

    if-nez p0, :cond_2

    const-string p0, "[QuickCapture]sendShutterAction, mQCHandle == null, return"

    .line 92
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2

    :cond_2
    const/16 v0, 0xc9

    .line 95
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public sendShutterStart(Z)Z
    .locals 2

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 102
    sget-object p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[QuickCapture]sendShutterStart, mQCHandle == null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    const/16 v1, 0xca

    .line 105
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public sendThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)I
    .locals 3

    .line 110
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]sendThumbnailView, whichThumbnail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "[QuickCapture]sendThumbnailView, mQCHandle == null, return"

    .line 112
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 115
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;-><init>()V

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setThumbnailItem(ILandroid/graphics/Bitmap;)V

    .line 117
    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    const/16 p1, 0xcb

    invoke-virtual {p0, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, -0x1

    return p0
.end method

.method public setQuickCaptureResultListener(Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCResultListener:Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;

    return-void
.end method

.method public uninit()V
    .locals 3

    .line 58
    sget-object v0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "uninit start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/16 v2, 0xc8

    .line 60
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->mQCHandle:Landroid/os/Handler;

    :cond_0
    const-string p0, "uninit end"

    .line 65
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

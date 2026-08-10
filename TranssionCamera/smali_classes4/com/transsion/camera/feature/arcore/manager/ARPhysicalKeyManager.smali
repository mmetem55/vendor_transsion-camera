.class public Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;
.super Ljava/lang/Object;
.source "ARPhysicalKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_DELAY_TIME_LONG:I = 0x320

.field private static final FINGERPRINT_DELAY_TIME_SHORT:I = 0x12c

.field private static final FINGERPRINT_TAKE_PHOTO:Ljava/lang/String; = "fingerprint_take_photo"

.field private static final MSG_FINGERPRINT_ACTION:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBackFingerPrint:Z

.field private mIsDelayForCapture:Z

.field private mIsFingerPrintOn:Z

.field private mIsSideFingerPrint:Z

.field private mKeyEventCallBack:Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector$IKeyEventCallback;

.field private mKeyEventDetector:Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector;

.field private mShutterButtonListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

.field private mUIHandler:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARPhysicalKeyManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsDelayForCapture:Z

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsFingerPrintOn:Z

    .line 169
    new-instance v0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;-><init>(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mKeyEventCallBack:Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector$IKeyEventCallback;

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 69
    new-instance p1, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;-><init>(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;

    .line 70
    new-instance p1, Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mKeyEventCallBack:Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector$IKeyEventCallback;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector;-><init>(Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector$IKeyEventCallback;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector;

    const-string p1, "ro.side_fingerprint_support"

    const-string v0, "0"

    .line 71
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsSideFingerPrint:Z

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsBackFingerPrint:Z

    .line 74
    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsFingerPrintOn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mShutterButtonListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    return-object p0
.end method

.method private doFingerPrintAction()V
    .locals 3

    .line 99
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsDelayForCapture:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsDelayForCapture:Z

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsSideFingerPrint:Z

    if-eqz v1, :cond_1

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private isNeedFingerprint()Z
    .locals 3

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSideFingerPrint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsSideFingerPrint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerPrintOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsFingerPrintOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsSideFingerPrint:Z

    if-eqz v0, :cond_0

    .line 85
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsFingerPrintOn:Z

    return p0

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsBackFingerPrint:Z

    if-eqz v0, :cond_1

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsFingerPrintOn:Z

    return p0

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_take_photo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private resetFingerPrintStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mIsDelayForCapture:Z

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x162

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 122
    :pswitch_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mShutterButtonListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->isInterceptVolume()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->isNeedFingerprint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->doFingerPrintAction()V

    :cond_1
    return v1

    .line 129
    :cond_2
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector;->keyDown(ILandroid/view/KeyEvent;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x162

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 151
    :pswitch_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mShutterButtonListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->isInterceptVolume()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mShutterButtonListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->getPlaneVisibility()I

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->isNeedFingerprint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->resetFingerPrintStatus()V

    :cond_1
    return v1

    .line 158
    :cond_2
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector;->keyUp(ILandroid/view/KeyEvent;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShutterButtonListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->mShutterButtonListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    return-void
.end method

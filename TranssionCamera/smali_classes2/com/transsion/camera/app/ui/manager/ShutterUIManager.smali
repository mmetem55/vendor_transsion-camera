.class public Lcom/transsion/camera/app/ui/manager/ShutterUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "ShutterUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mInEditWaterMarkFragment:Z

.field private mInFragment:Z

.field private mInMicroPanTilt:Z

.field private mInModeSwitching:Z

.field private mInMoreModeView:Z

.field private mInOrderEditorFragment:Z

.field private mInRemoteCaptureFragment:Z

.field private mInSwitchingDevice:Z

.field private mIsTimelapseForceEnable:Z

.field private mPendingWriting:Z

.field private mResuming:Z

.field private mShutterHook:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

.field private final mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

.field private mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

.field private mWriting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v7, p3

    .line 53
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p3, 0x0

    .line 34
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    .line 35
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    .line 36
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    .line 37
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    .line 39
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMoreModeView:Z

    .line 40
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 44
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    .line 45
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    .line 46
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    .line 48
    new-instance p3, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    .line 54
    new-instance p3, Lcom/transsion/camera/app/ui/ShutterUI;

    invoke-direct {p3, p1, p2}, Lcom/transsion/camera/app/ui/ShutterUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    .line 55
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Lcom/transsion/camera/app/ui/manager/ShutterUIManager$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterHook:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    return-object p0
.end method


# virtual methods
.method public getShutterTypeSelftimerOff()I
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method public isRecordingAndOrientation(ZI)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_0

    .line 60
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->isRecordingAndOrientation(ZI)V

    :cond_0
    return-void
.end method

.method public loadAfterPreviewStarted()V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->loadAfterPreviewStarted()V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    if-eq p1, v0, :cond_c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_a

    const/16 v2, 0x9

    if-eq p1, v2, :cond_9

    const/16 v2, 0x14

    if-eq p1, v2, :cond_8

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_7

    const/16 v2, 0x11

    if-eq p1, v2, :cond_6

    const/16 v2, 0x12

    if-eq p1, v2, :cond_8

    const/16 v2, 0x4d

    if-eq p1, v2, :cond_6

    const/16 v2, 0x4e

    if-eq p1, v2, :cond_8

    const/16 v2, 0x55

    if-eq p1, v2, :cond_5

    const/16 v2, 0x56

    if-eq p1, v2, :cond_4

    const/16 v2, 0x76

    if-eq p1, v2, :cond_3

    const/16 v2, 0x77

    if-eq p1, v2, :cond_2

    const/16 v2, 0x90

    if-eq p1, v2, :cond_1

    const/16 v2, 0x91

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 350
    :pswitch_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    goto :goto_0

    .line 347
    :pswitch_1
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    goto :goto_0

    .line 337
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    goto :goto_0

    .line 334
    :pswitch_3
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    goto :goto_0

    .line 330
    :pswitch_4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMicroPanTilt:Z

    goto :goto_0

    .line 327
    :pswitch_5
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMicroPanTilt:Z

    goto :goto_0

    .line 356
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    goto :goto_0

    .line 353
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    goto :goto_0

    .line 343
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMoreModeView:Z

    goto :goto_0

    .line 340
    :cond_3
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMoreModeView:Z

    goto :goto_0

    .line 313
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    goto :goto_0

    .line 310
    :cond_5
    :pswitch_6
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    goto :goto_0

    .line 291
    :cond_6
    :pswitch_7
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    goto :goto_0

    .line 316
    :cond_7
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 317
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    .line 318
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    .line 319
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMicroPanTilt:Z

    .line 320
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    .line 321
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    .line 322
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    .line 323
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    goto :goto_0

    .line 297
    :cond_8
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    goto :goto_0

    .line 360
    :cond_9
    :pswitch_8
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    .line 361
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    .line 362
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mPendingWriting:Z

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mWriting:Z

    goto :goto_0

    .line 368
    :cond_a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    goto :goto_0

    .line 365
    :cond_b
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    goto :goto_0

    .line 305
    :cond_c
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    goto :goto_0

    .line 301
    :cond_d
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    .line 372
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz v2, :cond_16

    .line 373
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMoreModeView:Z

    if-eqz v3, :cond_e

    .line 374
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "When camera shows more mode view ,it needs disable shutter button"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    return-void

    :cond_e
    const/16 v3, 0x63

    if-ne p1, v3, :cond_f

    .line 379
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    return-void

    :cond_f
    const/16 v3, 0x1e

    if-ne p1, v3, :cond_10

    .line 382
    invoke-interface {v2}, Lcom/transsion/camera/app/ui/IShutterUI;->getShutterType()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOn()I

    move-result v3

    if-eq v2, v3, :cond_10

    .line 383
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "shot2shot end action need enable shutter button "

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    return-void

    :cond_10
    const/16 v2, 0x3e9

    .line 387
    invoke-static {v2, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondUIManagerEvent(II)I

    move-result v2

    .line 388
    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v3, :cond_11

    .line 389
    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v3

    invoke-static {v3, p1, v2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v2

    :cond_11
    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    const/16 v3, 0x34

    if-ne p1, v3, :cond_12

    move v2, v0

    goto :goto_1

    :cond_12
    const/16 v3, 0x35

    if-ne p1, v3, :cond_13

    .line 395
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInSwitchingDevice:Z

    if-nez p1, :cond_13

    move v2, v1

    :cond_13
    :goto_1
    if-ne v2, v0, :cond_14

    .line 401
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    goto :goto_2

    :cond_14
    if-nez v2, :cond_15

    .line 402
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInOrderEditorFragment:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInRemoteCaptureFragment:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInMicroPanTilt:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInEditWaterMarkFragment:Z

    if-nez p1, :cond_15

    .line 403
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setEnable(Z)V

    goto :goto_2

    .line 405
    :cond_15
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInFragment:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_16
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x89
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IShutterUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 2

    .line 105
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 106
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IShutterUI;->setupViews()V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/IShutterUI;->setOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_0

    .line 83
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->onPause()V

    :cond_0
    return-void
.end method

.method public registerOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V
    .locals 0

    if-nez p1, :cond_0

    .line 118
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerOnShutterListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resume()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->onResume()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 412
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mIsTimelapseForceEnable:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    .line 414
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 418
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction setEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mWriting:Z

    if-eqz v1, :cond_1

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "but watermark writing return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 423
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_2

    .line 424
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterHook:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->setShutterTypeSelftimerOff(I)V

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IShutterUI;->setShutterTypeSelftimerOn(I)V

    return-void
.end method

.method public setWritingState(Z)V
    .locals 3

    .line 430
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mPendingWriting:Z

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IShutterUI;->isPressed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 432
    :goto_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    goto :goto_1

    .line 437
    :cond_1
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mWriting:Z

    .line 438
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction mWriting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mWriting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    if-eqz p0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 440
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_2
    return-void

    .line 433
    :cond_3
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction setWritingState return, mResuming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mResuming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInModeSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mInModeSwitching:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", pressed:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public transitionToIdle()V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToIdle()V

    return-void
.end method

.method public transitionToProcessing()V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToProcessing()V

    return-void
.end method

.method public transitionToRegular()V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToRegular()V

    return-void
.end method

.method public transitionToSmall()V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToSmall()V

    return-void
.end method

.method public transitionToSmile()V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToSmile()V

    return-void
.end method

.method public transitionToVoice()V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->transitionToVoice()V

    return-void
.end method

.method public triggerShutterClick(I)V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->onShutterClick(I)V

    return-void
.end method

.method public triggerShutterLongClick(I)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->onShutterLongClick(I)V

    return-void
.end method

.method public triggerShutterUp()V
    .locals 1

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListenerImpl:Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->onShutterUp(I)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IShutterUI;->unInit()V

    return-void
.end method

.method public unRegisterOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 126
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "unRegisterOnShutterListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public updateShutterType(IZ)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->mShutterUI:Lcom/transsion/camera/app/ui/IShutterUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IShutterUI;->updateShutterType(IZ)V

    return-void
.end method

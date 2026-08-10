.class public Lcom/transsion/camera/app/ArCoreMainActivity;
.super Lcom/transsion/camera/app/ARPermissionActivity;
.source "ArCoreMainActivity.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;,
        Lcom/transsion/camera/app/ArCoreMainActivity$VideoCallBroadcastReceiver;,
        Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile mIsInited:Z


# instance fields
.field private mARPhysicalKeyManager:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

.field private mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

.field private mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field private mArActivityCoverLayout:Landroid/view/View;

.field private mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

.field private mCameraError:Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;

.field private mCutoutHeight:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFaceDetectView:Landroid/widget/ImageView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

.field private mGuideCaptureLayout:Landroid/widget/FrameLayout;

.field private mGuideContent:Landroid/widget/TextView;

.field private mGuideIV:Landroid/widget/ImageView;

.field private mGuideLayout:Landroid/view/View;

.field private mGuideTitle:Landroid/widget/TextView;

.field private mGuideView:Landroid/widget/TextView;

.field private mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

.field private mHintRoot:Landroid/widget/FrameLayout;

.field private mHintText:Landroid/widget/TextView;

.field private mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

.field private final mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

.field private mIsComeBackFromReview:Z

.field private mIsResume:Z

.field private mItemDefault:Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;

.field private mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

.field private mNavigationHeight:I

.field private final mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

.field private final mOrientationListenerForSystemUI:Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

.field private mReceiveCancelVideoCall:Z

.field private mRotateActionPanel:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mShutterButtonListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private final mStorageOperatorListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

.field private mThumbnailLoader:Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;

.field private mUIHandler:Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

.field private mVideoCallReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$ElgUGrqLrSI_LgThSsf2vkIeQ2Q(Lcom/transsion/camera/app/ArCoreMainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IJ1I8QCW4nsKzDIuYPP4eePOOCk(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->lambda$onCreateTasks$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$RzInJxgVNS2yHCjv6vqEFJzyg_s(Lcom/transsion/camera/app/ArCoreMainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->lambda$onCreateTasks$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WOnvYVziUZOCkP_vDC_vkySOFVM(Lcom/transsion/camera/app/ArCoreMainActivity;Landroid/net/Uri;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ArCoreMainActivity;->lambda$loadLatestThumbnail$1(Landroid/net/Uri;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ArCoreMainActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 87
    sput-boolean v0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/app/ARPermissionActivity;-><init>()V

    .line 90
    new-instance v0, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationListenerForSystemUI:Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsResume:Z

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsComeBackFromReview:Z

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mReceiveCancelVideoCall:Z

    .line 146
    new-instance v0, Lcom/transsion/camera/utils/OrientationHelper;

    invoke-direct {v0}, Lcom/transsion/camera/utils/OrientationHelper;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    .line 226
    new-instance v0, Lcom/transsion/camera/app/ArCoreMainActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$1;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mStorageOperatorListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    .line 250
    new-instance v0, Lcom/transsion/camera/app/ArCoreMainActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$2;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    .line 618
    new-instance v0, Lcom/transsion/camera/app/ArCoreMainActivity$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$4;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    .line 701
    new-instance v0, Lcom/transsion/camera/app/ArCoreMainActivity$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$5;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGestureListener:Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    .line 745
    new-instance v0, Lcom/transsion/camera/app/ArCoreMainActivity$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$6;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mCameraError:Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 84
    sget-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ArCoreMainActivity;Ljava/lang/String;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ArCoreMainActivity;->doShowHint(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mUIHandler:Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/view/View;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ArCoreMainActivity;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->setGuideLayout(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/utils/OrientationHelper;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideCaptureLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->doHideHint()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/manager/ModuleManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/app/ArCoreMainActivity;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p1
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ArCoreMainActivity;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mReceiveCancelVideoCall:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mShutterButtonListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/view/GestureDetector;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private doEnableWaitPage(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->resetWaitPage()V

    goto :goto_0

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->removeWaitPage()V

    :goto_0
    return-void
.end method

.method private doHideHint()V
    .locals 1

    .line 694
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintRoot:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private doShowHint(Ljava/lang/String;I)V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 674
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mFaceDetectView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 676
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mFaceDetectView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private getInitGender()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "init_gender"

    .line 163
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getInitMode()I
    .locals 2

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "init_mode"

    .line 151
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "create"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    return v0
.end method

.method private getInitOrientation()I
    .locals 2

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "init_orientation"

    .line 189
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$loadLatestThumbnail$1(Landroid/net/Uri;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getLastUri()Landroid/net/Uri;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object p1, p2, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateLastUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->hideSystemUI(Landroid/app/Activity;)V

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->showSystemUI(Landroid/app/Activity;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreateTasks$2()V
    .locals 1

    const/4 v0, 0x1

    .line 343
    sput-boolean v0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsInited:Z

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    if-eqz p0, :cond_0

    .line 345
    sget-boolean v0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsInited:Z

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setIsInit(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateTasks$3(I)V
    .locals 1

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mRotateActionPanel:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 436
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method

.method private registerVideoCallReceiver()V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mVideoCallReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->isRequestEditFaceModule()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 504
    :cond_1
    new-instance v0, Lcom/transsion/camera/app/ArCoreMainActivity$VideoCallBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ArCoreMainActivity$VideoCallBroadcastReceiver;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;Lcom/transsion/camera/app/ArCoreMainActivity$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mVideoCallReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.transsion.intent.action.CALL_HANG_UP_ACTION"

    .line 506
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mVideoCallReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private removeWaitPage()V
    .locals 1

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mUIHandler:Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetWaitPage()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mUIHandler:Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mUIHandler:Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setFullScreenOnWindow()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 280
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setGuideLayout(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 763
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->ar_tip_guide_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->ar_tip_guide_recommend:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideIV:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_arcore_background_guide:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 767
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->ar_background_guide_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->ar_background_guide_recommend:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideIV:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_arcore_guide:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterVideoCallReceiver()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mVideoCallReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    .line 516
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mVideoCallReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getCutoutHeight()I
    .locals 0

    .line 582
    iget p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mCutoutHeight:I

    return p0
.end method

.method public getFrontCameraId()Ljava/lang/String;
    .locals 1

    .line 775
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-nez p0, :cond_0

    .line 777
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "1"

    return-object p0
.end method

.method public getHintCallback()Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    return-object p0
.end method

.method public getModuleOperator()Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;
    .locals 0

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    return-object p0
.end method

.method public getNavigationHeight()I
    .locals 0

    .line 577
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getNavigationHeight()I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/OrientationHelper;->getOrientation()I

    move-result p0

    return p0
.end method

.method public getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    return-object p0
.end method

.method public isExpandUI()Z
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenManagerExt;->screenExpanded(Lcom/transsion/camera/app/common/manager/IScreenManager;)Z

    move-result p0

    return p0
.end method

.method public isGuideLayoutVisible()Z
    .locals 2

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideLayout:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 614
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isInited()Z
    .locals 0

    .line 601
    sget-boolean p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsInited:Z

    return p0
.end method

.method public isRequestEditFaceModule()Z
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->getInitMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected loadLatestThumbnail()V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getLastUri()Landroid/net/Uri;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mThumbnailLoader:Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->loadLatestThumbnail(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 446
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsComeBackFromReview:Z

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onBackPressed()Z

    goto :goto_0

    .line 540
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 169
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->arcore_guide:I

    if-ne p1, v0, :cond_0

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideIV:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->setShowGuideStatus(Z)V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateAvatarPTA(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    .line 339
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "com.transsion.camera.app.ui.ScreenManager"

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/manager/IScreenManager;

    iput-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 340
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->setFullScreenOnWindow()V

    .line 342
    sget-object v1, Lcom/transsion/camera/ar/manager/ARManager$Holder;->instance:Lcom/transsion/camera/ar/manager/ARManager;

    new-instance v4, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    invoke-virtual {v1, v4}, Lcom/transsion/camera/ar/manager/ARManager;->init(Ljava/lang/Runnable;)V

    .line 349
    invoke-virtual {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->isExpandUI()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->arcore_main_layout_fold:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->arcore_main_layout:I

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->getInitOrientation()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/transsion/camera/utils/OrientationHelper;->setInitOrientation(I)V

    .line 351
    invoke-virtual {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->isExpandUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationListenerForSystemUI:Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/utils/OrientationHelper;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 354
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getCutoutHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mCutoutHeight:I

    .line 355
    invoke-static {p0, v3}, Lcom/transsion/camera/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mNavigationHeight:I

    .line 357
    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->glsurfaceview:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    iput-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    .line 358
    new-instance v5, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;

    sget v3, Lcom/transsion/camera/feature/arcore/R$id;->iv_preview_cover:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/transsion/camera/feature/arcore/R$id;->TackPictureCallBackView:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-direct {v5, v1, v3, v4}, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;-><init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;Landroid/widget/ImageView;Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)V

    .line 359
    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    iget-object v7, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGestureListener:Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    iget-object v8, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mCameraError:Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    .line 360
    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->getInitMode()I

    move-result v3

    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->getInitGender()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->setInitFaceEditModule(II)V

    .line 361
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onCreate()V

    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "enablePrintFinger"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fingerPrintValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mARPhysicalKeyManager:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    .line 366
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->rotate_action_panel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mRotateActionPanel:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 367
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;Lcom/transsion/camera/app/ArCoreMainActivity$1;)V

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 368
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->arcore_guide_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideLayout:Landroid/view/View;

    .line 369
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->arcore_capture_guide:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideCaptureLayout:Landroid/widget/FrameLayout;

    .line 370
    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->item_default:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mItemDefault:Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;

    .line 371
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->title_guide:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 372
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->content_guide:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideContent:Landroid/widget/TextView;

    .line 373
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->iv_guide:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideIV:Landroid/widget/ImageView;

    .line 374
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->arcore_guide:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mGuideView:Landroid/widget/TextView;

    .line 375
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->hint_view_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintRoot:Landroid/widget/FrameLayout;

    .line 378
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->hint_text_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintText:Landroid/widget/TextView;

    .line 379
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->face_detect_indicator:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mFaceDetectView:Landroid/widget/ImageView;

    .line 380
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->ar_activity_cover:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mArActivityCoverLayout:Landroid/view/View;

    .line 381
    iget v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mNavigationHeight:I

    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/feature/arcore/R$dimen;->horizontal_recycle_root_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintRoot:Landroid/widget/FrameLayout;

    .line 382
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/feature/arcore/R$dimen;->hint_root_margin_bottom:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 384
    new-instance v0, Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    invoke-direct {v0, p0, v4}, Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;Lcom/transsion/camera/app/ArCoreMainActivity$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mUIHandler:Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    .line 385
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 386
    new-instance v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 387
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v3, Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/setting/SettingManager;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mStorageOperatorListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setStorageVolumeListener(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;)V

    .line 389
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mThumbnailLoader:Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;

    .line 412
    invoke-virtual {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->isRequestEditFaceModule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mArActivityCoverLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mArActivityCoverLayout:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil;->startRevealAnimation(Landroid/view/View;Landroid/app/Activity;)V

    .line 418
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mItemDefault:Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;

    new-instance v1, Lcom/transsion/camera/app/ArCoreMainActivity$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$3;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 433
    invoke-virtual {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    new-instance v0, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ArCoreMainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroyTasks()V
    .locals 2

    .line 464
    sget-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onDestroy()V

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->unInit()V

    .line 467
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->unInit()V

    .line 468
    invoke-static {}, Lcom/faceunity/pta_art/constant/FUPTAClient;->releaseData()V

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->destoryResource()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 546
    sget-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getCurrentModuleId()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mARPhysicalKeyManager:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 552
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ARQuickActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 557
    sget-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getCurrentModuleId()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mARPhysicalKeyManager:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 561
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ARQuickActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPauseTasks()V
    .locals 3

    .line 522
    sget-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsResume:Z

    .line 524
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 525
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onPause()V

    .line 526
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->pause()V

    .line 527
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->doEnableWaitPage(Z)V

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->onSurfaceDestroyCallback()V

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->onPause()V

    .line 531
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModePauseTime(Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->unregisterVideoCallReceiver()V

    return-void
.end method

.method protected onRestartTasks()V
    .locals 2

    .line 474
    sget-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onRestart()V

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    return-void
.end method

.method protected onResumeTasks()V
    .locals 4

    .line 481
    sget-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsResume:Z

    .line 483
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->enhanceScreenBrightness(Landroid/app/Activity;)V

    .line 484
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 486
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->onResume()V

    .line 487
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onResume()V

    .line 488
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->resume()V

    .line 489
    iget-boolean v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsComeBackFromReview:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->loadLatestThumbnail()V

    .line 491
    iput-boolean v2, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsComeBackFromReview:Z

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 494
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->doEnableWaitPage(Z)V

    .line 495
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeResumeTime()V

    .line 498
    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->registerVideoCallReceiver()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 453
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mModuleManager:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 330
    iget-boolean v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mIsResume:Z

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->resetWaitPage()V

    :cond_0
    return-void
.end method

.method public receiveCancelVideoCall()Z
    .locals 0

    .line 268
    iget-boolean p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mReceiveCancelVideoCall:Z

    return p0
.end method

.method public registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/OrientationHelper;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    return-void
.end method

.method public setCurrentFragment(Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method

.method public setHorizontalRecycleView(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    return-void
.end method

.method public setShutterButtonListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mShutterButtonListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    .line 594
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mARPhysicalKeyManager:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    if-eqz p0, :cond_0

    .line 595
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->setShutterButtonListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;)V

    :cond_0
    return-void
.end method

.method protected showWaitPage()V
    .locals 3

    .line 304
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSleepActivitySupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.transsion.camera.app.SleepCameraActivity"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "isSecureCamera"

    .line 307
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 311
    sget-object v0, Lcom/transsion/camera/app/ArCoreMainActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SleepCameraActivity not found"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/OrientationHelper;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    return-void
.end method

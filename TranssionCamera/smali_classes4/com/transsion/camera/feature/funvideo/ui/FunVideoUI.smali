.class public Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;
.super Ljava/lang/Object;
.source "FunVideoUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;,
        Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;,
        Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;
    }
.end annotation


# static fields
.field private static final KEY_FUN_VIDEO_ITEM:Ljava/lang/String; = "key_funvideo_item"

.field private static final MSG_INIT_GRID_VIEW_UI:I = 0x68

.field private static final MSG_SET_AR_TOGGLE_VISIBLE:I = 0x67

.field private static final MSG_START_RECORDING_UI:I = 0x66

.field private static final MSG_STOP_RECORDING_UI:I = 0x65

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x64

.field private static final ONE_HOUR_TO_MINUTE:I = 0x3c

.field private static final ONE_HOUR_TO_SECOND:I = 0xe10

.field private static final ONE_MINUTE_TO_SECOND:I = 0x3c

.field private static final ONE_SECOND_TO_MS:I = 0x3e8

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VSKIT_CAMON_18_ORDER:I = 0x2

.field private static final VSKIT_TYPE_CAMON_18:I = 0x1

.field private static final VSKIT_TYPE_NORMAL:I


# instance fields
.field private mARLayout:Landroid/view/View;

.field private final mAllEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mArIcon:Landroid/widget/ImageView;

.field private final mArRoot:Landroid/widget/RelativeLayout;

.field private mArShowFlag:Z

.field private mBuildInEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDownAnimator:Landroid/animation/AnimatorSet;

.field private mFilterUIState:Z

.field private mFunARChangeListener:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;

.field private mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

.field private mFunVideoViewLayout:Landroid/view/View;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsCameraSwitching:Z

.field private volatile mIsRecording:Z

.field private mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaSpeedType:I

.field private final mModePickerArrowIconHeight:I

.field private mNeedShader:Z

.field private mParentArRoot:Landroid/view/ViewGroup;

.field private mParentRecordingRoot:Landroid/view/ViewGroup;

.field private mPause:Z

.field private mPluginEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

.field private final mProgressViewPadding:I

.field private mProgressViewRoot:Landroid/view/View;

.field private mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private mRecordingRootView:Landroid/view/View;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclerViewAnimatorHandler:Landroid/os/Handler;

.field private final mResManager:Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

.field private mScreenFormType:I

.field private mTimeCount:I

.field private mUpAnimator:Landroid/animation/AnimatorSet;

.field private mVideoDuration:I

.field private mVideoRecordingCallback:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;

.field private mVideoSpeed:D

.field private mVideoSpeedView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$7SKSeTgaED8TrnEYUAFxGSVFDdI(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$initFunVideoUI$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$C3gLdxDoV4gKztbOYCsg80SMPRQ(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$showArGrid$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$FGlWX2ruPOXI4csDMJe-nnzo-98(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$GZ9mR7uo9iLlOwS6GMhrLDovxFQ(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$setARRootVisibility$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SNTWvGUXyFEud6heLyQv1MkawUE(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$initGridViewUI$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdIE4Y1UYp6RLr5xNhniBpcwQAc(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$initGridViewUI$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mI4LLDAae81i8bmggiJxQsPPtAE(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;ZLandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$setLayoutParam$4(ZLandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunVideoUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 121
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsRecording:Z

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    .line 89
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMediaSpeedType:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 90
    iput-wide v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeed:D

    .line 91
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    .line 106
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPluginEffects:Ljava/util/List;

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mNeedShader:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsCameraSwitching:Z

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFilterUIState:Z

    .line 115
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerViewAnimatorHandler:Landroid/os/Handler;

    .line 117
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    .line 118
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    .line 119
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mScreenFormType:I

    .line 137
    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 138
    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 139
    new-instance p2, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    .line 140
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mParentRecordingRoot:Landroid/view/ViewGroup;

    .line 141
    sget p3, Lcom/transsion/camera/feature/funvideo/R$layout;->funvideo_recording_layout:I

    const/4 v2, 0x1

    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    .line 142
    sget p3, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_root_group:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/funvideo/R$id;->recording_time_group:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 145
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 p3, 0x31

    .line 147
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mParentRecordingRoot:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_recordingtime_margin_top:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 149
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/funvideo/R$id;->fun_video_recording_time:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 153
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/funvideo/R$id;->fun_video_speed:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeedView:Landroid/widget/TextView;

    .line 154
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_recording_progress:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    .line 155
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_rotate_framelayout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 156
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_recording_progress_root:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_progress_panel_bottom_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewPadding:I

    .line 159
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getBelowMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mParentArRoot:Landroid/view/ViewGroup;

    .line 160
    sget p3, Lcom/transsion/camera/feature/funvideo/R$layout;->funvideo_ar_layout:I

    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mARLayout:Landroid/view/View;

    .line 161
    sget p2, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_ar_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mARLayout:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_ar_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    const p2, 0x3f4ccccd    # 0.8f

    .line 163
    invoke-static {p1, p2, v1}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    const/4 p2, 0x4

    .line 164
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mARLayout:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_ar_recycler_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mARLayout:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/funvideo/R$dimen;->mode_picker_arrow_icon_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mModePickerArrowIconHeight:I

    .line 167
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mContext:Landroid/content/Context;

    .line 168
    new-instance p2, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mResManager:Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/funvideo/R$bool;->is_need_shader:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mNeedShader:Z

    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->initAnimator()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 58
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/widget/ImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->initGridViewUI()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateCurrentIndex()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMediaSpeedType:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateVideoSpeedView(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoDuration:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeed:D

    return-wide v0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    return-object p0
.end method

.method private composeList()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "Cancel"

    .line 234
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItemBuilder;->generateCustomEffectItem(Ljava/lang/String;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    move-result-object v0

    .line 235
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mLowLight:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_cancel_black:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_cancel:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setIconRes(I)V

    .line 236
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPluginEffects:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPluginEffects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v0, "Vskit"

    .line 241
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItemBuilder;->generateCustomEffectItem(Ljava/lang/String;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    move-result-object v0

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/feature/funvideo/R$integer;->vskit_type:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 244
    sget p0, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_vskit_camon18:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setIconRes(I)V

    const-string p0, "vskit://com.yomobigroup/notify?type=web_page&pageId=1000&clickid=camera_camon18"

    .line 245
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setJumpIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 250
    :cond_2
    sget p0, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_vskit:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setIconRes(I)V

    .line 251
    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setJumpIntent(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private filterAndSort(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 706
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/feature/funvideo/R$integer;->brand_type:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/funvideo/R$array;->infinix_res:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 715
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/funvideo/R$array;->tecno_res:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 712
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/funvideo/R$array;->tecno_camon_res:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 721
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 722
    array-length p1, v1

    :goto_1
    if-ge v0, p1, :cond_5

    aget-object v2, v1, v0

    .line 723
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    .line 724
    invoke-virtual {v4}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 725
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-object p0

    :cond_6
    return-object p2
.end method

.method private getVideoSpeed(I)D
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    return-wide p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-wide/high16 p0, 0x4008000000000000L    # 3.0

    return-wide p0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    return-wide p0

    :cond_2
    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    const-wide p0, 0x3fd554c985f06f69L    # 0.3333

    return-wide p0

    :cond_3
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method private initAnimator()V
    .locals 10

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 178
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 179
    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v8, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {v2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v8, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_2
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initGridViewUI()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->loadBuildInEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    .line 260
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->composeList()V

    .line 262
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    .line 263
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;)V

    return-void
.end method

.method private synthetic lambda$initFunVideoUI$3()V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoRecordingCallback:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;

    if-eqz p0, :cond_0

    .line 358
    invoke-interface {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;->onProgressEnd()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initGridViewUI$0(Landroid/view/View;)V
    .locals 2

    .line 266
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArIcon.setOnClickListener(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsCameraSwitching:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 271
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->showArGrid(ZZ)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$initGridViewUI$1(Landroid/view/View;I)V
    .locals 2

    .line 278
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    if-eqz v0, :cond_0

    .line 279
    sget-object p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mode paused, mGridView is not clickable."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getJumpIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getJumpIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->launchVskitApp(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x98

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 291
    :cond_2
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setSelect(I)V

    return-void
.end method

.method private synthetic lambda$setARRootVisibility$5(I)V
    .locals 3

    .line 691
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setARRootVisibility(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 693
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setLayoutParam$4(ZLandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 467
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    const-string p1, "height"

    .line 471
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const-string p1, "bottomMargin"

    .line 472
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$showArGrid$2()V
    .locals 1

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private loadBuildInEffects(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mResManager:Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->getBuildInEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->filterAndSort(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 223
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadBuildInEffects size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private loadPluginEffects(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mResManager:Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->getPluginEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private releaseResource()V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 401
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 402
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;

    .line 405
    invoke-virtual {v2}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->getIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmap(Landroid/widget/ImageView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .locals 4

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 580
    iget-boolean v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mLowLight:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeedView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 583
    iget-boolean v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mLowLight:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    if-eqz v0, :cond_4

    .line 586
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mLowLight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->updateLowLight(Z)V

    .line 589
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateArIcon()V

    .line 592
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateCancel()V

    return-void
.end method

.method private setSelect(I)V
    .locals 6

    .line 668
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    if-nez v0, :cond_0

    .line 670
    sget-object p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setSelect getItem null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunARChangeListener:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;

    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getEffect()Lcom/faceunity/entity/Effect;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;->onARItemChange(Lcom/faceunity/entity/Effect;)V

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "key_funvideo_item"

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 677
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->setSelect(I)V

    .line 678
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->hasMusic()Z

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->selectFunItem(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 679
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateArIcon()V

    return-void
.end method

.method private showTime(I)V
    .locals 5

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 612
    rem-int/lit8 v0, p1, 0x3c

    .line 613
    div-int/lit8 p1, p1, 0x3c

    mul-int/lit8 v1, p1, 0x3c

    .line 615
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateArIcon()V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->getCurSelect()I

    move-result v0

    if-nez v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mLowLight:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_off_black:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_off:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->getCurSelect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_on:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateCancel()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    .line 747
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mLowLight:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_cancel_black:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_cancel:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setIconRes(I)V

    .line 748
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    if-eqz p0, :cond_1

    .line 749
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private updateCurrentIndex()V
    .locals 4

    .line 655
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_funvideo_item"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 657
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 658
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    if-eqz v3, :cond_0

    .line 659
    invoke-virtual {v3}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setSelect(I)V

    return-void
.end method

.method private updateRecordingTime()V
    .locals 6

    .line 596
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 599
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoDuration:I

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 603
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->showTime(I)V

    .line 604
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const-wide v2, 0x408f400000000000L    # 1000.0

    iget-wide v4, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeed:D

    mul-double/2addr v4, v2

    double-to-long v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateVideoSpeedView(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "2x"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "3x"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "0.5x"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "0.3x"

    goto :goto_0

    :cond_3
    const-string p1, "1x"

    .line 632
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeedView:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    .line 633
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public checkShutterPanel()V
    .locals 2

    .line 759
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFilterUIState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    if-nez v0, :cond_0

    .line 760
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    :cond_0
    return-void
.end method

.method public getArIcon()Landroid/view/View;
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getArShowFlag()Z
    .locals 0

    .line 350
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    return p0
.end method

.method public hideArGrid(ZZ)V
    .locals 2

    .line 337
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideArGrid(): mArShowFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 338
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    if-nez p1, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1, p2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideMoreModeGuideRightView(Z)V

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerViewAnimatorHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 344
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x39

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 346
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    return-void
.end method

.method public hideArIcon()V
    .locals 1

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 317
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideModeUI()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 304
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    :cond_0
    return-void
.end method

.method public initFunVideoUI(I)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 355
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 356
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    new-instance v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->setProgressCallBack(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;)V

    :cond_0
    const/4 p1, 0x0

    .line 363
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    return-void
.end method

.method public initGridViewRes()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->loadBuildInEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->loadPluginEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPluginEffects:Ljava/util/List;

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->composeList()V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onHideRecordingUI()V
    .locals 2

    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsRecording:Z

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 418
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 421
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_2

    const/16 v0, 0xb4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 423
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 412
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setLayoutParam(Z)V

    return-void
.end method

.method public onShowRecordingUI(II)V
    .locals 1

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsRecording:Z

    .line 506
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoDuration:I

    .line 507
    iput p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMediaSpeedType:I

    .line 508
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->getVideoSpeed(I)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeed:D

    const/4 p1, 0x0

    .line 509
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onShutterDown()V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mNeedShader:Z

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public onShutterUp()V
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mNeedShader:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 204
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public pauseFunVideoUI()V
    .locals 2

    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsRecording:Z

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->cancelAnimator()V

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    return-void
.end method

.method public resetToDefault()V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->getCurSelect()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 701
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setSelect(I)V

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeFunVideoUI()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->resetAnimator()V

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    const/4 v1, 0x1

    .line 378
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    .line 379
    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFilterUIState:Z

    if-nez v2, :cond_0

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_0
    return-void
.end method

.method public setARRootVisibility(I)V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCameraSwitching(Z)V
    .locals 0

    .line 769
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsCameraSwitching:Z

    return-void
.end method

.method public setFilterUIState(Z)V
    .locals 0

    .line 755
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFilterUIState:Z

    return-void
.end method

.method public setLayoutParam(Z)V
    .locals 12

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v0

    .line 433
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v1

    .line 434
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    .line 435
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    if-lez v2, :cond_6

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    .line 440
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 442
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 444
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 447
    iget v6, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mScreenFormType:I

    const/4 v7, 0x3

    if-nez v6, :cond_0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    if-ne v6, v7, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    move v1, v5

    .line 455
    :goto_0
    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v6

    const/4 v8, 0x1

    if-ltz v6, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v4

    .line 457
    :goto_1
    iget-object v10, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    new-array v10, p1, [I

    if-eqz v9, :cond_3

    .line 458
    iget-object v11, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    goto :goto_2

    .line 459
    :cond_3
    iget-object v11, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    :goto_2
    aput v11, v10, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aput v6, v10, v8

    const-string v6, "padding"

    .line 458
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v10, p1, [I

    aput v3, v10, v4

    aput v2, v10, v8

    const-string v2, "height"

    .line 460
    invoke-static {v2, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, p1, [I

    aput v5, v3, v4

    aput v1, v3, v8

    const-string v1, "bottomMargin"

    .line 461
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v4

    aput-object v1, v3, v8

    aput-object v6, v3, p1

    .line 462
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 463
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 464
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v9, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;ZLandroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 475
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_4
    if-eqz v9, :cond_5

    .line 478
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p1, v4, v4, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 480
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p1, v4, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 482
    :goto_3
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 483
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 484
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x9

    mul-int/lit8 p1, p1, 0x10

    sub-int/2addr v0, p1

    .line 490
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 491
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mModePickerArrowIconHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 492
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 495
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    .line 496
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_ar_diff:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    .line 497
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_interactive_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 498
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4, v4, v4, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 500
    sget-object p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setLayoutParam] , arLayoutParams.height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setOnArChangeListener(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunARChangeListener:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;

    return-void
.end method

.method public setVideoRecordingCallback(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoRecordingCallback:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;

    return-void
.end method

.method public showArGrid(ZZ)V
    .locals 2

    .line 322
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showArGrid(): mArShowFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    if-eqz p1, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x38

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideMoreModeGuideRightView(Z)V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerViewAnimatorHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerViewAnimatorHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    return-void
.end method

.method public showArIcon()V
    .locals 1

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showArToggle()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    .line 684
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public showModeUI()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 297
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    invoke-interface {p0, v1, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    :cond_0
    return-void
.end method

.method public unInitFunVideoUI()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mParentRecordingRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 386
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mParentArRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 394
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFunVideo()V

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->releaseResource()V

    return-void
.end method

.method public updateLowLight(Z)V
    .locals 1

    .line 574
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mLowLight:Z

    .line 575
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

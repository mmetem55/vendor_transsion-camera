.class public abstract Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IPreviewUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field AuxFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field AuxFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field ExpandFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field ExpandFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAbsolutePreviewRect:Landroid/graphics/Rect;

.field private final mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

.field private mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAuxExpandView:Landroid/view/View;

.field private mAuxFadeInAnimator:Landroid/view/animation/Animation;

.field private mAuxFadeOutAnimator:Landroid/view/animation/Animation;

.field private mAuxPreviewHeight:I

.field private mAuxPreviewMarginLeft:I

.field private mAuxPreviewMarginTop:I

.field private mAuxPreviewSatSupport:Z

.field private mAuxPreviewView:Landroid/view/View;

.field private mAuxPreviewWidth:I

.field private mAuxShowZoomValue:I

.field private mAuxSurfaceModeSupport:Z

.field private mAuxSurfaceShow:Z

.field private mBaseZoomRatio:I

.field private mCurrentCameraZoomRatio:I

.field private mExpandFadeInAnimator:Landroid/view/animation/Animation;

.field private mExpandFadeOutAnimator:Landroid/view/animation/Animation;

.field private mExpandViewShow:Z

.field private mIsFrontCamera:Z

.field private mIsLongFocusCamera:Z

.field private mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mNeedShowCover:Z

.field private mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPreviewAspectRatio:D

.field private mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

.field private mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private final mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

.field private mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

.field private mPreviewView:Landroid/view/View;

.field private mRelativePreviewRect:Landroid/graphics/Rect;

.field private mResources:Landroid/content/res/Resources;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScreenFormType:I

.field private mScreenHeight:I

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenWidth:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mTargetHeight:I

.field private mTargetWidth:I

.field private final mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

.field private mZoomValue:I


# direct methods
.method public static synthetic $r8$lambda$0bFBtKJl7-B2vLJCcnthyhOK5Vs(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$setAuxPreviewModeSupport$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$322btbG6jkSyCAqkJx55ow9drQc(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ntn1SqETqSqP0PGJIZBWjOBdSH4(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YLd8TnqvnaTZwxCbpyWLLtoUNf0(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$setAuxPreviewLensSupport$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZyNRSy3thKG2TSfpWA7NF2nlOHc(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tOEnFoviniSobuz8li6q7lXJLd8(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uqUf-tUxSIume0WOLn6zt2uQrI4(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewHoverAnimator$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3Vslgb1fGiMfw17IYa6shCam1A(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$runUpdatePreviewAnimator$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 62
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractPreviewUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 133
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V
    .locals 3

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 103
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    const/16 v1, 0x140

    .line 105
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    const/16 v1, 0xf0

    .line 106
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    .line 107
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    .line 108
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    const/4 v1, 0x1

    .line 109
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    .line 110
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:I

    const/16 v2, 0x7d0

    .line 111
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    .line 116
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    .line 117
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsFrontCamera:Z

    .line 123
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 124
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    .line 125
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    .line 126
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    .line 127
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    .line 128
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 129
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    .line 130
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    .line 135
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    .line 139
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    .line 1009
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1028
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1048
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1065
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1179
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 146
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mResources:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    .line 149
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    :cond_0
    const/4 v0, 0x5

    .line 151
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 152
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewBackground;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/transsion/camera/app/ui/PreviewBackground;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    .line 153
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/transsion/camera/app/ui/PreviewStyle;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle;->setModeTypeListener(Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle;->setPreviewStyleListener(Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;)V

    .line 157
    :cond_1
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    .line 158
    new-instance p3, Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p3, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    .line 159
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    .line 160
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 161
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getExpandView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxPreviewSurface()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxSurfaceShow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getExpandViewShow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doSetPreviewSize(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxPreviewModeSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeOutAuxPreview()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeOutExpandPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeInExpandPreview()V

    return-void
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeInAuxPreview()V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doSetAuxPreviewSize(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateLocateViewSize()V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setExpandViewShow(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doSetBackgroundPreviewSize(II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateShowZoomValue()V

    return-void
.end method

.method static synthetic access$2902(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreviewByZoom()V

    return-void
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/anim/AnimationManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPreviewRectChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/preview/IPreviewController;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    return-object p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 61
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->handleUpdatePreviewEnd(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    return p0
.end method

.method private doSetAuxPreviewSize(II)V
    .locals 3

    .line 597
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetAuxPreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "doSetAuxPreviewSize auxPreview visible"

    .line 601
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 603
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    .line 604
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    .line 605
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreviewLayout()V

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setAuxPreviewSize(II)V

    .line 607
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateLocateViewSize()V

    return-void
.end method

.method private doSetBackgroundPreviewSize(II)V
    .locals 3

    .line 686
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetBackgroundPreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 687
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    if-eqz p0, :cond_0

    .line 688
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewBackground;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method private doSetPreviewSize(II)V
    .locals 6

    .line 657
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetPreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 659
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 660
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    .line 661
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->needRectChangedAnimation(Z)V

    .line 662
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doUpdatePreviewLayoutForRatio()V

    :cond_0
    const/4 v2, 0x5

    .line 665
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 666
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    .line 669
    :cond_1
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    if-eqz v2, :cond_2

    .line 670
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->showCover()V

    goto :goto_0

    .line 672
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->hidePreviewCover()V

    .line 675
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setPreviewSize(II)V

    .line 676
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance v4, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V

    const-wide/16 p0, 0x32

    invoke-virtual {v2, v4, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 682
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p2, v5

    const-string v0, "%.3f"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setPictureRatioValue(Ljava/lang/String;)V

    return-void
.end method

.method private doUpdatePreviewLayout(IZZD)V
    .locals 24

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-wide/from16 v0, p4

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 737
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doUpdatePreviewLayout previewRatio == -1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 741
    :cond_0
    iget v2, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 743
    iget-object v2, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    iget v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    sub-int/2addr v2, v3

    :cond_1
    move v11, v2

    .line 745
    iget v12, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 746
    iget v13, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    .line 747
    iget v14, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    .line 748
    iget v5, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    .line 749
    iget v2, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    sub-int v15, v2, v13

    const-wide/16 v3, 0x0

    cmpl-double v3, v0, v3

    if-eqz v3, :cond_2

    .line 752
    iget-wide v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-static {v0, v1, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v3

    if-nez v3, :cond_2

    .line 753
    iput-wide v0, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    .line 756
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewMarginInfo()V

    .line 757
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpdatePreviewLayout targetWidth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",targetHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",left:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",top:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",right:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",bottom:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mPreviewAspectRatio:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 764
    iget v0, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    const/4 v1, 0x2

    if-ne v9, v1, :cond_3

    .line 766
    iget-object v0, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v0

    .line 767
    iget v1, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    sub-int/2addr v2, v1

    :cond_3
    move/from16 v18, v0

    move/from16 v16, v2

    const/4 v0, 0x0

    if-eq v9, v10, :cond_4

    if-nez v9, :cond_5

    .line 772
    :cond_4
    iget-object v1, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 773
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 774
    iget v2, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 775
    iget v2, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 776
    iget-object v2, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    iget-object v1, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v1, :cond_5

    .line 779
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetRootParentLayout()V

    :cond_5
    if-eqz p3, :cond_8

    .line 784
    iget-object v1, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 785
    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 787
    invoke-virtual {v8, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->needRectChangedAnimation(Z)V

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move/from16 v6, v18

    move/from16 v7, p1

    .line 788
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->runUpdatePreviewHoverAnimator(IIIIIII)V

    goto :goto_0

    .line 791
    :cond_6
    invoke-virtual {v8, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->needRectChangedAnimation(Z)V

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move/from16 v6, v18

    move/from16 v7, p1

    .line 792
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->runUpdatePreviewAnimator(IIIIIII)V

    if-eqz p2, :cond_9

    .line 794
    iget-object v0, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_9

    if-ne v9, v10, :cond_7

    .line 796
    iget v1, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    sub-int v15, v1, v13

    .line 797
    iget v2, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    sub-int v16, v1, v2

    :cond_7
    move/from16 v20, v16

    .line 799
    iget-object v1, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 800
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    sub-int/2addr v1, v14

    .line 799
    invoke-virtual {v0, v11, v12, v15, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetTargetRect(IIII)V

    .line 801
    iget-object v0, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget v1, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v2, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget v3, v8, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    sub-int v21, v2, v3

    const-wide/16 v22, 0x226

    move-object/from16 v17, v0

    move/from16 v19, v1

    invoke-virtual/range {v17 .. v23}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->runCoverAnimator(IIIIJ)V

    goto :goto_0

    .line 806
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->handleUpdatePreviewEnd(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method private doUpdatePreviewLayoutForRatio()V
    .locals 9

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 713
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getPreviewMarginInfo()V

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 716
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 717
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 718
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    if-eqz v0, :cond_0

    .line 721
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->setPreviewSize(II)V

    .line 724
    :cond_0
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v7, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    iget v8, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreViewCoverLayout(IIIII)V

    .line 725
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdatePreviewLayoutForRatio targetWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",targetHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",topOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 726
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bottomOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 727
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mPreviewAspectRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 725
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private fadeInAuxPreview()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeInAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private fadeInExpandPreview()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeInAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private fadeOutAuxPreview()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeOutAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private fadeOutExpandPreview()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeOutAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getAuxPreviewModeSupport()Z
    .locals 0

    .line 1006
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    return p0
.end method

.method private getAuxPreviewSurface()Landroid/view/View;
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    return-object p0
.end method

.method private getAuxSurfaceShow()Z
    .locals 0

    .line 1002
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    return p0
.end method

.method private getCameraPreviewType(Landroid/content/res/Resources;)I
    .locals 0

    const p0, 0x7f0a0027

    .line 693
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private getExpandView()Landroid/view/View;
    .locals 0

    .line 990
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    return-object p0
.end method

.method private getExpandViewShow()Z
    .locals 0

    .line 994
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    return p0
.end method

.method private getPreviewMarginInfo()V
    .locals 11

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    .line 834
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-ne v3, v0, :cond_0

    .line 835
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    int-to-double v3, v0

    .line 836
    iget-wide v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    div-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    .line 838
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 839
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    sub-int/2addr v1, v0

    div-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    goto/16 :goto_2

    .line 841
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    int-to-double v3, v0

    .line 842
    iget-wide v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    mul-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 843
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 844
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    .line 845
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    .line 846
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    if-ge v4, v0, :cond_1

    .line 847
    iput v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    int-to-double v4, v4

    .line 848
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    if-le v4, v0, :cond_2

    .line 850
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    int-to-double v4, v0

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 851
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    goto :goto_0

    .line 854
    :cond_1
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    int-to-double v4, v0

    .line 855
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    div-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    .line 859
    :cond_2
    :goto_0
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 860
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v7

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 861
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v8

    iget v9, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 859
    invoke-static/range {v4 .. v9}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 862
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    .line 863
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    .line 864
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    const/4 v4, 0x3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-ne v0, v4, :cond_4

    .line 865
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    div-int/2addr v0, v2

    int-to-double v7, v0

    mul-double/2addr v7, v5

    .line 866
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    int-to-double v5, v4

    div-double/2addr v7, v5

    .line 867
    iget-wide v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    cmpl-double v7, v5, v7

    if-lez v7, :cond_3

    .line 868
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    int-to-double v7, v0

    div-double/2addr v7, v5

    double-to-int v0, v7

    .line 869
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    .line 870
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    sub-int/2addr v4, v0

    .line 871
    div-int/2addr v4, v2

    iput v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    goto :goto_1

    .line 873
    :cond_3
    iput v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    int-to-double v7, v4

    mul-double/2addr v7, v5

    double-to-int v4, v7

    .line 874
    iput v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 875
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    sub-int/2addr v0, v4

    .line 876
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_7

    .line 879
    iget-wide v7, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v9, 0x3ff25d4c3b2a1908L    # 1.1477777777777778

    invoke-static {v7, v8, v9, v10}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 880
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    goto :goto_1

    .line 881
    :cond_5
    iget-wide v7, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-static {v7, v8, v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 882
    invoke-static {v4, v5, v6, v7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 883
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0700fe

    .line 884
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 888
    :cond_7
    :goto_1
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int v5, v0, v4

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    .line 889
    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    if-ne v5, v3, :cond_8

    .line 890
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 891
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    sub-int v6, v3, v5

    div-int/2addr v6, v2

    iput v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    sub-int/2addr v3, v5

    .line 892
    div-int/2addr v3, v2

    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    .line 893
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    if-ge v4, v0, :cond_8

    sub-int v1, v0, v4

    .line 895
    div-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    sub-int/2addr v0, v4

    .line 896
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    :cond_8
    :goto_2
    return-void
.end method

.method private handleUpdatePreviewEnd(I)V
    .locals 7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 812
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 814
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenWidth:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 815
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 819
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 820
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 821
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreViewCoverLayout(IIIII)V

    .line 825
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_1

    .line 826
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetRootParentLayout()V

    :cond_1
    return-void
.end method

.method private hidePreviewCover()V
    .locals 2

    .line 589
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideCover"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 592
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initAuxViews()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getAuxPreviewView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getAuxExpandView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getLocateAuxView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/view/AuxLocateView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeInAnimator:Landroid/view/animation/Animation;

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeOutAnimator:Landroid/view/animation/Animation;

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01002c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeInAnimator:Landroid/view/animation/Animation;

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01002d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeOutAnimator:Landroid/view/animation/Animation;

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeInAnimator:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeOutAnimator:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeInAnimator:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeOutAnimator:Landroid/view/animation/Animation;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 913
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 917
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 921
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewAnimator$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 930
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$runUpdatePreviewHoverAnimator$7(Landroid/animation/ValueAnimator;)V
    .locals 7

    const-string v0, "leftMargin"

    .line 968
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "topMargin"

    .line 969
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v0, "rightMargin"

    .line 970
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v0, "bottomMargin"

    .line 971
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v0, "width"

    .line 972
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 973
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 974
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 975
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 976
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, p0

    .line 978
    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreViewCoverLayout(IIIII)V

    return-void
.end method

.method private synthetic lambda$setAuxPreviewLensSupport$0()V
    .locals 1

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$setAuxPreviewModeSupport$1()V
    .locals 1

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private notifyPreviewRectChanged()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 698
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPreviewRectChanged(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyPreviewRectChanged(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method private setExpandViewShow(Z)V
    .locals 0

    .line 998
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    return-void
.end method

.method private setPreViewCoverLayout(IIIII)V
    .locals 1

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 581
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 582
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 583
    iput p5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 584
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private showCover()V
    .locals 8

    .line 570
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showCover"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 571
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginLeft:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    iget v7, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreViewCoverLayout(IIIII)V

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 574
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateAuxPreview()V
    .locals 2

    .line 1175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateAuxPreviewByZoom()V
    .locals 3

    .line 1202
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    if-lt v0, v1, :cond_2

    .line 1203
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-nez v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1205
    sget-object v2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V

    .line 1207
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 1208
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreview()V

    goto :goto_0

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_4

    .line 1215
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-eqz v0, :cond_4

    .line 1216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1217
    sget-object v2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V

    .line 1219
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 1220
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreview()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateAuxPreviewLayout()V
    .locals 5

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 612
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 613
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 615
    :cond_0
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 617
    :goto_0
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 618
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 619
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 620
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 624
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    if-nez v1, :cond_2

    .line 625
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 627
    :cond_2
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 629
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 630
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private updateLocateViewSize()V
    .locals 6

    .line 635
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    if-eqz v0, :cond_3

    .line 637
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 638
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:I

    mul-int/2addr v1, v3

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 640
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 643
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 644
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 645
    sget-object v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateLocateViewSize] mAuxPreviewSatSupport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " auxZoomRatio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mZoomValue:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " showZoomValue:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/transsion/camera/app/ui/view/AuxLocateView;->setAuxLocateViewSize(IIFF)V

    goto :goto_2

    .line 651
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateLocateViewSize] visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, "mAuxPreviewView is null"

    :goto_1
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateShowZoomValue()V
    .locals 3

    .line 324
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 325
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:I

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    .line 327
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    .line 329
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateShowZoomValue] mAuxPreviewSatSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsLongFocusCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAuxShowZoomValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cameraOperateAction(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->cameraOperateAction(I)V

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    if-eqz p0, :cond_2

    .line 231
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground;->cameraOperateAction(I)V

    :cond_2
    return-void
.end method

.method public currentDisplayStyle()I
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    if-eqz p0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->currentStyle()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewBackground;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewLayoutRatio()D
    .locals 2

    .line 430
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    return-wide v0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public hideCustomPreviewCover()V
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hideCustomPreviewCover()V

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    .line 244
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getCameraPreviewType(Landroid/content/res/Resources;)I

    move-result v1

    const v2, 0x7f0700ae

    .line 246
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    const v2, 0x7f0700af

    .line 247
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    const v2, 0x7f0a0021

    .line 248
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    const v2, 0x7f0a0022

    .line 249
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 258
    new-instance v0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    goto :goto_0

    .line 252
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    goto :goto_0

    .line 255
    :cond_1
    new-instance v0, Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0, p3}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setProjectAuxSupport(Z)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;

    move-result-object v0

    .line 263
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x5

    .line 266
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 267
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->setPreviewView(Landroid/view/View;)V

    .line 268
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/PreviewBackground;->updatePreviewContent(Landroid/view/View;)V

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/ui/PreviewBackground;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->hidePreviewCover()V

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p3, :cond_3

    .line 276
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->initAuxViews()V

    .line 279
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p1, :cond_4

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setPreviewController(Lcom/transsion/camera/app/ui/preview/IPreviewController;)V

    :cond_4
    return-object v0
.end method

.method public needBuildBlurCoverView(Z)V
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_0

    .line 508
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->needBuildBlurCoverView(Z)V

    :cond_0
    return-void
.end method

.method public needRectChangedAnimation(Z)V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->needRectChangedAnimation(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    check-cast p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->releaseResource()V

    return-void
.end method

.method public onDoubleTap()Z
    .locals 3

    .line 530
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTap, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 534
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    if-eqz p0, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->changeStyle()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 524
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->hidePreviewCover()V

    const/4 v0, 0x0

    .line 525
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onPause()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PreviewBackground;->onPause()V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 204
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[onPause] mAuxPreviewView gone"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    .line 210
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onResume()V

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    if-eqz p0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewBackground;->onResume()V

    :cond_1
    return-void
.end method

.method public onScreenFormChanged(I)V
    .locals 3

    .line 414
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFormChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_0

    .line 417
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->onScreenFormChanged(I)V

    :cond_0
    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 461
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->onSwitchMode(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x5

    .line 465
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 466
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewStyle:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle;->switchMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPreviewRectChanged(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_0
    return-void
.end method

.method public resetRootParentLayout()V
    .locals 5

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 556
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 557
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 558
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 559
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 560
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 561
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_3

    .line 565
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetRootParentLayout()V

    :cond_3
    return-void
.end method

.method public runUpdatePreviewAnimator(IIIIIII)V
    .locals 6

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 908
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 910
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "runUpdatePreviewAnimator in"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p6, v2, p1

    .line 911
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p6

    .line 912
    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p6, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [I

    aput p2, v2, v3

    .line 915
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    aput p2, v2, p1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 916
    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [I

    aput p3, v2, v3

    .line 919
    iget p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    aput p3, v2, p1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 920
    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [I

    aput p4, v2, v3

    .line 923
    iget p4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    aput p4, v2, p1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 924
    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p4, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [I

    aput p5, v2, v3

    .line 927
    iget p5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    aput p5, v2, p1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p5

    .line 928
    new-instance v2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p5, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 932
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x1f4

    .line 933
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 934
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 935
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p6, v4, v3

    aput-object p2, v4, p1

    aput-object p3, v4, v1

    const/4 p1, 0x3

    aput-object p4, v4, p1

    const/4 p1, 0x4

    aput-object p5, v4, p1

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 936
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;

    invoke-direct {p2, p0, p7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 951
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 952
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "runUpdatePreviewAnimator out isRunning:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public runUpdatePreviewHoverAnimator(IIIIIII)V
    .locals 3

    .line 957
    iget-object p7, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p7}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    const/4 p7, 0x0

    .line 958
    iput-object p7, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    .line 959
    sget-object p7, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runUpdatePreviewHoverAnimator in, left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTargetWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p7, 0x2

    new-array v0, p7, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p6, v0, p1

    const-string p6, "leftMargin"

    .line 961
    invoke-static {p6, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p6

    new-array v0, p7, [I

    aput p2, v0, v1

    .line 962
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    aput p2, v0, p1

    const-string p2, "topMargin"

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v0, p7, [I

    aput p3, v0, v1

    .line 963
    iget p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginRight:I

    aput p3, v0, p1

    const-string p3, "rightMargin"

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-array v0, p7, [I

    aput p4, v0, v1

    .line 964
    iget p4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    aput p4, v0, p1

    const-string p4, "bottomMargin"

    invoke-static {p4, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    new-array v0, p7, [I

    aput p5, v0, v1

    .line 965
    iget p5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetWidth:I

    aput p5, v0, p1

    const-string p5, "width"

    invoke-static {p5, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p6, v0, v1

    aput-object p2, v0, p1

    aput-object p3, v0, p7

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    .line 966
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    .line 967
    new-instance p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 980
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 981
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 982
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewUIRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setAuxPreviewLensSupport(ZLjava/lang/String;)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    .line 449
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    .line 450
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateShowZoomValue()V

    .line 451
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreviewByZoom()V

    .line 452
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAuxPreviewModeSupport(ZLjava/lang/String;)V
    .locals 0

    .line 479
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    .line 480
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsLongFocusCamera:Z

    .line 481
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateShowZoomValue()V

    .line 482
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreviewByZoom()V

    .line 483
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAuxPreviewSize(II)V
    .locals 3

    .line 440
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAuxPreviewSize through message width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setBackgroundPreviewModeSupport(Z)V
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    if-eqz p0, :cond_0

    .line 501
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground;->setCurrentModeSupport(Z)V

    :cond_0
    return-void
.end method

.method public setBackgroundPreviewSize(II)V
    .locals 3

    .line 492
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundPreviewSize through message width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3

    .line 406
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize through message width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 351
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewBackground:Lcom/transsion/camera/app/ui/PreviewBackground;

    if-eqz p0, :cond_0

    .line 380
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    :cond_0
    return-void
.end method

.method public setupViews()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_camera_zoom"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->unInit()V

    :cond_1
    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    .line 549
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mIsFrontCamera:Z

    return-void
.end method

.method public updatePreviewLayout(ZZD)V
    .locals 8

    .line 423
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewLayout, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showCover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "+animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", previewRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mScreenFormType:I

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doUpdatePreviewLayout(IZZD)V

    return-void
.end method

.method public updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_0

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setCameraId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

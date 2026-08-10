.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.super Ljava/lang/Object;
.source "DualVideoPreviewProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final AUX_ANIMATION_TIME:I = 0x190

.field private static final AUX_VIEW_TIMEOUT:I = 0xbb8

.field private static final DUAL_PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x10

.field private static final EGL_RES_TAG_DRAW_AUX_VIEW:I = 0x69

.field private static final EGL_RES_TAG_RECORDER_FLAG:I = 0x68

.field private static final EGL_RES_TAG_SPLIT_STYLE_PIP:I = 0x66

.field private static final EGL_RES_TAG_SPLIT_STYLE_UP_DOWN:I = 0x65

.field private static final EGL_RES_TAG_TAKE_PICTURE:I = 0x67

.field private static final EGL_RES_TAG_UPDATE_SURFACE_SIZE:I = 0x64

.field private static final JOIN_THREAD_TIMEOUT:I = 0xc8

.field private static final MSG_FORCE_REFRESH:I = 0x3ea

.field private static final MSG_SET_AUX_VIEW:I = 0x3e8

.field private static final MSG_SWITCH_SCREEN:I = 0x3e9

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final REFRESH_SCREEN_TIME:I = 0x10

.field public static final SPLIT_STYLE_VALUE_DOWN:I = 0x2

.field public static final SPLIT_STYLE_VALUE_FULL:I = 0x3

.field public static final SPLIT_STYLE_VALUE_SMALL:I = 0x4

.field public static final SPLIT_STYLE_VALUE_UP:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mBitmapBuffer:[I

.field private mBitmapSource:[I

.field private mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDividerAnimatorSet:Landroid/animation/AnimatorSet;

.field private volatile mDividerDisplayY:F

.field private mDividerDownEdgeOffset:I

.field private mDividerDragHandleInitHeight:I

.field private mDividerDragHandleInitWidth:I

.field private mDividerDragHandleMaxHeight:I

.field private mDividerDragHandleMaxWidth:I

.field private mDividerDragHandleRealHeight:I

.field private mDividerDragHandleRealWidth:I

.field private mDividerLineInitHeight:I

.field private mDividerLineMaxHeight:I

.field private mDividerLineRealHeight:I

.field private mDividerUpEdgeOffset:I

.field private mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mDrawAuxView:Z

.field private mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDualPreviewCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

.field private mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mDualVideoMsgCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;

.field private mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

.field private mDualVideoRender:Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

.field private final mForceRender:Ljava/lang/Runnable;

.field private mFrameCount:J

.field private mHandler:Landroid/os/Handler;

.field private mIntBuffer:Ljava/nio/IntBuffer;

.field private mLastPost:J

.field private mLineColor:I

.field private mMainAnimatorSet:Landroid/animation/AnimatorSet;

.field private volatile mMainSplitValue:I

.field private mMainTargetHeight:I

.field private mMainTargetWidth:I

.field private mMainTargetX:I

.field private mMainTargetY:I

.field private mMainTouchArea:Landroid/graphics/Rect;

.field private volatile mMainViewPortHeight:I

.field private volatile mMainViewPortWidth:I

.field private volatile mMainViewPortX:I

.field private volatile mMainViewPortY:I

.field private mOesTextureId:I

.field private mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

.field private mPictureCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;

.field private volatile mPipDisplayHeight:F

.field private volatile mPipDisplayWidth:F

.field private volatile mPipDisplayX:F

.field private volatile mPipDisplayY:F

.field private mPipFrameStrokeWidth:I

.field private mPipInitEdgeOffset:I

.field private mPipInitEdgeYOffset:I

.field private mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mPreviewViewHeight:I

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mPreviewViewWidth:I

.field private mRecorderCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

.field private volatile mRecordingFlag:Z

.field private mRectColor:I

.field private volatile mRectHeight:I

.field private volatile mRectPortX:I

.field private volatile mRectPortY:I

.field private volatile mRectWidth:I

.field private mRenderTextures:[I

.field private mRendererRequestHandler:Landroid/os/Handler;

.field private mRendererRequestThread:Landroid/os/HandlerThread;

.field private mScreenFormType:I

.field private mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSlaveOESTextureId:I

.field private mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

.field private mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSlaveTargetHeight:I

.field private mSlaveTargetWidth:I

.field private mSlaveTargetX:I

.field private mSlaveTargetY:I

.field private mSlaveTouchArea:Landroid/graphics/Rect;

.field private mSlaveViewPortFlip:Z

.field private volatile mSlaveViewPortHeight:I

.field private volatile mSlaveViewPortWidth:I

.field private volatile mSlaveViewPortX:I

.field private volatile mSlaveViewPortY:I

.field private mSurfaceAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTakePictureFlag:Z

.field private mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;


# direct methods
.method public static synthetic $r8$lambda$0HphDmkE7uRPfjM2iGbHs4rHXPY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runMainScreenAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7R09r97FGg87dQ18y1AJFO2bMGE(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runSlaveScreenAnimator$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BcG1eGnMvPBSvjC-wtpvXgJERic(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$updateAuxViewInfo$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$FJPs14Qc6AJBMcuFwIBTMWILv7Y(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runMainScreenAnimator$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FxweAsYrqSPbGDHprhTIOXf7Czc(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$updateAuxViewInfo$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$HB3baiWrfEC0xe12i4If3MbSWFA(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runMainScreenAnimator$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SO_qnaL3FP7WrJKyeJqLafvOKRU(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runSlaveScreenAnimator$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T_Xa6JyECJnPO6e9_BmgKueJ1cM(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runDividerAnimator$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_hcb_wD8N4eOn9pZixuMeRbbn1s(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runSlaveScreenAnimator$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oc60AHpOa5xjmoI39Cs1VgcyioY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runMainScreenAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rau6E7UlxvhieB4LpJ9B8kIupRQ(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runDividerAnimator$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vXsICTlcK_7-u0vMDz5mxKqOOEE(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runDividerAnimator$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yKiL2jzFpjLaz-LC1-NOWMOeE7k(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runSlaveScreenAnimator$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ycw9iYzvOOqrFEHroPUZsY7kLtA(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$updatePreviewPortInfo$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 113
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->VERTEX_DEFAULT_MATRIX:[F

    .line 222
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLastPost:J

    .line 66
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    const-wide/16 v2, 0x0

    .line 88
    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mFrameCount:J

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    const/4 v2, 0x0

    .line 106
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    .line 107
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    .line 108
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 109
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    .line 110
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    const/4 v3, 0x1

    .line 128
    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    .line 130
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    .line 131
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    .line 132
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    .line 133
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    .line 134
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    .line 135
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    .line 136
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    .line 137
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    .line 138
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    .line 139
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 140
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    .line 141
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 142
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 143
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    .line 144
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 145
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    .line 147
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortFlip:Z

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    .line 151
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortX:I

    .line 152
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortY:I

    .line 153
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectWidth:I

    .line 154
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectHeight:I

    .line 155
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipFrameStrokeWidth:I

    .line 156
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    .line 157
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    .line 158
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineInitHeight:I

    .line 159
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineMaxHeight:I

    .line 160
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineRealHeight:I

    .line 161
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    .line 162
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxWidth:I

    .line 163
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealWidth:I

    .line 164
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitHeight:I

    .line 165
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxHeight:I

    .line 166
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealHeight:I

    .line 167
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    .line 168
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    .line 195
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBitmapBuffer:[I

    .line 196
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBitmapSource:[I

    .line 198
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureFlag:Z

    .line 199
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    .line 200
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 211
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 212
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 213
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 214
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 215
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    .line 216
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    .line 1164
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 1170
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mForceRender:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mFrameCount:J

    return-wide v0
.end method

.method static synthetic access$1008(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)J
    .locals 4

    .line 60
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mFrameCount:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    return p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    return p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortFlip:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortFlip:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    return p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    return p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    return p0
.end method

.method static synthetic access$1902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    return p1
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    return p0
.end method

.method static synthetic access$2002(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    return p0
.end method

.method static synthetic access$2102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    return p1
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecorderCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    return-object p0
.end method

.method static synthetic access$2400()[F
    .locals 1

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->VERTEX_DEFAULT_MATRIX:[F

    return-object v0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureFlag:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureFlag:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->takePcture(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->drawAuxView(II)V

    return-void
.end method

.method static synthetic access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->createSurfaceTexture()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoRender:Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoRender:Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->destroySurfaceTexture()V

    return-void
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->isMainThread()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateRenderSurfaceSize(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateViewPortInfo(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->sendHandlerMessage(IIJ)V

    return-void
.end method

.method static synthetic access$3802(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[III)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->rgbToJpeg([III)V

    return-void
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;J)J
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLastPost:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processHandleDrawAuxView(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    return p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    return p0
.end method

.method static synthetic access$4602(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortX:I

    return p1
.end method

.method static synthetic access$4702(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortY:I

    return p1
.end method

.method static synthetic access$4802(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectWidth:I

    return p1
.end method

.method static synthetic access$4902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mOesTextureId:I

    return p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    return p0
.end method

.method static synthetic access$5002(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    return p1
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mOesTextureId:I

    return p1
.end method

.method static synthetic access$5100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    return p0
.end method

.method static synthetic access$5102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    return p1
.end method

.method static synthetic access$5200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    return p0
.end method

.method static synthetic access$5202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    return p1
.end method

.method static synthetic access$5300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    return p0
.end method

.method static synthetic access$5302(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    return p1
.end method

.method static synthetic access$5400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->speedUpRefreshRate()V

    return-void
.end method

.method static synthetic access$5500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineInitHeight:I

    return p0
.end method

.method static synthetic access$5700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineMaxHeight:I

    return p0
.end method

.method static synthetic access$5800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    return p0
.end method

.method static synthetic access$5900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitHeight:I

    return p0
.end method

.method static synthetic access$6100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxHeight:I

    return p0
.end method

.method static synthetic access$6200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    return p0
.end method

.method static synthetic access$6202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    return p1
.end method

.method static synthetic access$6300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    return p0
.end method

.method static synthetic access$6400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    return p0
.end method

.method static synthetic access$6500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateTouchArea()V

    return-void
.end method

.method static synthetic access$6600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processHandleSwitchScreen()V

    return-void
.end method

.method static synthetic access$6700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mForceRender:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRenderTextures:[I

    return-object p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[I)[I
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRenderTextures:[I

    return-object p1
.end method

.method private createSurfaceTexture()V
    .locals 4

    .line 1056
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    return-void

    .line 1059
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->startRendererRequestThread()V

    .line 1060
    invoke-static {}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->createOESTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    .line 1061
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1062
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 1063
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSurfaceTexture mSlaveSurfaceTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSurfaceHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSurfaceWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    if-eqz v0, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    if-nez v0, :cond_2

    .line 1070
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_3

    .line 1074
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_pip_left_top:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1076
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_4

    .line 1077
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_pip_left_bottom:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1079
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_5

    .line 1080
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_pip_right_top:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1082
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_6

    .line 1083
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_pip_right_bottom:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1085
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_7

    .line 1086
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_drag_handle:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1088
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_8

    .line 1089
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_big_drag_handle:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    :cond_8
    return-void
.end method

.method private destroySurfaceTexture()V
    .locals 4

    .line 1094
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySurfaceTexture mSlaveSurfaceTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1096
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v0, v3, v1

    .line 1099
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    .line 1100
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1104
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    if-eqz v3, :cond_1

    .line 1105
    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1108
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1110
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->stopRenderRequestThread()V

    .line 1111
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    .line 1112
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    const-wide/16 v0, 0x0

    .line 1113
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mFrameCount:J

    .line 1115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_3

    .line 1116
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1117
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1119
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_4

    .line 1120
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1121
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1123
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_5

    .line 1124
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1125
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1127
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_6

    .line 1128
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1129
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1131
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_7

    .line 1132
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1133
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1135
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_8

    .line 1136
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1137
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1139
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    if-eqz v0, :cond_9

    .line 1140
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->deleteRecycledResources()V

    .line 1141
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    :cond_9
    return-void
.end method

.method private drawAuxView(II)V
    .locals 11

    .line 575
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 579
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->setSize(II)V

    const/4 v0, 0x0

    .line 580
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 581
    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_3

    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne p2, v1, :cond_1

    goto/16 :goto_0

    .line 597
    :cond_1
    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 599
    :cond_2
    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortX:I

    mul-int/lit8 v0, p1, 0x2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int v2, v0, v2

    sub-int/2addr p2, v2

    .line 600
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortY:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int/2addr v0, v3

    sub-int v0, v2, v0

    .line 601
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectWidth:I

    add-int/2addr v2, v1

    .line 602
    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectHeight:I

    add-int/2addr v1, v3

    .line 603
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    int-to-float v5, v0

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    int-to-float v6, v2

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    .line 604
    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v7

    sub-float/2addr v6, v7

    int-to-float v7, v1

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    .line 603
    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;)V

    .line 606
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getWidth()I

    move-result v3

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int v9, v3, v4

    .line 607
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getHeight()I

    move-result v3

    mul-int/2addr v3, p1

    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int v10, v3, p1

    .line 608
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    move v5, p2

    move v6, v0

    move v7, v9

    move v8, v10

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    .line 609
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    add-int/2addr v1, v0

    sub-int p1, v1, v9

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    .line 610
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    add-int/2addr p2, v2

    sub-int/2addr p2, v9

    move v5, p2

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    .line 611
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    move v7, p2

    move v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    goto :goto_1

    .line 583
    :cond_3
    :goto_0
    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    int-to-float v0, p1

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v2, v0

    div-float/2addr p2, v2

    float-to-int p2, p2

    .line 587
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealWidth:I

    mul-int v3, v2, p1

    div-int v8, v3, v0

    mul-int/2addr p1, v0

    .line 588
    div-int/2addr p1, v0

    .line 589
    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealHeight:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    mul-int/2addr v3, v4

    div-int v9, v3, v0

    .line 590
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    if-ne v2, v0, :cond_4

    .line 591
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    sub-int/2addr p1, v8

    div-int/lit8 v6, p1, 0x2

    div-int/lit8 p0, v9, 0x2

    sub-int v7, p2, p0

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    goto :goto_1

    .line 594
    :cond_4
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    sub-int/2addr p1, v8

    div-int/lit8 v6, p1, 0x2

    div-int/lit8 p0, v9, 0x2

    sub-int v7, p2, p0

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    :cond_5
    :goto_1
    return-void
.end method

.method private getBitMap(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1566
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1569
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1570
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1571
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1572
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private isMainThread()Z
    .locals 1

    .line 1314
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$runDividerAnimator$11(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1546
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineRealHeight:I

    return-void
.end method

.method private synthetic lambda$runDividerAnimator$12(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1550
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealWidth:I

    return-void
.end method

.method private synthetic lambda$runDividerAnimator$13(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1554
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealHeight:I

    return-void
.end method

.method private synthetic lambda$runMainScreenAnimator$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1473
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    return-void
.end method

.method private synthetic lambda$runMainScreenAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1477
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    return-void
.end method

.method private synthetic lambda$runMainScreenAnimator$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1481
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    return-void
.end method

.method private synthetic lambda$runMainScreenAnimator$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1485
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    .line 1486
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->speedUpRefreshRate()V

    return-void
.end method

.method private synthetic lambda$runSlaveScreenAnimator$10(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1526
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    return-void
.end method

.method private synthetic lambda$runSlaveScreenAnimator$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1514
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    return-void
.end method

.method private synthetic lambda$runSlaveScreenAnimator$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1518
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    return-void
.end method

.method private synthetic lambda$runSlaveScreenAnimator$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1522
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    return-void
.end method

.method private synthetic lambda$updateAuxViewInfo$1()V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_0

    .line 944
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updateDividerDisplaySize(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateAuxViewInfo$2()V
    .locals 4

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_0

    .line 962
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    float-to-int v3, v3

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    float-to-int p0, p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updatePIPDisplaySize(IIII)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatePreviewPortInfo$0()V
    .locals 4

    .line 918
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->runMainScreenAnimator(IIII)V

    .line 919
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->runSlaveScreenAnimator(IIII)V

    return-void
.end method

.method private loadFromDataStore()V
    .locals 11

    .line 1355
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 1356
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ", Pip ViewPort:"

    const-string v3, "loadFromDataStore, DividerDisplayY:"

    const/4 v4, 0x3

    if-eqz v1, :cond_3

    .line 1360
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    if-ne v1, v4, :cond_0

    const/16 v1, 0x528

    const/16 v4, 0x2e6

    goto :goto_0

    :cond_0
    const/16 v1, 0x780

    const/16 v4, 0x438

    .line 1367
    :goto_0
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "divider_display_y_percent"

    const-string v7, ""

    invoke-virtual {v5, v6, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1368
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    int-to-float v6, v1

    .line 1369
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v6, v5

    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 1371
    :cond_1
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "pip_view_x_percent"

    invoke-virtual {v5, v6, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1372
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v8, "pip_view_y_percent"

    invoke-virtual {v6, v8, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1373
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v9, "pip_view_width_percent"

    invoke-virtual {v8, v9, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1374
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v10, "pip_view_height_percent"

    invoke-virtual {v9, v10, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1375
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1376
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    int-to-float v4, v4

    .line 1377
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v4

    iput v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    int-to-float v1, v1

    .line 1378
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 1379
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 1380
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    .line 1382
    :cond_2
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 1385
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "divider_display_y"

    const-string v6, "-1"

    invoke-virtual {v1, v5, v6, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1386
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 1388
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "pip_view_port"

    invoke-virtual {v1, v5, v6, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 1389
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1390
    array-length v1, v0

    const/4 v5, 0x1

    if-le v1, v5, :cond_4

    const/4 v1, 0x0

    .line 1391
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 1392
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    const/4 v1, 0x2

    .line 1393
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 1394
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    .line 1396
    :cond_4
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private processHandleDrawAuxView(Z)V
    .locals 2

    .line 1450
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDrawAuxView(Z)V

    .line 1451
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_1

    .line 1452
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1454
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showOrhideDivider(Z)V

    :cond_1
    return-void
.end method

.method private processHandleSwitchScreen()V
    .locals 0

    .line 1460
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoMsgCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;

    if-eqz p0, :cond_0

    .line 1461
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;->notifySwitchScreenEnd()V

    :cond_0
    return-void
.end method

.method private processScreenFormChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_init_edge_x_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    .line 825
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_init_edge_y_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_up_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_down_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_init_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    .line 830
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_up_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_down_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    goto :goto_0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_init_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_up_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    .line 837
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_down_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    .line 839
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_2

    .line 840
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onScreenFormChanged(I)V

    :cond_2
    const/4 p1, 0x0

    .line 842
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateViewPortInfo(Z)V

    return-void
.end method

.method private rgbToJpeg([III)V
    .locals 8

    .line 1034
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1035
    new-instance v7, Landroid/graphics/YuvImage;

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/CameraUtil;->rgb2NV21NoAlpha([III)[B

    move-result-object v2

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, v7

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1038
    new-instance p1, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x64

    invoke-virtual {v7, p1, p2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1040
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 1041
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPictureCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;

    if-eqz p0, :cond_0

    .line 1042
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;->notifyVideoPictureTaken([B)V

    :cond_0
    return-void
.end method

.method private saveDividerScreenInfo()V
    .locals 7

    .line 1318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 1319
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "divider_up_screen_height"

    const/4 v4, 0x1

    .line 1318
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1321
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1322
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 1323
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "divider_up_crop_offset"

    .line 1322
    invoke-virtual {v2, v6, v3, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1325
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 1326
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 1327
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "divider_down_crop_offset"

    .line 1326
    invoke-virtual {v2, v6, v3, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1328
    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDividerScreenInfo, upScreenHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", upScreenCropOffset:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", downScreenCropOffset:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private saveToDataStore()V
    .locals 6

    .line 1333
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 1334
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "divider_display_y"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1336
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pip_view_port"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1338
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1340
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "divider_display_y_percent"

    .line 1339
    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1341
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1342
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pip_view_x_percent"

    .line 1341
    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1343
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1344
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pip_view_y_percent"

    .line 1343
    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1345
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1346
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pip_view_width_percent"

    .line 1345
    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1347
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1348
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pip_view_height_percent"

    .line 1347
    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1349
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveToDataStore, DividerDisplayY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", Pip ViewPort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendHandlerMessage(IIJ)V
    .locals 2

    .line 1401
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 1405
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1407
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1409
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method private setDrawAuxView(Z)V
    .locals 3

    .line 1047
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrawAuxView, isDraw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x69

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1051
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v2, v1, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[I)V

    .line 1052
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setPIPViewSelected(Z)V

    return-void
.end method

.method private speedUpRefreshRate()V
    .locals 6

    .line 1181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLastPost:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x10

    sub-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startRendererRequestThread()V
    .locals 2

    .line 1146
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SlaveRenderReqThd"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    .line 1147
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1148
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopRenderRequestThread()V
    .locals 3

    .line 1152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1155
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V

    const/4 v0, 0x0

    .line 1156
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    .line 1157
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1159
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Interrupted while trying to join mRespondThread"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private takePcture(II)V
    .locals 11

    .line 999
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBitmapBuffer:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    mul-int v1, p1, p2

    if-eq v0, v1, :cond_1

    :cond_0
    mul-int v0, p1, p2

    .line 1000
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBitmapBuffer:[I

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBitmapBuffer:[I

    .line 1004
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIntBuffer:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    .line 1005
    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    .line 1006
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIntBuffer:Ljava/nio/IntBuffer;

    move v5, p1

    move v6, p2

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1009
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBitmapSource:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    mul-int v3, p1, p2

    if-eq v1, v3, :cond_3

    :cond_2
    mul-int v1, p1, p2

    .line 1010
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBitmapSource:[I

    .line 1012
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBitmapSource:[I

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_5

    mul-int v4, v3, p1

    sub-int v5, p2, v3

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, p1

    move v6, v2

    :goto_1
    if-ge v6, p1, :cond_4

    add-int v7, v4, v6

    .line 1018
    aget v7, v0, v7

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v7, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    const v10, -0xff0100

    and-int/2addr v7, v10

    or-int/2addr v7, v9

    or-int/2addr v7, v8

    add-int v8, v5, v6

    .line 1022
    aput v7, v1, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1025
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[III)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAuxViewInfo()V
    .locals 3

    .line 940
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 953
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x0

    .line 955
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    .line 956
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortX:I

    .line 957
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortY:I

    .line 958
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectWidth:I

    .line 959
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectHeight:I

    .line 960
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 965
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectColor:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->setColor(I)V

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipFrameStrokeWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->setLineWidth(F)V

    .line 967
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAuxViewInfo, pip display, x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 942
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 948
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineInitHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineRealHeight:I

    .line 949
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealWidth:I

    .line 950
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealHeight:I

    .line 951
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLineColor:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->setColor(I)V

    .line 952
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAuxViewInfo, divider display Y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updatePreviewPortInfo(Z)V
    .locals 9

    .line 858
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v0, v5, :cond_3

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_6

    .line 870
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_6

    .line 871
    :cond_2
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    iget v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    int-to-float v6, v6

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 872
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 873
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 874
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    goto :goto_1

    .line 860
    :cond_3
    :goto_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_4

    .line 861
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    :cond_4
    if-eqz p1, :cond_5

    .line 864
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    goto :goto_1

    .line 866
    :cond_5
    iput-boolean v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    .line 878
    :cond_6
    :goto_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne v0, v5, :cond_7

    .line 879
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    .line 880
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 881
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 882
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 883
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    sub-int/2addr v1, v0

    .line 884
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 885
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    .line 886
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    goto/16 :goto_2

    .line 887
    :cond_7
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne v0, v3, :cond_8

    .line 888
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 889
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    sub-int/2addr v1, v0

    .line 890
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    .line 891
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 892
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 893
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    .line 894
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 895
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    goto/16 :goto_2

    .line 896
    :cond_8
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne v0, v1, :cond_9

    .line 897
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    .line 898
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 899
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    .line 900
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 901
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 902
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    .line 903
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 904
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    goto :goto_2

    .line 906
    :cond_9
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    .line 907
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 908
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    .line 909
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 910
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 911
    iput v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    .line 912
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 913
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    :goto_2
    if-eqz p1, :cond_a

    .line 917
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 922
    :cond_a
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    .line 923
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    .line 924
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    .line 925
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    .line 926
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    .line 927
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    .line 928
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    .line 929
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    .line 932
    :goto_3
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateViewPortInfo, main SplitValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateViewPortInfo, slave x:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateViewPortInfo, preview view width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateRenderSurfaceSize(II)V
    .locals 2

    .line 812
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    if-ne v0, p2, :cond_0

    .line 813
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRenderSurfaceSize not changed, width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 816
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    .line 817
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    .line 818
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateRenderSurfaceSize changed, mSurfaceWidth:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSurfaceHeight:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 819
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateViewPortInfo(Z)V

    return-void
.end method

.method private updateTouchArea()V
    .locals 6

    .line 973
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->saveDividerScreenInfo()V

    .line 975
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 976
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 978
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    add-int/2addr p0, v3

    invoke-virtual {v0, v1, v2, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 980
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 981
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    add-int/2addr v5, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 983
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr v4, p0

    float-to-int p0, v4

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 985
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 988
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 990
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    add-int/2addr p0, v2

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method private updateViewPortInfo(Z)V
    .locals 2

    .line 846
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updatePreviewPortInfo(Z)V

    .line 853
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateAuxViewInfo()V

    .line 854
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateTouchArea()V

    return-void

    .line 847
    :cond_1
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateViewPortInfo return, mSurfaceWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSurfaceHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewViewWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewViewHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDualSwitchButtonVisible()Z
    .locals 0

    .line 1594
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_0

    .line 1595
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getDualSwitchButtonVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemVisibility()I
    .locals 0

    .line 1611
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getItemVisibility()I

    move-result p0

    return p0
.end method

.method public getMainAndSlaveRatio()F
    .locals 2

    .line 1578
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    mul-int/2addr v1, p0

    int-to-float p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method public hideDualDeviceItem()V
    .locals 0

    .line 1582
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_0

    .line 1583
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;ILcom/transsion/camera/app/common/preview/IPreviewOperator;Landroid/view/ViewGroup;Ljava/util/List;ILcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/IAppUI;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/camera/app/common/storage/DataStore;",
            "I",
            "Lcom/transsion/camera/app/common/preview/IPreviewOperator;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;I",
            "Lcom/transsion/camera/app/common/setting/ISetting;",
            "Lcom/transsion/camera/app/common/IAppUI;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v10, p1

    move-object/from16 v11, p4

    .line 228
    iput-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 229
    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    move/from16 v1, p3

    .line 230
    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    .line 231
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init mScreenFormType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;

    const/4 v12, 0x0

    invoke-direct {v1, p0, v12}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p6

    .line 233
    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataList:Ljava/util/List;

    move/from16 v1, p7

    .line 234
    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCurrentPosition:I

    move-object/from16 v1, p8

    .line 235
    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    .line 238
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectColor:I

    const v2, 0x106000c

    .line 239
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLineColor:I

    .line 240
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_frame_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipFrameStrokeWidth:I

    .line 241
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_line_init_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineInitHeight:I

    .line 242
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_line_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineMaxHeight:I

    .line 243
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_drag_handle_init_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    .line 244
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_drag_handle_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxWidth:I

    .line 245
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_drag_handle_init_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitHeight:I

    .line 246
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_drag_handle_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxHeight:I

    .line 247
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    .line 248
    iget v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataList:Ljava/util/List;

    iget v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCurrentPosition:I

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    move-object v2, p1

    move-object/from16 v3, p5

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v1 .. v9}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->init(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/util/List;ILcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/IAppUI;I)V

    .line 249
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    new-instance v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;

    invoke-direct {v2, p0, v12}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;)V

    .line 251
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoRender:Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    .line 252
    iput-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v11, :cond_0

    .line 254
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    invoke-interface {v11, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 256
    :cond_0
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    .line 257
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->loadFromDataStore()V

    .line 259
    iget v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processScreenFormChanged(I)V

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDoubleTap(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDoubleTap(FF)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 499
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->shouldPIPViewRespond(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->imitatePIPViewsTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 506
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 523
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getOutAreaShouldPIPViewRespond()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->imitatePIPViewsTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 530
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onLongPress(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 7

    .line 428
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelativePreviewRectChanged, rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rect width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenFormType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRelativePreviewRectChanged, preview view rect:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", preview view width:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 435
    invoke-static {v4, v5, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 443
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 444
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    .line 445
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    .line 447
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->loadFromDataStore()V

    goto :goto_0

    .line 452
    :cond_1
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v0, v0

    div-float v3, v1, v0

    .line 455
    :cond_2
    :goto_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 456
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 459
    :cond_3
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 460
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 461
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 462
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 463
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    .line 466
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_5

    .line 467
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 470
    :cond_5
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processScreenFormChanged(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 475
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    if-eqz p1, :cond_0

    .line 476
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;->sendScaleArea()V

    .line 478
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    const/16 p1, 0x3e8

    const-wide/16 v2, 0x0

    .line 480
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->sendHandlerMessage(IIJ)V

    :cond_2
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 487
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 489
    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processHandleDrawAuxView(Z)V

    .line 490
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x3e8

    const-wide/16 v1, 0xbb8

    .line 491
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->sendHandlerMessage(IIJ)V

    :cond_1
    return v0
.end method

.method public onScreenFormChanged(IZLandroid/graphics/Rect;)V
    .locals 3

    .line 403
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    .line 404
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFormChanged, preview view rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", preview view width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenFormType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->resetAuxData()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 412
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    .line 413
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onScreenFormChanged(I)V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onScreenFormChanged(IZ)V

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 419
    :cond_1
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processScreenFormChanged(I)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 511
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getOutAreaShouldPIPViewRespond()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->imitatePIPViewsTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 518
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onSingleTapConfirmed(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapConfirmed(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .locals 5

    .line 550
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp, x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 551
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 553
    :cond_0
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processHandleDrawAuxView(Z)V

    const/16 v1, 0x3e8

    const-wide/16 v3, 0xbb8

    .line 554
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->sendHandlerMessage(IIJ)V

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    const-string v1, "onSingleTapUp, in main touch area"

    .line 559
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    if-eqz v1, :cond_2

    const-string v3, "device_main"

    .line 561
    invoke-interface {v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;->sendSingleUpAreaName(Ljava/lang/String;)V

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_3

    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    const-string p1, "onSingleTapUp, in slave touch area"

    .line 566
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    if-eqz p0, :cond_3

    const-string p1, "device_slave"

    .line 568
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;->sendSingleUpAreaName(Ljava/lang/String;)V

    :cond_3
    return v2
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 535
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getOutAreaShouldPIPViewRespond()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->imitatePIPViewsTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->isDualDeviceRootHide()Z

    move-result v0

    if-nez v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot()V

    .line 545
    :cond_2
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->pause()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    .line 302
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 305
    :cond_2
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    .line 306
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 309
    :cond_3
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public resetAuxData()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 313
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 314
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 315
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 316
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 317
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public runDividerAnimator(IIIIII)V
    .locals 5

    .line 1539
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 1542
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 1544
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1545
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [I

    aput p3, v1, v2

    aput p4, v1, p1

    .line 1548
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 1549
    new-instance p4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p4, v0, [I

    aput p5, p4, v2

    aput p6, p4, p1

    .line 1552
    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 1553
    new-instance p5, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1557
    new-instance p5, Landroid/animation/AnimatorSet;

    invoke-direct {p5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x12c

    .line 1558
    invoke-virtual {p5, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1559
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object p6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p5, p6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1560
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p6, 0x3

    new-array p6, p6, [Landroid/animation/Animator;

    aput-object p2, p6, v2

    aput-object p3, p6, p1

    aput-object p4, p6, v0

    invoke-virtual {p5, p6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1561
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public runMainScreenAnimator(IIII)V
    .locals 6

    .line 1466
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 1469
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1471
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1472
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [I

    .line 1475
    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    aput v4, v1, v3

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1476
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [I

    .line 1479
    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    aput v4, v1, v3

    aput p3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 1480
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [I

    .line 1483
    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    aput v4, v1, v3

    aput p4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 1484
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1489
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x190

    .line 1490
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1491
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1492
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v0

    const/4 p1, 0x3

    aput-object p4, v4, p1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1493
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$4;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1503
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public runSlaveScreenAnimator(IIII)V
    .locals 6

    .line 1507
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 1510
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1512
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1513
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [I

    .line 1516
    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    aput v4, v1, v3

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1517
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [I

    .line 1520
    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    aput v4, v1, v3

    aput p3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 1521
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [I

    .line 1524
    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    aput v4, v1, v3

    aput p4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 1525
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1529
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x190

    .line 1530
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1531
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1532
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v0

    const/4 p1, 0x3

    aput-object p4, v4, p1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1533
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setDualDeviceButtonEnable(Z)V
    .locals 0

    .line 1605
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_0

    .line 1606
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setDualDeviceButtonEnable(Z)V

    :cond_0
    return-void
.end method

.method public setDualDeviceGroupRootVisibility(I)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setDualDeviceGroupRootVisibility(I)V

    :cond_0
    return-void
.end method

.method public setDualDeviceItemEnable(Z)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setDualDeviceItemEnable(Z)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1601
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setOrientation(I)V

    return-void
.end method

.method public setRecordingFlag(Z)V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingFlag, flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x68

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 385
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v2, v1, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[I)V

    .line 386
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getMainAndSlaveRatio()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoWindowCutRatio(F)V

    .line 387
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->dualVideo(I)V

    return-void
.end method

.method public setSplitStyleAndValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;IZZZ)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    .line 359
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 362
    :cond_2
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 365
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->STYLE_UP_DOWN:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    const/16 p1, 0x65

    aput p1, v0, v2

    goto :goto_0

    :cond_3
    const/16 p1, 0x66

    aput p1, v0, v2

    :goto_0
    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p2, 0x2

    aput p3, v0, p2

    const/4 p2, 0x3

    aput p4, v0, p2

    const/4 p2, 0x4

    aput p5, v0, p2

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[I)V

    return-void
.end method

.method public setSurfaceTextureListener(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    return-void
.end method

.method public setTouchInfoCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    return-void
.end method

.method public setVideoMsgCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoMsgCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;

    return-void
.end method

.method public setVideoPictureCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPictureCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;

    return-void
.end method

.method public setVideoRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecorderCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    return-void
.end method

.method public showOrHideDualDeviceButton(Z)V
    .locals 0

    .line 1588
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_0

    .line 1589
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showOrHideDualDeviceButton(Z)V

    :cond_0
    return-void
.end method

.method public startRecordHideRoot(Z)V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->startRecordingHideDeviceRoot(Z)V

    return-void
.end method

.method public takeVideoPicture()V
    .locals 2

    .line 341
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "takeVideoPicture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x67

    .line 343
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->unInit()V

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->saveToDataStore()V

    return-void
.end method

.method public updateSurfaceSize(II)V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurfaceSize, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x64

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p2, v0, p1

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[I)V

    return-void
.end method

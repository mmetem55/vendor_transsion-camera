.class public Lcom/transsion/ardrawlines/view/RecordButton;
.super Landroid/widget/FrameLayout;
.source "RecordButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;,
        Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;,
        Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;
    }
.end annotation


# static fields
.field private static final CAPTURING_MODE:I = 0x0

.field private static final RECORDING_LONG:I = 0x2

.field private static final RECORDING_SHORT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private LONG_DURATION:J

.field private final MAX_TAP_LENGTH:J

.field private final RECORDING_PREP_TIME:J

.field private SHORT_DURATION:J

.field private isLongClickPerformed:Z

.field private isPressed:Z

.field private mCameraMode:I

.field private mContext:Landroid/content/Context;

.field private mCounterRunning:Z

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mImageCaptureRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;

.field private mMax_Duration:J

.field private mProgressBar:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

.field private mRecordStartTime:J

.field private mRecordingBackground:Landroid/widget/ImageView;

.field private mRecordingRunnable:Ljava/lang/Runnable;

.field private mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

.field private mStartButton:Landroid/widget/ImageView;

.field private mStopButton:Landroid/widget/ImageView;

.field private mTapDownTime:J

.field private mTapTwo:Z

.field private mTemp:J

.field private mTick:J

.field private mVideoRecordRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;

.field private startTime:J


# direct methods
.method public static synthetic $r8$lambda$ocjRw4lQPU60LwZ3p_fG2EAeArk(Lcom/transsion/ardrawlines/view/RecordButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->lambda$init$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/view/RecordButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x190

    .line 31
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->MAX_TAP_LENGTH:J

    const-wide/16 v0, 0x3e8

    .line 37
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->RECORDING_PREP_TIME:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3d

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->SHORT_DURATION:J

    const-wide/32 v1, 0x8ca1

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->LONG_DURATION:J

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCameraMode:I

    .line 45
    iget-wide v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->SHORT_DURATION:J

    iput-wide v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mMax_Duration:J

    .line 58
    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->NOT_RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    iput-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    .line 60
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isLongClickPerformed:Z

    .line 61
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapTwo:Z

    const-wide/16 v1, -0x1

    .line 63
    iput-wide v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapDownTime:J

    .line 65
    iput-wide v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->startTime:J

    .line 73
    iput-wide v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordStartTime:J

    const-wide/16 v1, 0x14

    .line 75
    iput-wide v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTick:J

    .line 77
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCounterRunning:Z

    const-wide/16 v1, 0x0

    .line 79
    iput-wide v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mDuration:J

    .line 81
    iput-wide v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTemp:J

    .line 84
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isPressed:Z

    .line 88
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x190

    .line 31
    iput-wide p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->MAX_TAP_LENGTH:J

    const-wide/16 p1, 0x3e8

    .line 37
    iput-wide p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->RECORDING_PREP_TIME:J

    .line 42
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3d

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->SHORT_DURATION:J

    const-wide/32 v0, 0x8ca1

    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->LONG_DURATION:J

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCameraMode:I

    .line 45
    iget-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->SHORT_DURATION:J

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mMax_Duration:J

    .line 58
    sget-object p2, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->NOT_RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    iput-object p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    .line 60
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isLongClickPerformed:Z

    .line 61
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapTwo:Z

    const-wide/16 v0, -0x1

    .line 63
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapDownTime:J

    .line 65
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->startTime:J

    .line 73
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordStartTime:J

    const-wide/16 v0, 0x14

    .line 75
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTick:J

    .line 77
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCounterRunning:Z

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mDuration:J

    .line 81
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTemp:J

    .line 84
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isPressed:Z

    .line 94
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x190

    .line 31
    iput-wide p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->MAX_TAP_LENGTH:J

    const-wide/16 p1, 0x3e8

    .line 37
    iput-wide p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->RECORDING_PREP_TIME:J

    .line 42
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x3d

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->SHORT_DURATION:J

    const-wide/32 p2, 0x8ca1

    .line 43
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->LONG_DURATION:J

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCameraMode:I

    .line 45
    iget-wide p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->SHORT_DURATION:J

    iput-wide p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mMax_Duration:J

    .line 58
    sget-object p2, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->NOT_RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    iput-object p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    .line 60
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isLongClickPerformed:Z

    .line 61
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapTwo:Z

    const-wide/16 p2, -0x1

    .line 63
    iput-wide p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapDownTime:J

    .line 65
    iput-wide p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->startTime:J

    .line 73
    iput-wide p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordStartTime:J

    const-wide/16 p2, 0x14

    .line 75
    iput-wide p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTick:J

    .line 77
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCounterRunning:Z

    const-wide/16 p2, 0x0

    .line 79
    iput-wide p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mDuration:J

    .line 81
    iput-wide p2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTemp:J

    .line 84
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isPressed:Z

    .line 99
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->init()V

    return-void
.end method

.method private getCurrentCounterDuration()J
    .locals 4

    .line 290
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isPressed:Z

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mProgressBar:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->getAnimationState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTemp:J

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordStartTime:J

    goto :goto_0

    .line 295
    :cond_0
    iget-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mDuration:J

    iget-wide v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTemp:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mDuration:J

    goto :goto_0

    .line 298
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mDuration:J

    .line 300
    :goto_0
    iget-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mDuration:J

    return-wide v0
.end method

.method private init()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$layout;->view_record_button:I

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    sget v0, Lcom/transsion/ardrawlines/R$id;->red_square:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mStopButton:Landroid/widget/ImageView;

    .line 105
    sget v0, Lcom/transsion/ardrawlines/R$id;->red_dot:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mStartButton:Landroid/widget/ImageView;

    .line 106
    sget v0, Lcom/transsion/ardrawlines/R$id;->circle_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingBackground:Landroid/widget/ImageView;

    .line 107
    sget v0, Lcom/transsion/ardrawlines/R$id;->progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mProgressBar:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    .line 108
    new-instance v0, Lcom/transsion/ardrawlines/view/RecordButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/view/RecordButton$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/view/RecordButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/transsion/ardrawlines/view/RecordButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/view/RecordButton$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/ardrawlines/view/RecordButton;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private isTouchEventInBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 191
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 193
    invoke-virtual {v0, p0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$init$0()V
    .locals 5

    .line 112
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->getCurrentCounterDuration()J

    move-result-wide v0

    .line 113
    sget-object v2, Lcom/transsion/ardrawlines/view/RecordButton;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "counterDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mProgressBar:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    iget-wide v3, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mMax_Duration:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->setCurrentDuration(JJ)V

    .line 116
    iget-wide v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mMax_Duration:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/view/RecordButton;->setRecording(Z)V

    .line 118
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCounterRunning:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTick:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private resetAnimation()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 284
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 285
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 286
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->stopCounter()V

    return-void
.end method

.method private startCounter()V
    .locals 5

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCounterRunning:Z

    .line 198
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mProgressBar:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->getCurrentCounterDuration()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mMax_Duration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->setCurrentDuration(JJ)V

    .line 199
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTick:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startRecordingPrep()V
    .locals 2

    .line 216
    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton;->TAG:Ljava/lang/String;

    const-string v1, "startRecordingPrep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mVideoRecordRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;

    if-eqz v0, :cond_0

    .line 219
    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING_REQUESTED:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    iput-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    .line 220
    invoke-interface {v0}, Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;->onRequestRecordingStart()Z

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/view/RecordButton;->setRecording(Z)V

    :cond_0
    return-void
.end method

.method private startTakePhoto()V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mImageCaptureRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;

    if-eqz p0, :cond_0

    .line 259
    invoke-interface {p0}, Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;->onRequestScreenCapture()V

    :cond_0
    return-void
.end method

.method private stopCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCounterRunning:Z

    .line 204
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 2

    .line 208
    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton;->TAG:Ljava/lang/String;

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mVideoRecordRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;->onRequestRecordingCancel()V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->reset()V

    return-void
.end method

.method public getCameraMode()I
    .locals 0

    .line 304
    iget p0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCameraMode:I

    return p0
.end method

.method public isRecording()Z
    .locals 1

    .line 349
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING_REQUESTED:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    if-ne p0, v0, :cond_0

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

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 374
    sget-object p1, Lcom/transsion/ardrawlines/view/RecordButton;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent...: 8 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/ardrawlines/view/RecordButton;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->getCameraMode()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mImageCaptureRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;

    if-eqz p1, :cond_0

    .line 376
    invoke-interface {p1}, Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;->onLongClick()V

    .line 377
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isLongClickPerformed:Z

    :cond_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 127
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 128
    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: isEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event.getAction()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent...: 4 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/ardrawlines/view/RecordButton;->startTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isLongClickPerformed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 138
    iput-boolean v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isLongClickPerformed:Z

    return v1

    .line 141
    :cond_1
    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton$1;->$SwitchMap$com$transsion$ardrawlines$view$RecordButton$RecordingState:[I

    iget-object v3, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_5

    .line 158
    iget-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapTwo:Z

    if-nez p1, :cond_2

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long p1, v3, v5

    if-gtz p1, :cond_2

    .line 161
    iput-boolean v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapTwo:Z

    return v2

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    if-ne p1, v0, :cond_4

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long p1, v3, v5

    if-gez p1, :cond_3

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/ardrawlines/view/RecordButton;->setRecording(Z)V

    .line 175
    iput-boolean v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapTwo:Z

    goto :goto_1

    .line 167
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapTwo:Z

    return v2

    .line 144
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapDownTime:J

    .line 145
    iput-boolean v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mTapTwo:Z

    .line 146
    invoke-direct {p0, p0, p1}, Lcom/transsion/ardrawlines/view/RecordButton;->isTouchEventInBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 147
    iget p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCameraMode:I

    if-nez p1, :cond_6

    .line 148
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->startTakePhoto()V

    return v2

    .line 151
    :cond_6
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->startRecordingPrep()V

    goto :goto_1

    .line 133
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent...: 3 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/ardrawlines/view/RecordButton;->startTime:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return v2
.end method

.method public pauseRecording()V
    .locals 4

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isPressed:Z

    .line 334
    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    iput-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    .line 335
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mProgressBar:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    invoke-virtual {v1, v0}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->setAnimationState(Z)V

    const-string v0, "NatCorder"

    const-string v1, "PauseRecording"

    const-string v2, ""

    .line 336
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeRecording: + pause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->getCurrentCounterDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 5

    .line 272
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->resetAnimation()V

    const-wide/16 v0, -0x1

    .line 273
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordStartTime:J

    const-wide/16 v0, 0x0

    .line 274
    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mDuration:J

    const/4 v2, 0x0

    .line 275
    iput-boolean v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->isPressed:Z

    .line 276
    iget-object v2, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mProgressBar:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    iget-wide v3, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mMax_Duration:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->setCurrentDuration(JJ)V

    .line 277
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mProgressBar:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->reset()V

    .line 278
    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->NOT_RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    .line 279
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingBackground:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/ardrawlines/R$drawable;->ic_circle_prompt:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public resumeRecording()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mProgressBar:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->setAnimationState(Z)V

    .line 343
    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    const-string v0, "NatCorder"

    const-string v1, "ResumeRecording"

    const-string v2, ""

    .line 344
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeRecording: + resume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->getCurrentCounterDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCameraMode(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 327
    iput v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCameraMode:I

    goto :goto_0

    .line 321
    :cond_0
    iput v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCameraMode:I

    .line 322
    iget-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->LONG_DURATION:J

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mMax_Duration:J

    .line 323
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mStartButton:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/ardrawlines/R$drawable;->ic_record_center:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingBackground:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/ardrawlines/R$drawable;->ic_circle_prompt:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 315
    :cond_1
    iput v1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCameraMode:I

    .line 316
    iget-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->SHORT_DURATION:J

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mMax_Duration:J

    .line 317
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mStartButton:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/ardrawlines/R$drawable;->ic_record_center:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingBackground:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/ardrawlines/R$drawable;->ic_circle_prompt:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 310
    :cond_2
    iput v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mCameraMode:I

    .line 311
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mStartButton:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/ardrawlines/R$drawable;->ic_photo_center:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingBackground:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/ardrawlines/R$drawable;->ic_circle_prompt:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setImageCaptureRequestListener(Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mImageCaptureRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;

    return-void
.end method

.method public setRecording(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 356
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 357
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingBackground:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/ardrawlines/R$drawable;->ic_recording_ex:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordStartTime:J

    .line 360
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->startCounter()V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING_REQUESTED:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mVideoRecordRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;

    if-eqz v0, :cond_2

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mVideoRecordRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;

    invoke-interface {v0}, Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;->onRequestRecordingStop()Z

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->reset()V

    :goto_0
    if-eqz p1, :cond_3

    .line 369
    sget-object p1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->NOT_RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    :goto_1
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mRecordingState:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    return-void
.end method

.method public setVideoRecordRequestListener(Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButton;->mVideoRecordRequestListener:Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;

    return-void
.end method

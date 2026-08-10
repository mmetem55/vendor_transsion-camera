.class public abstract Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;
.super Ljava/lang/Object;
.source "CommonDualVideoUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;
    }
.end annotation


# static fields
.field protected static final HALF_SECOND_TO_MS:I = 0x1f4

.field private static final INIT_DURATION:J = 0x0L

.field private static final MSG_UI_STATE_CHANGED:I = 0x65

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x64

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field protected static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mContext:Landroid/content/Context;

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsRecording:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mOrientation:I

.field private final mParentViewGroup:Landroid/view/ViewGroup;

.field protected mPreviewRect:Landroid/graphics/Rect;

.field private mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mRecordingDurationBeforePause:J

.field protected mRecordingOrientation:I

.field private mRecordingRootView:Landroid/view/View;

.field private mRecordingStartTime:J

.field protected mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mRecordingTotalDuration:J

.field private volatile mRelease:Z

.field protected mResources:Landroid/content/res/Resources;

.field private final mRootResourceId:I

.field protected mScreenFormType:I

.field private mShowRecordingTimeViewIndicator:Z

.field protected mShowUI:Z

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field private mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 81
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowRecordingTimeViewIndicator:Z

    const-wide/16 v1, 0x0

    .line 58
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    .line 59
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    .line 60
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 65
    sget-object v2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 78
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRelease:Z

    const/4 v2, -0x1

    .line 82
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    .line 83
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    .line 85
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    .line 92
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    .line 95
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 97
    iput p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRootResourceId:I

    .line 98
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 99
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 100
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    .line 101
    new-instance p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 102
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRelease:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method private calculateRecordDuration()V
    .locals 4

    .line 317
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_0

    .line 318
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    :goto_0
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 0

    .line 401
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->doCreateView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private hideRecordingUI()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onHideRecordingUI()V

    return-void
.end method

.method private onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onUIStateChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$1;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_2

    .line 170
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingUI(Z)V

    goto :goto_0

    .line 163
    :pswitch_1
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_2

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    .line 165
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingUI(Z)V

    goto :goto_0

    .line 150
    :pswitch_2
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_0

    .line 151
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingTime()V

    goto :goto_0

    .line 154
    :cond_0
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_2

    .line 156
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    sub-long/2addr p1, v4

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    .line 158
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    .line 159
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingUI(Z)V

    goto :goto_0

    .line 143
    :pswitch_3
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_2

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    .line 145
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->showRecordingUI()V

    goto :goto_0

    .line 138
    :pswitch_4
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->hideRecordingUI()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showRecordingUI()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showRecordingUI] + mRecordingRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onShowRecordingUI()V

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showRecordingUI] - "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateRecordingTime()V
    .locals 5

    .line 298
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->calculateRecordDuration()V

    .line 302
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 306
    :cond_1
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->showTime(JZ)V

    .line 307
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowRecordingTimeViewIndicator:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowRecordingTimeViewIndicator:Z

    .line 308
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v4, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateTimeInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateRecordingTimeBarLayout()V
    .locals 8

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    .line 497
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 499
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    .line 502
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 503
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 505
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    const-string v5, "video_recordingtime_origin_height"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 507
    :cond_2
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    const-string v6, "top_bar_item_size"

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 508
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 509
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 510
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v7, 0x31

    if-ne v2, v3, :cond_6

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_5

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_3

    .line 528
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 529
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->recording_time_expand_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    const v2, 0x800015

    .line 522
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 523
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->recording_time_expand_90_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x51

    .line 518
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 519
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->recording_time_expand_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_5
    const v2, 0x800013

    .line 514
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 515
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->recording_time_expand_90_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 532
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz v2, :cond_7

    if-eq v2, v3, :cond_7

    if-ne v2, v1, :cond_b

    .line 536
    :cond_7
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-nez v2, :cond_9

    .line 538
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result v1

    if-ge v4, v5, :cond_8

    sub-int/2addr v5, v4

    .line 540
    div-int/2addr v5, v3

    add-int/2addr v1, v5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_8
    sub-int/2addr v4, v5

    .line 542
    div-int/2addr v4, v3

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_9
    if-ne v2, v1, :cond_a

    .line 545
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_video_recordingtime_margin_top_hover:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 547
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 549
    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRecordingUI(Z)V
    .locals 0

    .line 393
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onUpdateRecordingUI(Z)V

    return-void
.end method


# virtual methods
.method public createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createNotificationChannel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 469
    new-instance p0, Landroid/app/NotificationChannel;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    .line 470
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 471
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 472
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 473
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method protected doCreateView()Landroid/view/View;
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRootResourceId:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 408
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_recording_root_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 409
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_recording_time_group:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 410
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_recording_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v1
.end method

.method public getRecordingTotalDuration()J
    .locals 2

    .line 419
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    return-wide v0
.end method

.method protected getUIState()Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-object p0
.end method

.method protected getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    return-object p0
.end method

.method public hideInfo()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method protected onHideRecordingUI()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    const/4 v0, -0x1

    .line 362
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    const/4 v0, 0x0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 185
    :goto_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 186
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    .line 188
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_2

    .line 189
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_2
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    .line 208
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateBottomRootBarLayout(Z)V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingTimeBarLayout()V

    return-void
.end method

.method protected onShowRecordingUI()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    :cond_0
    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    const/4 v0, 0x0

    .line 377
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingUI(Z)V

    .line 378
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingTimeBarLayout()V

    .line 381
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 388
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateBottomRootBarLayout(Z)V

    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .locals 0

    return-void
.end method

.method public abstract playCaptureAnimation(Landroid/content/Context;)V
.end method

.method public runRecordTimeAnimator()V
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 485
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    .line 486
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 487
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 488
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public sendNotification(Landroid/content/Context;)V
    .locals 8

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendNotification"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 426
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 427
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video_save_notification"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_id"

    const/4 v3, 0x3

    .line 429
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 431
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "camera_label"

    invoke-virtual {v1, v5, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 432
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "camera_video_saved_notification"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 433
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->btn_shutter_video_notification_saved:I

    .line 434
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 435
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 438
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.APP_GALLERY"

    .line 439
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 440
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 442
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v6, "use_google_photos_default"

    const-string v7, "bool"

    invoke-virtual {v5, v6, v7, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 442
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 444
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    const-string p0, "com.google.android.apps.photos"

    .line 446
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    const-string p0, "com.google.android.apps.photosgo"

    .line 448
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p0, "com.gallery20"

    .line 450
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    :goto_0
    invoke-static {p1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    .line 454
    invoke-virtual {p0, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 p1, 0xc000000

    const/4 v2, 0x0

    .line 457
    invoke-virtual {p0, v2, p1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p0

    .line 461
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 462
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 463
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public setRecordingOrientation(I)V
    .locals 2

    .line 269
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 270
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    :cond_0
    return-void
.end method

.method public setScreenFormType(II)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    .line 113
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    return-void
.end method

.method public showInfo(I)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showInfo] infoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "string"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "can_not_use_storage"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video_recording_storage_full"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 245
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video_recording_error"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video_reach_size_limit"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 236
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video_bad_performance_auto_stop"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showTime(JZ)V
    .locals 4

    .line 326
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sub-long/2addr p1, v0

    .line 329
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p1

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 331
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public unInitVideoUI()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 224
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    .line 225
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRelease:Z

    return-void
.end method

.method protected updateBottomRootBarLayout(Z)V
    .locals 0

    return-void
.end method

.method public updateRecordingSize(J)V
    .locals 1

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateRecordingSize] mUIState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected updateTimeInterval()J
    .locals 4

    .line 342
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x3e8

    .line 344
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    :goto_0
    return-wide v0
.end method

.method public updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, p1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    .line 124
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    .line 123
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    :cond_0
    return-void
.end method

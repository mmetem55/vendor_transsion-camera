.class public abstract Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;
.super Ljava/lang/Object;
.source "CommonVideoUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;
    }
.end annotation


# instance fields
.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitOrientation:I

.field private mIsRecording:Z

.field protected volatile mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mOrientation:I

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field protected mPreviewRect:Landroid/graphics/Rect;

.field private mRecordingDurationBeforePause:J

.field protected mRecordingOrientation:I

.field private mRecordingRootView:Landroid/view/View;

.field private mRecordingStartTime:J

.field protected mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mRecordingTotalDuration:J

.field private volatile mRelease:Z

.field protected mResources:Landroid/content/res/Resources;

.field private mRootResourceId:I

.field protected mScreenFormType:I

.field private mShowRecordingTimeViewIndicator:Z

.field protected mShowUI:Z

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field private mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowRecordingTimeViewIndicator:Z

    const-wide/16 v1, 0x0

    .line 60
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    .line 61
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    .line 62
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 67
    sget-object v2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 79
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRelease:Z

    const/4 v2, -0x1

    .line 81
    iput v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 82
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowUI:Z

    .line 84
    iput v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    .line 96
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 97
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 100
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRootResourceId:I

    .line 101
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 102
    iput-object p5, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 103
    new-instance p1, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    .line 104
    new-instance p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 105
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRelease:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method private calculateRecordDuration()V
    .locals 4

    .line 362
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_0

    .line 363
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    goto :goto_0

    .line 365
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    :goto_0
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createView] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createView] - "

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private hideRecordingUI()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onHideRecordingUI()V

    return-void
.end method

.method private onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 144
    sget-object v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$1;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_2

    .line 179
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingUI(Z)V

    goto :goto_0

    .line 172
    :pswitch_1
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_2

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    .line 174
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingUI(Z)V

    goto :goto_0

    .line 159
    :pswitch_2
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_0

    .line 160
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTime()V

    goto :goto_0

    .line 163
    :cond_0
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_2

    .line 165
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    sub-long/2addr p1, v4

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    .line 167
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    .line 168
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingUI(Z)V

    goto :goto_0

    .line 152
    :pswitch_3
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_2

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    .line 154
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showRecordingUI()V

    goto :goto_0

    .line 147
    :pswitch_4
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideRecordingUI()V

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

.method private orientationChange(I)V
    .locals 4

    .line 212
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mInitOrientation:I

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_6

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_3

    if-ne p1, v2, :cond_2

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_6

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    const/16 v0, 0x168

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_6

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1

    .line 226
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method private showRecordingUI()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showRecordingUI] + mRecordingRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onShowRecordingUI()V

    .line 413
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->ringScreenLightUpdateUI()V

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showRecordingUI] - "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateRecordingTime()V
    .locals 5

    .line 343
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->calculateRecordDuration()V

    .line 347
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 351
    :cond_1
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showTime(JZ)V

    .line 352
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowRecordingTimeViewIndicator:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowRecordingTimeViewIndicator:Z

    .line 353
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v4, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateTimeInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateRecordingTimeBarLayout()V
    .locals 15

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 548
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 550
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    .line 553
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 554
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 556
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070786

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 558
    :cond_2
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "top_bar_item_size"

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 560
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v7, 0x15

    const/16 v8, 0x51

    const/16 v9, 0x13

    const/16 v10, 0x31

    const/16 v11, 0x10e

    const/16 v12, 0xb4

    const/16 v13, 0x5a

    if-ne v2, v3, :cond_6

    const v2, 0x7f070675

    if-eq v1, v13, :cond_5

    const v3, 0x7f070676

    if-eq v1, v12, :cond_4

    if-eq v1, v11, :cond_3

    .line 578
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 579
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 572
    :cond_3
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 573
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 568
    :cond_4
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 569
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 564
    :cond_5
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 565
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 582
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_8

    :cond_6
    const/4 v3, 0x3

    const/4 v14, 0x2

    if-eqz v2, :cond_e

    if-eq v2, v14, :cond_e

    if-ne v2, v3, :cond_7

    goto/16 :goto_5

    :cond_7
    const/4 v3, 0x5

    if-ne v2, v3, :cond_14

    .line 605
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    if-eq v2, v13, :cond_8

    if-eq v2, v11, :cond_8

    goto :goto_1

    :cond_8
    move v2, v1

    :goto_1
    const v3, 0x7f07005e

    if-eq v2, v13, :cond_b

    if-eq v2, v12, :cond_a

    if-eq v2, v11, :cond_9

    .line 627
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 628
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 621
    :cond_9
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 622
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 617
    :cond_a
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 618
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 613
    :cond_b
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 614
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_2
    const v2, 0x7f07005f

    const v3, 0x7f070061

    if-eq v1, v13, :cond_d

    if-ne v1, v11, :cond_c

    goto :goto_3

    .line 635
    :cond_c
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 636
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_4

    .line 632
    :cond_d
    :goto_3
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 633
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 638
    :goto_4
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 639
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 640
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_8

    .line 586
    :cond_e
    :goto_5
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v2, :cond_10

    if-ne v2, v14, :cond_f

    goto :goto_6

    :cond_f
    if-ne v2, v3, :cond_12

    .line 596
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070785

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_7

    .line 589
    :cond_10
    :goto_6
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result v2

    if-ge v4, v5, :cond_11

    sub-int/2addr v5, v4

    .line 591
    div-int/2addr v5, v14

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_7

    :cond_11
    sub-int/2addr v4, v5

    .line 593
    div-int/2addr v4, v14

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_12
    :goto_7
    if-ne v1, v12, :cond_13

    .line 599
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v12, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_8

    .line 601
    :cond_13
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 642
    :cond_14
    :goto_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRecordingUI(Z)V
    .locals 0

    .line 461
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onUpdateRecordingUI(Z)V

    return-void
.end method


# virtual methods
.method public createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createNotificationChannel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    new-instance p0, Landroid/app/NotificationChannel;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    .line 536
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 537
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 538
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 539
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method protected doCreateView()Landroid/view/View;
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRootResourceId:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903ae

    .line 478
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0903b1

    .line 479
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const v2, 0x7f0903b0

    .line 480
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v1
.end method

.method public getRecordingTotalDuration()J
    .locals 2

    .line 489
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    return-wide v0
.end method

.method protected getUIState()Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-object p0
.end method

.method protected getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    return-object p0
.end method

.method public hideInfo()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method protected onHideRecordingUI()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowUI:Z

    const/4 v0, -0x1

    .line 407
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    return-void

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_5

    .line 201
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->orientationChange(I)V

    goto :goto_2

    :cond_2
    :goto_0
    return-void

    .line 204
    :cond_3
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    .line 206
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    .line 249
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowUI:Z

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateBottomRootBarLayout(Z)V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTimeBarLayout()V

    return-void
.end method

.method protected onShowRecordingUI()V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    :cond_0
    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowUI:Z

    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingUI(Z)V

    .line 424
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    iput v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mInitOrientation:I

    .line 427
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTimeBarLayout()V

    .line 428
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 434
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    .line 445
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateBottomRootBarLayout(Z)V

    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .locals 0

    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 456
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public sendNotification(Landroid/content/Context;)V
    .locals 5

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendNotification"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 496
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100379

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_id"

    const/4 v3, 0x3

    .line 498
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 500
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0803df

    .line 501
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 503
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 505
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.APP_GALLERY"

    .line 506
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 507
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0500b6

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 510
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    const-string p0, "com.google.android.apps.photos"

    .line 512
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    const-string p0, "com.google.android.apps.photosgo"

    .line 514
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p0, "com.gallery20"

    .line 516
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    :goto_0
    invoke-static {p1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    .line 520
    invoke-virtual {p0, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 p1, 0xc000000

    const/4 v2, 0x0

    .line 523
    invoke-virtual {p0, v2, p1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p0

    .line 527
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 528
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 529
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public setRecordingOrientation(I)V
    .locals 2

    .line 314
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 315
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    :cond_0
    return-void
.end method

.method public setScreenFormType(II)V
    .locals 1

    .line 115
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_1

    const/16 p1, 0x10e

    if-eq p2, p1, :cond_1

    .line 118
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    goto :goto_0

    .line 121
    :cond_0
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    :cond_1
    :goto_0
    return-void
.end method

.method public showInfo(I)V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showInfo] infoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f1000c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f100377

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 284
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f100376

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f100375

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 277
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f100341

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public showRemainingTime(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100378

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showTime(JZ)V
    .locals 4

    .line 371
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sub-long/2addr p1, v0

    .line 374
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p1

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 376
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public unInitVideoUI()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 265
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    .line 266
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRelease:Z

    return-void
.end method

.method protected updateBottomRootBarLayout(Z)V
    .locals 0

    return-void
.end method

.method public updateLowLight(Z)V
    .locals 1

    .line 450
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    .line 451
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateTimeInterval()J
    .locals 4

    .line 387
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x3e8

    .line 389
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

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

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, p1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    .line 133
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    .line 132
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    :cond_0
    return-void
.end method

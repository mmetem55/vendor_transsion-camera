.class public Lcom/transsion/camera/app/common/ui/VideoUISpec;
.super Ljava/lang/Object;
.source "VideoUISpec.java"


# instance fields
.field private mExtClickListener:Landroid/view/View$OnClickListener;

.field private mIsSupportedCapture:Z

.field private mIsSupportedPause:Z

.field private mIsSupportedVss:Z

.field private mPauseResumeListener:Landroid/view/View$OnClickListener;

.field private mRecordingTotalSize:J

.field private mShowRecordingTime:Z

.field private mVideoSnapShotListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mIsSupportedVss:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mIsSupportedPause:Z

    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mRecordingTotalSize:J

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mIsSupportedCapture:Z

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mShowRecordingTime:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 23
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    .line 24
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mExtClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getExtClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mExtClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getPauseResumeListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getRecordingTotalSize()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mRecordingTotalSize:J

    return-wide v0
.end method

.method public getSupportedCapture()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mIsSupportedCapture:Z

    return p0
.end method

.method public getSupportedPause()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mIsSupportedPause:Z

    return p0
.end method

.method public getSupportedVss()Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mIsSupportedVss:Z

    return p0
.end method

.method public getVideoSnapShotListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setExtClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mExtClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPauseResumeListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRecordingTotalSize(J)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mRecordingTotalSize:J

    return-void
.end method

.method public setSupportedPause(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mIsSupportedPause:Z

    return-void
.end method

.method public setSupportedVss(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mIsSupportedVss:Z

    return-void
.end method

.method public setVideoSnapShotListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public showRecordingTime(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mShowRecordingTime:Z

    return-void
.end method

.method public showRecordingTime()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/VideoUISpec;->mShowRecordingTime:Z

    return p0
.end method

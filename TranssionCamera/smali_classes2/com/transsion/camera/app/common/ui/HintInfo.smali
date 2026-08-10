.class public Lcom/transsion/camera/app/common/ui/HintInfo;
.super Ljava/lang/Object;
.source "HintInfo.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAeAfLock:Z

.field private mBackgroundEnabled:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private final mFeedbackType:I

.field private mHighlight:Z

.field private mIsAsdDynamic:Z

.field private mIsMagicSkyGuideSupport:Z

.field private mIsSuperNightGuideSupport:Z

.field private mMessage:Ljava/lang/String;

.field private mMessageType:I

.field private mOtherDrawable:Landroid/graphics/drawable/Drawable;

.field private mOtherMessage:Ljava/lang/String;

.field private mPriority:I

.field private mProgressType:I

.field private mTwinkleGuideEnabled:Z

.field private mTwinkleGuideMode:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HintInfo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/HintInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessageType:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsSuperNightGuideSupport:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsMagicSkyGuideSupport:Z

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideMode:Ljava/lang/String;

    .line 89
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    const/16 p1, 0x68

    .line 90
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mFeedbackType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessageType:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsSuperNightGuideSupport:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsMagicSkyGuideSupport:Z

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideMode:Ljava/lang/String;

    .line 94
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    .line 95
    iput p2, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mFeedbackType:I

    return-void
.end method


# virtual methods
.method public aeAfLock(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mAeAfLock:Z

    return-void
.end method

.method public aeAfLock()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mAeAfLock:Z

    return p0
.end method

.method public enableBackground(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    .line 214
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDuration:I

    return p0
.end method

.method public getFeedbackType()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mFeedbackType:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getOtherDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOtherMessage()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    .line 202
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mPriority:I

    return p0
.end method

.method public getProgressType()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mProgressType:I

    return p0
.end method

.method public getTwinkleGuideMode()Ljava/lang/String;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideMode:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    return p0
.end method

.method public isAsdDynamic()Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    return p0
.end method

.method public isBackgroundEnabled()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    return p0
.end method

.method public isHighlight()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    return p0
.end method

.method public isMagicSkyGuideSupport()Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsMagicSkyGuideSupport:Z

    return p0
.end method

.method public isSuperNightGuideSupport()Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsSuperNightGuideSupport:Z

    return p0
.end method

.method public isTwinkleEnabled()Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideEnabled:Z

    return p0
.end method

.method public messageType()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessageType:I

    return p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDuration:I

    return-void
.end method

.method public setHighlight(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    return-void
.end method

.method public setIsAsdDynamic(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessageType:I

    return-void
.end method

.method public setOtherDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOtherMessage(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherMessage:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mPriority:I

    return-void
.end method

.method public setProgressType(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mProgressType:I

    return-void
.end method

.method public setTwinkleEnableType(ZZ)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsMagicSkyGuideSupport:Z

    .line 189
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsSuperNightGuideSupport:Z

    return-void
.end method

.method public setTwinkleEnabled(Z)V
    .locals 3

    .line 183
    sget-object v0, Lcom/transsion/camera/app/common/ui/HintInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTwinkleEnabled], twinkleEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideEnabled:Z

    return-void
.end method

.method public setTwinkleGuideMode(Ljava/lang/String;)V
    .locals 3

    .line 197
    sget-object v0, Lcom/transsion/camera/app/common/ui/HintInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTwinkleGuideMode], twinkleGuideMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideMode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAsdDynamic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOtherMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

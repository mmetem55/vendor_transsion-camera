.class public Lcom/transsion/camera/utils/analytics/CaptureExif;
.super Ljava/lang/Object;
.source "CaptureExif.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field public mExposureMode:I

.field public mExposureTime:D

.field public mFlash:I

.field public mISOSpeed:I

.field public mTimeOffset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureExif"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureMode:I

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    .line 13
    iput v0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mFlash:I

    .line 14
    iput v0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    const-string v0, "+00:00"

    .line 16
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mTimeOffset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public analyticsFlash()I
    .locals 1

    .line 19
    iget p0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mFlash:I

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public printLog()V
    .locals 4

    .line 40
    sget-object v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mFlash:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mExposureTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " mISOSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTimeOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mTimeOffset:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resetCaptureExif()V
    .locals 3

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureMode:I

    const-wide/16 v1, 0x0

    .line 33
    iput-wide v1, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    .line 34
    iput v0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mFlash:I

    .line 35
    iput v0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    const-string v0, "+00:00"

    .line 36
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mTimeOffset:Ljava/lang/String;

    return-void
.end method

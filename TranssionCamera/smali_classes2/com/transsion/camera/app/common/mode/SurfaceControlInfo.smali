.class public Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;
.super Ljava/lang/Object;
.source "SurfaceControlInfo.java"


# instance fields
.field private mDeviceType:I

.field private mHeight:I

.field private mObject:Ljava/lang/Object;

.field private mPrepareSuccess:Z

.field private mType:I

.field private mVideoFrameRate:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;IIII)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mObject:Ljava/lang/Object;

    .line 14
    iput p2, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mWidth:I

    .line 15
    iput p3, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mHeight:I

    .line 16
    iput p4, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mType:I

    .line 17
    iput p5, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mDeviceType:I

    return-void
.end method


# virtual methods
.method public getDeviceType()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mDeviceType:I

    return p0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method public getObjectHeight()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mHeight:I

    return p0
.end method

.method public getObjectType()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mType:I

    return p0
.end method

.method public getObjectWidth()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mWidth:I

    return p0
.end method

.method public getPrepareSuccess()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mPrepareSuccess:Z

    return p0
.end method

.method public getVideoFrameRate()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mVideoFrameRate:I

    return p0
.end method

.method public setPrepareSuccess(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mPrepareSuccess:Z

    return-void
.end method

.method public setVideoFrameRate(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->mVideoFrameRate:I

    return-void
.end method

.class public Lcom/transsion/camera/featurelibs/panorama/ConfigParam;
.super Ljava/lang/Object;
.source "ConfigParam.java"


# static fields
.field private static final DEFAULT_FOV_HEIGHT:F = 0.785f

.field private static final DEFAULT_FOV_WIDTH:F = 1.047f


# instance fields
.field public mCameraViewAngleForHeight:F

.field public mCameraViewAngleForWidth:F

.field public mDirection:I

.field public mImageFormat:I

.field public mImageHeight:I

.field public mImageWidth:I

.field public mOrientation:I

.field public mThumbnailBgWidth:I

.field public mThumbnailHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f860419    # 1.047f

    .line 33
    iput v0, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mCameraViewAngleForWidth:F

    const v0, 0x3f48f5c3    # 0.785f

    .line 35
    iput v0, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mCameraViewAngleForHeight:F

    return-void
.end method

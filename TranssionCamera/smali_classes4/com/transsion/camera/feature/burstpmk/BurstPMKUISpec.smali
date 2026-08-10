.class Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;
.super Lcom/transsion/camera/feature/common/BaseUISpec;
.source "BurstPMKUISpec.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method


# virtual methods
.method calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;)V
    .locals 8

    if-nez p1, :cond_0

    .line 33
    sget-object p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "calculateThumbnailSize previewSize is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 38
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    .line 39
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 40
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v6, p2

    div-double/2addr v2, v6

    int-to-double v6, v1

    mul-double/2addr v6, v4

    int-to-double v4, p1

    div-double/2addr v6, v4

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    int-to-float v5, v1

    div-float/2addr v0, v5

    .line 45
    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    int-to-float p2, p2

    mul-float/2addr p2, v4

    int-to-float v0, p1

    div-float/2addr p2, v0

    .line 46
    iput p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    .line 48
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 49
    iput v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 51
    div-int/lit8 p2, v1, 0x8

    iput p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int v0, p2, p1

    .line 52
    div-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 53
    iput p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 54
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float p2, p2

    const v0, 0x4049999a    # 3.15f

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 57
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 58
    iput p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 60
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sub-int/2addr p1, p1

    const/4 v0, 0x1

    shr-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Point;->x:I

    sub-double/2addr v2, v6

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    cmpl-double p1, p1, v1

    if-lez p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    sub-int/2addr v1, v2

    add-int/2addr p2, v1

    shr-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 65
    iput v4, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSpecialRatio:Z

    goto :goto_0

    .line 68
    :cond_1
    iget p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget v3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    sub-int/2addr v3, p1

    shr-int/lit8 p1, v3, 0x1

    add-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Point;->y:I

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSpecialRatio:Z

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 74
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 75
    iget p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    int-to-float p1, p1

    const p2, 0x3eb33333    # 0.35f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/lit8 p1, p1, -0xf

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

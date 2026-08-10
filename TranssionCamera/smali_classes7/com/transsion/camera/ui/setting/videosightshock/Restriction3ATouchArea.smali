.class public Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;
.super Ljava/lang/Object;
.source "Restriction3ATouchArea.java"


# instance fields
.field private final mOrigin16MMHeight:I

.field private final mOrigin16MMLeftRegionWidth:I

.field private final mOrigin16MMRightRegionWidth:I

.field private final mOrigin16MMTopRegionHeight:I

.field private final mOrigin16MMWidth:I

.field private final mOrigin35MMHeight:I

.field private final mOrigin35MMLeftRightRegionWidth:I

.field private final mOrigin35MMTopRegionHeight:I

.field private final mOrigin35MMWidth:I

.field private final mOrigin8MMHeight:I

.field private final mOrigin8MMLeftRightRegionWidth:I

.field private final mOrigin8MMTopRegionHeight:I

.field private final mOrigin8MMWidth:I

.field private final mScreenPreviewHeight:F

.field private final mScreenTopBarHeight:I

.field private final mScreenWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenWidth:I

    .line 39
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenTopBarHeight:I

    int-to-float p1, v0

    const v0, 0x3fe38e39

    mul-float/2addr p1, v0

    .line 40
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenPreviewHeight:F

    const/16 p1, 0x780

    .line 41
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMHeight:I

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculateOriginFrameWidth(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMWidth:I

    const/16 p1, 0x14a

    .line 43
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMTopRegionHeight:I

    const/16 p1, 0x1e

    .line 44
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMLeftRightRegionWidth:I

    const/16 p1, 0xf00

    .line 46
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMHeight:I

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculateOriginFrameWidth(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMWidth:I

    const/16 p1, 0x12c

    .line 48
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMTopRegionHeight:I

    const/16 p1, 0x28

    .line 49
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMLeftRegionWidth:I

    const/16 p1, 0x3c

    .line 50
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMRightRegionWidth:I

    const/16 p1, 0x77e

    .line 52
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMHeight:I

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculateOriginFrameWidth(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMWidth:I

    const/16 p1, 0x55

    .line 54
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMTopRegionHeight:I

    const/16 p1, 0x32

    .line 55
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMLeftRightRegionWidth:I

    return-void
.end method

.method private calculate16MMRestrictRect()Landroid/graphics/Rect;
    .locals 6

    .line 83
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMTopRegionHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 84
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMLeftRegionWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMWidth:I

    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 85
    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin16MMRightRegionWidth:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 86
    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenPreviewHeight:F

    mul-float/2addr v2, v0

    .line 87
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenWidth:I

    int-to-float v4, v0

    mul-float/2addr v4, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v3, v4

    iget v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenTopBarHeight:I

    float-to-int v2, v2

    add-int/2addr v2, v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenWidth:I

    float-to-int v0, v0

    sub-int/2addr v5, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenPreviewHeight:F

    float-to-int p0, p0

    add-int/2addr v4, p0

    invoke-direct {v1, v3, v2, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private calculate2_35_1RestrictRect()Landroid/graphics/Rect;
    .locals 4

    .line 65
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenWidth:I

    int-to-float v1, v0

    const v2, 0x3fe38e39

    mul-float/2addr v1, v2

    const v2, 0x40166666    # 2.35f

    div-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v0, v0

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenTopBarHeight:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenWidth:I

    sub-int/2addr v3, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenPreviewHeight:F

    float-to-int p0, p0

    add-int/2addr p0, v2

    invoke-direct {v1, v0, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private calculate35MMRestrictRect()Landroid/graphics/Rect;
    .locals 5

    .line 95
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMTopRegionHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 96
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMLeftRightRegionWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin35MMWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 97
    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenPreviewHeight:F

    mul-float/2addr v2, v0

    .line 98
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v0, v0

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenTopBarHeight:I

    float-to-int v2, v2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenWidth:I

    sub-int/2addr v4, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenPreviewHeight:F

    float-to-int p0, p0

    add-int/2addr v3, p0

    invoke-direct {v1, v0, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private calculate8MMRestrictRect()Landroid/graphics/Rect;
    .locals 5

    .line 74
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMTopRegionHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 75
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMLeftRightRegionWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mOrigin8MMWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 76
    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenPreviewHeight:F

    mul-float/2addr v2, v0

    .line 77
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v0, v0

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenTopBarHeight:I

    float-to-int v2, v2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenWidth:I

    sub-int/2addr v4, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->mScreenPreviewHeight:F

    float-to-int p0, p0

    add-int/2addr v3, p0

    invoke-direct {v1, v0, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private calculateOriginFrameWidth(I)I
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x3f100000    # 0.5625f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private defaultRestrictArea()Landroid/graphics/Rect;
    .locals 1

    .line 105
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public postRectRestrictionArea(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->defaultRestrictArea()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculate35MMRestrictRect()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculate16MMRestrictRect()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculate8MMRestrictRect()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->calculate2_35_1RestrictRect()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

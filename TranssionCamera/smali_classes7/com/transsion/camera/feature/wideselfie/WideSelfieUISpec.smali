.class Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;
.super Lcom/transsion/camera/feature/common/BaseUISpec;
.source "WideSelfieUISpec.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final TEXT_MAX_LINE_WIDTH_LAND_RATIO:F = 0.5833f

.field public static final TEXT_MAX_LINE_WIDTH_RATIO:F = 0.5833f

.field public static final THUMB_HEIGHT_LAND_RATIO:F = 0.2093f

.field public static final THUMB_HEIGHT_RATIO:F = 0.2083f

.field public static final THUMB_TOP_INTERVAL_LAND_RATIO:F = 0.1083f

.field public static final THUMB_TOP_INTERVAL_RATIO:F = 0.1909f


# instance fields
.field mArrowHeight:I

.field mArrowHeightLand:I

.field mArrowTopMargin:I

.field mArrowTopMarginLand:I

.field mArrowWidth:I

.field mArrowWidthLand:I

.field mBgBorder:Z

.field mBgBorderColor:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field public mRatio:F

.field mTextMaxLineWidth:I

.field public final mThumbHeightConfig:I

.field public final mThumbHeightConfigLand:I

.field public final mTopInterval:I

.field public final mTopIntervalHover:I

.field mTopIntervalLand:I

.field public vRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_top_interval_hover:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowTopMargin:I

    .line 67
    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowTopMarginLand:I

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidth:I

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowHeight:I

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_land_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidthLand:I

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_arrow_land_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowHeightLand:I

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_progressBarThumbHeight:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mThumbHeightConfig:I

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_progressBarThumbHeight_land:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mThumbHeightConfigLand:I

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_top_interval:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopInterval:I

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopIntervalHover:I

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_top_interval_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopIntervalLand:I

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->line_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->wideselfie_bg_border_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorderColor:I

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_wideselfie_preview_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_wideselfie_bg_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorder:Z

    return-void
.end method


# virtual methods
.method calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V
    .locals 5

    if-nez p1, :cond_0

    .line 89
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "calculateThumbnailSize previewSize is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    if-nez p2, :cond_1

    return-void

    .line 96
    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 97
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 99
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 100
    iput p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p3, v0, :cond_2

    if-eqz p3, :cond_2

    const/16 v0, 0xb4

    if-eq p3, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e554c98    # 0.2083f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    goto :goto_1

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e5652bd    # 0.2093f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 112
    :goto_1
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_4

    sub-int/2addr v2, v1

    .line 113
    iput v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    :cond_4
    const v2, 0x3f155326    # 0.5833f

    if-nez v0, :cond_5

    .line 117
    iget p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    mul-int v0, p1, p3

    div-int/2addr v0, p2

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    mul-int/lit8 v0, v0, 0x2

    .line 119
    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 120
    iput p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 122
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sub-int/2addr p1, v0

    shr-int/2addr p1, v1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const p3, 0x3e437b4a    # 0.1909f

    mul-float/2addr p1, p3

    iget p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTextMaxLineWidth:I

    goto :goto_3

    .line 127
    :cond_5
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    mul-int v3, p2, v0

    .line 128
    div-int/2addr v3, p1

    iput v3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 130
    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    mul-int/lit8 v3, v3, 0x2

    .line 131
    iput v3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    const/16 v3, 0x5a

    const v4, 0x3dddcc64    # 0.1083f

    if-ne p3, v3, :cond_6

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget-object p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v4

    iget v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_6
    const/16 v3, 0x10e

    if-ne p3, v3, :cond_7

    .line 136
    iget-object p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mRatio:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 140
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget p3, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    sub-int/2addr p2, p3

    shr-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTextMaxLineWidth:I

    :goto_3
    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.class public Lcom/transsion/camera/feature/common/BaseUISpec;
.super Ljava/lang/Object;
.source "BaseUISpec.java"


# static fields
.field public static final ARROW_HEIGHT_RATIO:F = 3.15f

.field public static final ARROW_HEIGHT_RATIO_FOLD_EXPANDED:F = 2.12f

.field public static final BORDER_WIDTH:I = 0x2

.field public static final MAXIMUM_VOLATILITY:F = 0.35f

.field public static final THUMBNAIL_HEIGHT_RATIO:I = 0x8

.field public static final WARNING_OFFSET:I = 0xf


# instance fields
.field public mArrowHeight:I

.field public mArrowPadding:I

.field public mArrowWarn:Z

.field public mArrowWidth:I

.field public mBgColor:I

.field public mBorder:Z

.field public mBorderColor:I

.field public mBorderHeight:I

.field public mCaptureThumbnail:Z

.field protected mContext:Landroid/content/Context;

.field public mDotted:Z

.field public mHRatio:F

.field public mLineColor:I

.field public mNotifyPadding:I

.field public mPreview4_3Height:I

.field protected mResources:Landroid/content/res/Resources;

.field public mSpecialRatio:Z

.field public mStartPoint:Landroid/graphics/Point;

.field public mSurfaceHeight:I

.field public mSurfaceWidth:I

.field public mTextHeight:I

.field public mThumbBgHeight:I

.field public mThumbBgWidth:I

.field public mThumbHeight:I

.field public mThumbWidth:I

.field public mThumbnailStartPoint:Landroid/graphics/Point;

.field public mTopBarHeight:I

.field public mVRatio:F

.field public mWarningOffset:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    .line 81
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    sub-int/2addr v0, v1

    .line 83
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->bridge_bg_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBgColor:I

    .line 87
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    .line 88
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->notify_text_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mTextHeight:I

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->notify_text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mNotifyPadding:I

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->arrow_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowPadding:I

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->arrow_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->arrow_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_burstpmk_preview_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_burstpmk_Arrow_Warn:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWarn:Z

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_burstpmk_Dotted:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mDotted:Z

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->display_burstpmk_Capture_Thumbnail:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mCaptureThumbnail:Z

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/common/utils/GlUtil;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderHeight:I

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->line_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$color;->horizontal_Line_Color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mLineColor:I

    return-void
.end method

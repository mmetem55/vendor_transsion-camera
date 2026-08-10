.class public Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;
.super Landroid/view/View;
.source "ProfessionalStereoWheelView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView;


# static fields
.field private static final DEFAULT_INTERVAL_FACTOR:F = 5.0f

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCenterIndex:I

.field private mCenterTextSize:F

.field private mComposeShader:Landroid/graphics/ComposeShader;

.field private mContentRectF:Landroid/graphics/RectF;

.field private mCursorSize:I

.field private mDrawablePaint:Landroid/graphics/Paint;

.field private mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

.field private mHighlightColor:I

.field private mHighlightMarkLinePaint:Landroid/graphics/Paint;

.field private mHighlightWidth:F

.field private mIndexChange:Z

.field private mIntervalDis:F

.field private mIntervalFactor:F

.field private mIntervalType:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

.field mIsScrolling:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelectedIndex:I

.field private mLeftLinearGradient:Landroid/graphics/LinearGradient;

.field private mMarkCount:I

.field private mMarkLineColor:I

.field private mMarkLineHeight:F

.field private mMarkLinePaint:Landroid/graphics/Paint;

.field private mMarkLineWidth:F

.field private mMarkTextColor:I

.field private mMarkTextPaint:Landroid/text/TextPaint;

.field private mMaxOverScrollDistance:F

.field private mMaxSelectableIndex:I

.field private mMinSelectableIndex:I

.field private mNormalTextSize:F

.field private mOffsetOfCursorAndText:F

.field private mOffsetOfTextAndMark:F

.field private mOriIntervalDis:F

.field private mRightLinearGradient:Landroid/graphics/LinearGradient;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mSmallDistance:Z

.field private mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

.field private mVibrator:Landroid/os/Vibrator;

.field private mViewScopeSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    const/4 p3, 0x0

    .line 47
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIndexChange:Z

    .line 48
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSmallDistance:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 52
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalFactor:F

    .line 80
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLastSelectedIndex:I

    const/high16 p1, -0x80000000

    .line 81
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMinSelectableIndex:I

    const p1, 0x7fffffff

    .line 82
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxSelectableIndex:I

    .line 84
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIsScrolling:Z

    .line 90
    sget-object p1, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_MAX_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalType:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    .line 176
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->refreshCenter()V

    return-void
.end method

.method private autoSettle()V
    .locals 4

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 428
    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    mul-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    sub-float/2addr v1, v2

    .line 429
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mScroller:Landroid/widget/OverScroller;

    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 431
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastSelectedIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLastSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCenterIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 432
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLastSelectedIndex:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    if-eq v0, v1, :cond_0

    .line 433
    iput v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLastSelectedIndex:I

    .line 434
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->vibrate()V

    :cond_0
    return-void
.end method

.method private drawToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 373
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 374
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 376
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private getContentRectWidth()F
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalType:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    sget-object v1, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_SMALL_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    if-ne v0, v1, :cond_0

    .line 382
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    const/high16 v0, 0x41200000    # 10.0f

    :goto_0
    mul-float/2addr p0, v0

    return p0

    .line 383
    :cond_0
    sget-object v1, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_MIDDLE_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    if-ne v0, v1, :cond_1

    .line 384
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 386
    :cond_1
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    return p0
.end method

.method private getSpaceCount()I
    .locals 1

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalType:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_SMALL_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 392
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_MIDDLE_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0
.end method

.method private onSelectedChange(I)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 364
    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 366
    aget-object p1, v0, p1

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;->onSeekBarValueChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private refreshCenter()V
    .locals 1

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->refreshCenter(I)V

    return-void
.end method

.method private refreshCenter(I)V
    .locals 1

    int-to-float p1, p1

    .line 466
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    .line 467
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 468
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->safeCenter(I)I

    move-result p1

    .line 469
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 472
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIndexChange:Z

    .line 474
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIsScrolling:Z

    if-eqz v0, :cond_1

    .line 475
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLastSelectedIndex:I

    .line 476
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->vibrate()V

    :cond_1
    return-void
.end method

.method private safeCenter(I)I
    .locals 1

    .line 457
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMinSelectableIndex:I

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    .line 459
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxSelectableIndex:I

    if-le p1, p0, :cond_1

    move p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method private show()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateScroll()V
    .locals 7

    .line 439
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 440
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    mul-float/2addr v0, v2

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    sub-float/2addr v0, v2

    .line 441
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mScroller:Landroid/widget/OverScroller;

    float-to-int v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v2

    move v2, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private vibrate()V
    .locals 0

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 418
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 421
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->refreshCenter()V

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/16 v0, 0x8

    .line 154
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getSelectedPosition()I
    .locals 0

    .line 535
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    return p0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 181
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_settings_layout_background:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_wheel_view_mark_line_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLineWidth:F

    .line 183
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_wheel_view_mark_line_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLineHeight:F

    .line 185
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_wheel_view_hightlight_line_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightWidth:F

    .line 186
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_highlight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightColor:I

    .line 187
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_normal:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextColor:I

    .line 188
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_mark_line:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLineColor:I

    .line 189
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_wheel_view_cursor_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCursorSize:I

    .line 190
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_wheel_view_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterTextSize:F

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mNormalTextSize:F

    .line 192
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_wheel_view_offset_of_cursor_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mOffsetOfCursorAndText:F

    .line 193
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_wheel_view_offset_of_text_mark:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mOffsetOfTextAndMark:F

    .line 195
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalFactor:F

    .line 197
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    .line 198
    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLineColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLineWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightMarkLinePaint:Landroid/graphics/Paint;

    .line 202
    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightMarkLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    .line 206
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightColor:I

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterTextSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 210
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mDrawablePaint:Landroid/graphics/Paint;

    .line 211
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mDrawablePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLineWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string p1, "sans-serif-condensed"

    const/4 v0, 0x0

    .line 214
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_wheel_view_space_offset:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mOriIntervalDis:F

    .line 218
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    .line 220
    new-instance p1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mScroller:Landroid/widget/OverScroller;

    .line 221
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mContentRectF:Landroid/graphics/RectF;

    .line 223
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

    .line 225
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->selectIndex(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 540
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 541
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 543
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 242
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mComposeShader:Landroid/graphics/ComposeShader;

    if-eqz v1, :cond_0

    .line 245
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 246
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mComposeShader:Landroid/graphics/ComposeShader;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLeftLinearGradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mRightLinearGradient:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_1

    .line 248
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 249
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLeftLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 250
    :cond_1
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mRightLinearGradient:Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 251
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 252
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mRightLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 256
    iput-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mComposeShader:Landroid/graphics/ComposeShader;

    .line 257
    iput-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLeftLinearGradient:Landroid/graphics/LinearGradient;

    .line 258
    iput-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mRightLinearGradient:Landroid/graphics/LinearGradient;

    .line 260
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mViewScopeSize:I

    sub-int v3, v1, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 263
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 264
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    iget v4, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mViewScopeSize:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 267
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    iget v4, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxSelectableIndex:I

    if-ne v3, v4, :cond_3

    .line 268
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mViewScopeSize:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 269
    :cond_3
    iget v4, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMinSelectableIndex:I

    if-ne v3, v4, :cond_4

    .line 270
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mViewScopeSize:I

    sub-int/2addr v2, v3

    :cond_4
    :goto_1
    move v9, v1

    .line 273
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCursorSize:I

    int-to-float v3, v1

    iget v4, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mOffsetOfCursorAndText:F

    add-float v10, v3, v4

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 274
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterTextSize:F

    add-float/2addr v1, v3

    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mOffsetOfTextAndMark:F

    add-float v11, v1, v3

    int-to-float v1, v2

    .line 275
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    mul-float/2addr v1, v3

    move v12, v1

    move v13, v2

    :goto_2
    if-ge v13, v9, :cond_c

    .line 278
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    if-lez v1, :cond_9

    if-ltz v13, :cond_9

    if-ge v13, v1, :cond_9

    iget-boolean v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSmallDistance:Z

    if-eqz v1, :cond_5

    rem-int/lit8 v1, v13, 0x2

    if-nez v1, :cond_9

    .line 279
    :cond_5
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItemsDrawables:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v13, :cond_7

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItemsDrawables:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 280
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItemsDrawables:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 281
    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->drawToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 282
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    if-ne v3, v13, :cond_6

    .line 283
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mDrawablePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_3

    .line 285
    :cond_6
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mDrawablePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 287
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v12, v3

    .line 288
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    sub-float v1, v10, v1

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mDrawablePaint:Landroid/graphics/Paint;

    .line 287
    invoke-virtual {v8, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 290
    :cond_7
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalType:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    sget-object v2, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_SMALL_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    if-eq v1, v2, :cond_9

    .line 291
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItems:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    .line 292
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    if-ne v1, v13, :cond_8

    .line 293
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 294
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterTextSize:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_4

    .line 296
    :cond_8
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 297
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mNormalTextSize:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_4
    const/4 v3, 0x0

    .line 299
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterTextSize:F

    add-float v6, v10, v1

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    move v5, v12

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_5
    if-ltz v13, :cond_b

    .line 306
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    if-ge v13, v1, :cond_b

    .line 309
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLineHeight:F

    add-float v5, v11, v1

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move v3, v11

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->getSpaceCount()I

    move-result v14

    .line 316
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    int-to-float v2, v14

    div-float v15, v1, v2

    .line 317
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq v13, v1, :cond_b

    const/4 v1, 0x0

    move v6, v1

    :goto_6
    if-ge v6, v14, :cond_b

    int-to-float v1, v6

    mul-float/2addr v1, v15

    add-float v4, v12, v1

    .line 321
    div-int/lit8 v1, v14, 0x2

    if-ne v6, v1, :cond_a

    iget-boolean v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSmallDistance:Z

    if-nez v1, :cond_a

    .line 322
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    .line 324
    :cond_a
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 326
    :goto_7
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLineHeight:F

    add-float v5, v11, v1

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move-object/from16 v16, v3

    move v3, v11

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v17, 0x1

    goto :goto_6

    .line 331
    :cond_b
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    add-float/2addr v12, v1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 335
    :cond_c
    iget v1, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v7, v1

    int-to-float v9, v7

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightMarkLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move v3, v11

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 338
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 339
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCursorSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v7, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 340
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCursorSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v7, v2

    int-to-float v2, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 341
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCursorSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 343
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mHighlightMarkLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 p1, 0x1

    .line 569
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIsScrolling:Z

    .line 571
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    .line 572
    iget p4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMinSelectableIndex:I

    int-to-float v0, p4

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    cmpg-float v0, p2, v0

    const/4 v3, 0x0

    if-gez v0, :cond_0

    :goto_0
    move p3, v3

    goto :goto_2

    :cond_0
    int-to-float p4, p4

    mul-float/2addr p4, v1

    sub-float/2addr p4, v2

    cmpg-float p4, p2, p4

    const/high16 v0, 0x40800000    # 4.0f

    if-gez p4, :cond_1

    :goto_1
    div-float/2addr p3, v0

    goto :goto_2

    .line 576
    :cond_1
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mContentRectF:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p4

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxSelectableIndex:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    mul-float/2addr v1, v2

    sub-float/2addr p4, v1

    cmpl-float p4, p2, p4

    if-lez p4, :cond_2

    goto :goto_0

    .line 579
    :cond_2
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mContentRectF:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p4

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxSelectableIndex:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    mul-float/2addr v1, v2

    sub-float/2addr p4, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    sub-float/2addr p4, v1

    cmpl-float p2, p2, p4

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    float-to-int p2, p3

    const/4 p3, 0x0

    .line 583
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->scrollBy(II)V

    .line 584
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->refreshCenter()V

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 350
    sget-object p2, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "currentScrollX : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mCenterIndex = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mLastSelectedIndex = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLastSelectedIndex:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLeftLinearGradient:Landroid/graphics/LinearGradient;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mRightLinearGradient:Landroid/graphics/LinearGradient;

    if-eqz p1, :cond_0

    .line 353
    new-instance p1, Landroid/graphics/ComposeShader;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLeftLinearGradient:Landroid/graphics/LinearGradient;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mRightLinearGradient:Landroid/graphics/LinearGradient;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3, p4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mComposeShader:Landroid/graphics/ComposeShader;

    .line 355
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIndexChange:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mLastSelectedIndex:I

    if-ne p1, p2, :cond_1

    .line 356
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->onSelectedChange(I)V

    const/4 p1, 0x0

    .line 357
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIndexChange:Z

    :cond_1
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 557
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->refreshCenter(I)V

    .line 558
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->autoSettle()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 234
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mContentRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    add-int/lit8 p3, p3, -0x1

    int-to-float p3, p3

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->getContentRectWidth()F

    move-result p4

    mul-float/2addr p3, p4

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 236
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mViewScopeSize:I

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mGestureDetectorCompat:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 404
    sget-object v2, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event.getAction() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 411
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;->onActionDown()V

    goto :goto_1

    .line 406
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIsScrolling:Z

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->autoSettle()V

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;->onActionUp()V

    move v0, v3

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 413
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    return v1
.end method

.method public selectIndex(I)V
    .locals 1

    .line 485
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIndexChange:Z

    .line 488
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    .line 489
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView$1;-><init>(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setItems(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItems:Ljava/util/List;

    goto :goto_0

    .line 511
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItemsDrawables:Ljava/util/List;

    if-nez v0, :cond_1

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItemsDrawables:Ljava/util/List;

    goto :goto_1

    .line 517
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 519
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_2

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItemsDrawables:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 523
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mItems:Ljava/util/List;

    const/4 p2, 0x0

    if-nez p1, :cond_3

    move p1, p2

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    if-lez p1, :cond_4

    .line 525
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMinSelectableIndex:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMinSelectableIndex:I

    .line 526
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxSelectableIndex:I

    .line 528
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mContentRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    mul-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 529
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMarkCount:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mCenterIndex:I

    .line 531
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setItems([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 501
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->setItems(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 503
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->setItems(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setSeekIntervalType(Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalType:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    return-void
.end method

.method public showIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;)Z
    .locals 3

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIfNeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v1, v0

    :cond_1
    if-eqz v1, :cond_3

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 110
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->updateValue(Ljava/lang/String;)V

    .line 111
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->show()V

    goto :goto_1

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->updateScroll()V

    :cond_3
    :goto_1
    return v1
.end method

.method public updateValue(Ljava/lang/String;)V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 129
    array-length v3, v0

    if-nez v3, :cond_1

    array-length v3, v2

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 133
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSmallDistance:Z

    .line 134
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalType:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    sget-object v4, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_SMALL_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 135
    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mOriIntervalDis:F

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    .line 136
    iput-boolean v5, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSmallDistance:Z

    goto :goto_0

    .line 137
    :cond_2
    sget-object v4, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_MIDDLE_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    if-ne v3, v4, :cond_3

    .line 138
    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mOriIntervalDis:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    .line 139
    iput-boolean v5, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mSmallDistance:Z

    goto :goto_0

    .line 141
    :cond_3
    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mOriIntervalDis:F

    iput v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    .line 143
    :goto_0
    sget-object v3, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateValue, mIntervalType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalType:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mMaxOverScrollDistance:F

    iget v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mIntervalDis:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->mViewScopeSize:I

    .line 146
    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->setItems([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->selectIndex(I)V

    return-void
.end method

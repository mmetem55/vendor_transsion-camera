.class public Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;
.super Landroid/view/View;
.source "DiscreteSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;,
        Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$DefaultNumericTransformer;,
        Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;,
        Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnSimpleProgressChangeListener;,
        Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMATTER:Ljava/lang/String; = "%d"

.field private static final DEFAULT_THUMB_COLOR:I = -0xff6978

.field private static final FOCUSED_STATE:I = 0x101009c

.field private static final INDICATOR_DELAY_FOR_TAPS:I = 0x96

.field private static final PRESSED_STATE:I = 0x10100a7

.field private static final PROGRESS_ANIMATION_DURATION:I = 0xfa

.field private static final SEPARATION_DP:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final isLollipopOrGreater:Z


# instance fields
.field private final mAddedTouchBounds:I

.field private mAllowTrackClick:Z

.field private mAnimationPosition:F

.field private mAnimationTarget:I

.field private mDownX:F

.field private mDragOffset:I

.field private mFloaterListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private volatile mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

.field private mIndicatorFormatter:Ljava/lang/String;

.field private mIndicatorPopupEnabled:Z

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mKeyProgressIncrement:I

.field private mMax:I

.field private mMin:I

.field private mMirrorForRtl:Z

.field private mNumericTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;

.field private mPositionAnimator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;

.field private mPublicChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;

.field private mRipple:Landroid/graphics/drawable/Drawable;

.field private mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

.field private mScrubberHeight:I

.field private mShowIndicatorRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

.field private mTouchSlop:F

.field private mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

.field private mTrackBase:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

.field private mTrackBaseHeight:I

.field private mTrackHeight:I

.field private mValue:I

.field private mValueBase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 132
    sput-boolean v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isLollipopOrGreater:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 185
    sget v0, Lcom/transsion/camera/feature/arcore/R$attr;->discreteSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v0, p0

    .line 189
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 156
    iput v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    const/4 v2, 0x0

    .line 157
    iput-boolean v2, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    .line 158
    iput-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    .line 159
    iput-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    .line 169
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    .line 170
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 1026
    new-instance v3, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$2;

    invoke-direct {v3, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$2;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;)V

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    .line 1049
    new-instance v3, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$3;

    invoke-direct {v3, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$3;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;)V

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mFloaterListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 191
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 193
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTouchSlop:F

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 196
    sget-object v4, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar:[I

    sget v5, Lcom/transsion/camera/feature/arcore/R$style;->Widget_DiscreteSeekBar:I

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual {v7, v8, v4, v9, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 201
    sget v5, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_mirrorForRtl:I

    iget-boolean v6, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    .line 202
    sget v5, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_allowTrackClickToDrag:I

    iget-boolean v6, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    .line 203
    sget v5, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_indicatorPopupEnabled:I

    iget-boolean v6, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    .line 204
    sget v5, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_trackHeight:I

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackHeight:I

    .line 205
    sget v5, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_trackBaseHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackBaseHeight:I

    .line 206
    sget v5, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_scrubberHeight:I

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubberHeight:I

    .line 207
    sget v5, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_thumbSize:I

    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 208
    sget v6, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_bg_thumbSize:I

    invoke-virtual {v4, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 209
    sget v6, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_indicatorSeparation:I

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float/2addr v3, v10

    float-to-int v3, v3

    invoke-virtual {v4, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    mul-int/lit8 v6, v5, 0x3

    .line 212
    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v5

    .line 213
    div-int/lit8 v6, v6, 0x2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 215
    sget v10, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_max:I

    .line 216
    sget v11, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_min:I

    .line 217
    sget v12, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_value:I

    .line 218
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 220
    invoke-virtual {v4, v10, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v15

    const/4 v1, 0x5

    const/16 v2, 0x64

    if-eqz v15, :cond_1

    .line 221
    iget v15, v13, Landroid/util/TypedValue;->type:I

    if-ne v15, v1, :cond_0

    .line 222
    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 227
    :cond_1
    :goto_0
    invoke-virtual {v4, v11, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 228
    iget v10, v13, Landroid/util/TypedValue;->type:I

    if-ne v10, v1, :cond_2

    const/4 v10, 0x0

    .line 229
    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v11, v17

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 231
    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .line 234
    :goto_1
    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 235
    iget v10, v13, Landroid/util/TypedValue;->type:I

    if-ne v10, v1, :cond_4

    .line 236
    iget v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValueBase:I

    invoke-virtual {v4, v12, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValueBase:I

    goto :goto_2

    .line 238
    :cond_4
    iget v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValueBase:I

    invoke-virtual {v4, v12, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValueBase:I

    .line 242
    :cond_5
    :goto_2
    iput v11, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    add-int/lit8 v1, v11, 0x1

    .line 243
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    .line 244
    iget v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValueBase:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValue:I

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 247
    sget v1, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_indicatorFormatter:I

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    .line 249
    sget v1, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_trackColor:I

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 250
    sget v2, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_trackStartColor:I

    const/4 v10, 0x0

    invoke-virtual {v4, v2, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 251
    sget v11, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_trackEndColor:I

    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 252
    sget v12, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_progressColor:I

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 253
    sget v13, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_thumbColor:I

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 254
    sget v15, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_bg_thumbColor:I

    invoke-virtual {v4, v15, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 255
    sget v10, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_rippleColor:I

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v18

    if-nez v18, :cond_7

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v16, v4

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto :goto_4

    .line 258
    :cond_7
    :goto_3
    new-instance v10, Landroid/content/res/ColorStateList;

    const/4 v7, 0x1

    new-array v8, v7, [[I

    const/4 v7, 0x0

    new-array v9, v7, [I

    aput-object v9, v8, v7

    move-object/from16 v16, v4

    const/4 v9, 0x1

    new-array v4, v9, [I

    const v17, -0xbbbbbc

    aput v17, v4, v7

    invoke-direct {v10, v8, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :goto_4
    if-nez v18, :cond_8

    if-nez v1, :cond_9

    .line 261
    :cond_8
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v4, v9, [[I

    new-array v8, v7, [I

    aput-object v8, v4, v7

    new-array v8, v9, [I

    const v17, -0x777778

    aput v17, v8, v7

    invoke-direct {v1, v4, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :cond_9
    if-nez v18, :cond_a

    if-nez v12, :cond_b

    .line 264
    :cond_a
    new-instance v12, Landroid/content/res/ColorStateList;

    new-array v4, v9, [[I

    new-array v8, v7, [I

    aput-object v8, v4, v7

    new-array v8, v9, [I

    const v9, -0xff6978

    aput v9, v8, v7

    invoke-direct {v12, v4, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 267
    :cond_b
    invoke-static {v10}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompat;->getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    .line 268
    sget-boolean v7, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isLollipopOrGreater:Z

    if-eqz v7, :cond_c

    .line 269
    invoke-static {v0, v4}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 271
    :cond_c
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 274
    :goto_5
    new-instance v4, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-direct {v4, v1, v2, v11}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;-><init>(Landroid/content/res/ColorStateList;II)V

    .line 276
    iput-object v4, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    .line 277
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 279
    new-instance v2, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    iput-object v2, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackBase:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    .line 280
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 282
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-direct {v1, v12}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 283
    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    .line 284
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 286
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    const/4 v12, 0x0

    move-object v10, v1

    move-object v11, v13

    move v13, v5

    invoke-direct/range {v10 .. v15}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;-><init>(Landroid/content/res/ColorStateList;IIII)V

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    .line 288
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 289
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v4, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v7, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-nez v18, :cond_d

    .line 293
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    iget v2, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    invoke-direct {v0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v6, v5

    add-int v12, v6, v3

    move-object v6, v1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    .line 295
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mFloaterListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->setListener(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V

    .line 297
    :cond_d
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 299
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$DefaultNumericTransformer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$DefaultNumericTransformer;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setNumericTransformer(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->showFloater()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    return-object p0
.end method

.method private attemptClaimDrag()V
    .locals 1

    .line 1020
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1022
    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private convertValueToMessage(I)Ljava/lang/String;
    .locals 5

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "%d"

    .line 750
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 759
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 751
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 752
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    .line 753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    goto :goto_2

    .line 755
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 757
    :goto_2
    new-instance v1, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    .line 761
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAnimatedProgress()I
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->getAnimationTarget()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValue:I

    :goto_0
    return p0
.end method

.method private getAnimationTarget()I
    .locals 0

    .line 904
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAnimationTarget:I

    return p0
.end method

.method private hideFloater()V
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1043
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->dismiss()V

    const/4 v0, 0x0

    .line 1045
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->notifyBubble(Z)V

    :cond_0
    return-void
.end method

.method private isDragging()Z
    .locals 0

    .line 834
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIsDragging:Z

    return p0
.end method

.method private isScrollingContainer()Z
    .locals 0

    .line 802
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompat;->isInScrollingContainer(Landroid/view/ViewParent;)Z

    move-result p0

    return p0
.end method

.method private notifyBubble(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->onShowBubble()V

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->onHideBubble()V

    :goto_0
    return-void
.end method

.method private notifyProgress(IZ)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPublicChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;->onProgressChanged(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;IZ)V

    .line 582
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->onValueChanged(I)V

    return-void
.end method

.method private setHotspot(FF)V
    .locals 0

    .line 1011
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method private setProgress(IZ)V
    .locals 2

    .line 446
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 447
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPositionAnimator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;->cancel()V

    .line 451
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValue:I

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->notifyProgress(IZ)V

    .line 453
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    .line 454
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateThumbPosFromCurrentProgress()V

    return-void
.end method

.method private showFloater()V
    .locals 2

    .line 1034
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->animateToPressed()V

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->showIndicator(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    .line 1037
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->notifyBubble(Z)V

    :cond_0
    return-void
.end method

.method private startDragging(Landroid/view/MotionEvent;Z)Z
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 807
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 809
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIsDragging:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 811
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 814
    iput-boolean v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIsDragging:Z

    .line 815
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mDragOffset:I

    .line 816
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    .line 818
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 819
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, p2

    neg-int p2, p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 821
    :cond_0
    iget-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIsDragging:Z

    if-eqz p2, :cond_1

    .line 822
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 823
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->attemptClaimDrag()V

    .line 824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setHotspot(FF)V

    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mDragOffset:I

    .line 826
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPublicChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz p1, :cond_1

    .line 827
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;->onStartTrackingTouch(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;)V

    .line 830
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIsDragging:Z

    return p0
.end method

.method private stopDragging()V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPublicChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v0, :cond_0

    .line 839
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;->onStopTrackingTouch(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;)V

    :cond_0
    const/4 v0, 0x0

    .line 841
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIsDragging:Z

    .line 842
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private updateDragging(Landroid/view/MotionEvent;)V
    .locals 5

    .line 919
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setHotspot(FF)V

    .line 920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 921
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 923
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 924
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mDragOffset:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v0

    .line 925
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 926
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    if-ge p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    if-le p1, v3, :cond_1

    move p1, v3

    :cond_1
    :goto_0
    sub-int/2addr v3, v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    .line 935
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 938
    :cond_2
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    int-to-float v0, v1

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    .line 939
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setProgress(IZ)V

    return-void
.end method

.method private updateFromDrawableState()V
    .locals 8

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 709
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget v5, v0, v2

    const v6, 0x101009c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    move v3, v7

    goto :goto_1

    :cond_0
    const v6, 0x10100a7

    if-ne v5, v6, :cond_1

    move v4, v7

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    if-eqz v1, :cond_4

    .line 719
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 720
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 722
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->hideFloater()V

    .line 724
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setState([I)Z

    .line 725
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setState([I)Z

    .line 726
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setState([I)Z

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method private updateIndicatorSizes()V
    .locals 3

    .line 568
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mNumericTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;->useStringTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mNumericTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;->transformToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->updateSizes(Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mNumericTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;->transform(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->updateSizes(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateKeyboardRange()V
    .locals 3

    .line 624
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    .line 625
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    int-to-float v0, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v0, v2

    .line 628
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    :cond_1
    return-void
.end method

.method private updateProgressFromAnimation(F)V
    .locals 5

    .line 943
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 945
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 946
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 947
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    .line 949
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 952
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 953
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValue:I

    const/4 v1, 0x1

    .line 954
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->notifyProgress(IZ)V

    .line 955
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    :cond_0
    int-to-float v0, v3

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 959
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValueBase:I

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-int v0, v2

    .line 962
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateThumbPos(II)V

    return-void
.end method

.method private updateProgressMessage(I)V
    .locals 2

    .line 731
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mNumericTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;->useStringTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mNumericTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;->transformToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->setValue(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mNumericTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;->transform(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->setValue(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateThumbPos(II)V
    .locals 7

    .line 984
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 985
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 986
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 987
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 989
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v2

    .line 990
    div-int/lit8 v3, v2, 0x2

    .line 991
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 992
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, p2, v6, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 993
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    add-int/2addr v0, v3

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 994
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    add-int/2addr v1, v3

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 995
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 997
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->move(I)V

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackBase:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    add-int/2addr p1, v3

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackBaseHeight:I

    div-int/lit8 v1, v1, 0x8

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1001
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackBase:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackBaseHeight:I

    div-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1002
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 1003
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v0, p1

    neg-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 1004
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1005
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v1, v2, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1006
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateThumbPosFromCurrentProgress()V
    .locals 5

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 967
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 968
    div-int/lit8 v0, v0, 0x2

    .line 971
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 972
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    .line 975
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValue:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    sub-int v4, v2, v1

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 976
    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValueBase:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v4, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v2

    float-to-int v1, v4

    .line 980
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateThumbPos(II)V

    return-void
.end method


# virtual methods
.method animateSetProgress(I)V
    .locals 2

    .line 878
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->getAnimationPosition()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    .line 880
    :goto_0
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    if-ge p1, v1, :cond_1

    :goto_1
    move p1, v1

    goto :goto_2

    .line 882
    :cond_1
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    if-le p1, v1, :cond_2

    goto :goto_1

    .line 887
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPositionAnimator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;

    if-eqz v1, :cond_3

    .line 888
    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;->cancel()V

    .line 891
    :cond_3
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAnimationTarget:I

    int-to-float p1, p1

    .line 892
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;)V

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;->create(FFLcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPositionAnimator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;

    const/16 v0, 0xfa

    .line 899
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;->setDuration(I)V

    .line 900
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPositionAnimator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;->start()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 701
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 702
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateFromDrawableState()V

    return-void
.end method

.method getAnimationPosition()F
    .locals 0

    .line 914
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAnimationPosition:F

    return p0
.end method

.method public getMax()I
    .locals 0

    .line 405
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    return p0
.end method

.method public getMin()I
    .locals 0

    .line 430
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    return p0
.end method

.method public getNumericTransformer()Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mNumericTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    .line 463
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValue:I

    return p0
.end method

.method isAnimationRunning()Z
    .locals 0

    .line 874
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPositionAnimator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRtl()Z
    .locals 2

    .line 1072
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1064
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1065
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1066
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->dismissComplete()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 687
    :try_start_0
    sget-boolean v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isLollipopOrGreater:Z

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 690
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 693
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValueBase:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    if-eq v0, v1, :cond_1

    .line 694
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackBase:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onHideBubble()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 849
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 850
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->getAnimatedProgress()I

    move-result v0

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_0

    goto :goto_1

    .line 859
    :cond_0
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 860
    :cond_1
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->animateSetProgress(I)V

    goto :goto_0

    .line 854
    :cond_2
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    if-gt v0, v3, :cond_3

    goto :goto_0

    .line 855
    :cond_3
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->animateSetProgress(I)V

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    .line 865
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 643
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 646
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 647
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->dismissComplete()V

    .line 649
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateFromDrawableState()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 635
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 636
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 637
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 638
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1092
    :cond_0
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;

    .line 1093
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;->access$500(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setMin(I)V

    .line 1094
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;->access$400(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setMax(I)V

    .line 1095
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;->access$300(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setProgress(IZ)V

    .line 1096
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1088
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1077
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1078
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;-><init>(Landroid/os/Parcelable;)V

    .line 1079
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->getProgress()I

    move-result v0

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;->access$302(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;I)I

    .line 1080
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;->access$402(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;I)I

    .line 1081
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    invoke-static {v1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;->access$502(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$CustomState;I)I

    return-object v1
.end method

.method protected onShowBubble()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 660
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 661
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result p1

    .line 662
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->getIntrinsicHeight()I

    move-result p2

    .line 663
    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 664
    div-int/lit8 p4, p1, 0x2

    .line 665
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p3

    .line 666
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    .line 668
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    sub-int p2, v2, p2

    add-int v4, v0, p1

    invoke-virtual {v3, v0, p2, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 669
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackHeight:I

    const/4 v3, 0x2

    div-int/2addr p2, v3

    const/4 v4, 0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 670
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    add-int v5, v0, p4

    sub-int/2addr v2, p4

    sub-int v6, v2, p2

    .line 671
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, p4

    sub-int/2addr v7, v1

    sub-int/2addr v7, p3

    add-int/2addr p2, v2

    .line 670
    invoke-virtual {v4, v5, v6, v7, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p2, v1

    sub-int/2addr p2, p3

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    .line 673
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValueBase:I

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    iget p4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    sub-int/2addr p4, p3

    int-to-float p3, p4

    div-float/2addr p1, p3

    int-to-float p2, p2

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 675
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackBase:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    add-int/2addr p1, v5

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrackBaseHeight:I

    div-int/lit8 p4, p3, 0x8

    sub-int p4, p1, p4

    div-int/lit8 v0, p3, 0x2

    sub-int v0, v2, v0

    div-int/lit8 v1, p3, 0x8

    add-int/2addr p1, v1

    div-int/2addr p3, v3

    add-int/2addr p3, v2

    invoke-virtual {p2, p4, v0, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 677
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubberHeight:I

    div-int/2addr p1, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 678
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    sub-int p3, v2, p1

    add-int/2addr v2, p1

    invoke-virtual {p2, v5, p3, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 682
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateThumbPosFromCurrentProgress()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 766
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 769
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 795
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->stopDragging()V

    goto :goto_0

    .line 778
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 781
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 782
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mDownX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTouchSlop:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 783
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    goto :goto_0

    .line 788
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    if-eqz v0, :cond_5

    .line 789
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    .line 790
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    .line 792
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->stopDragging()V

    goto :goto_0

    .line 771
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mDownX:F

    .line 772
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPublicChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v0, :cond_7

    .line 773
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;->onDown()V

    .line 775
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->isScrollingContainer()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    :cond_8
    :goto_0
    return v2
.end method

.method protected onValueChanged(I)V
    .locals 0

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 655
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method setAnimationPosition(F)V
    .locals 2

    .line 908
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mAnimationPosition:F

    .line 909
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    int-to-float v1, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 910
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateProgressFromAnimation(F)V

    return-void
.end method

.method public setIndicatorFormatter(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    .line 353
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    return-void
.end method

.method public setIndicatorPopupEnabled(Z)V
    .locals 0

    .line 564
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 393
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    if-ne v0, p1, :cond_0

    return-void

    .line 394
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    .line 395
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 396
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setMin(I)V

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 401
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateIndicatorSizes()V

    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 421
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    if-ne v0, p1, :cond_0

    return-void

    .line 422
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMin:I

    .line 423
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mMax:I

    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 424
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setMax(I)V

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateKeyboardRange()V

    return-void
.end method

.method public setNumericTransformer(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$DefaultNumericTransformer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$DefaultNumericTransformer;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$1;)V

    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mNumericTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;

    .line 365
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateIndicatorSizes()V

    .line 366
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    return-void
.end method

.method public setOnProgressChangeListener(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mPublicChangeListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$OnProgressChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 442
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setProgress(IZ)V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 5

    .line 529
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompat;->setRippleColor(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setScrubberColor(I)V
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setScrubberColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setThumbColor(II)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->setColors(II)V

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;I)V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 501
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->setColors(II)V

    return-void
.end method

.method public setThumbColor([D)V
    .locals 4

    const/4 v0, 0x0

    .line 320
    aget-wide v0, p1, v0

    double-to-int v0, v0

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    double-to-int v1, v1

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    double-to-int p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->toHex(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->setColor(I)V

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mIndicator:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-virtual {p0, p1, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->setColors(II)V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTrackColor(II)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->setStartColor(I)V

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->setEndColor(I)V

    return-void
.end method

.method public setTrackColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTrackColor([D[D)V
    .locals 7

    const/4 v0, 0x0

    .line 310
    aget-wide v1, p1, v0

    double-to-int v1, v1

    const/4 v2, 0x1

    aget-wide v3, p1, v2

    double-to-int v3, v3

    const/4 v4, 0x2

    aget-wide v5, p1, v4

    double-to-int p1, v5

    invoke-virtual {p0, v1, v3, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->toHex(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 312
    aget-wide v0, p2, v0

    double-to-int v0, v0

    aget-wide v1, p2, v2

    double-to-int v1, v1

    aget-wide v2, p2, v4

    double-to-int p2, v2

    invoke-virtual {p0, v0, v1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->toHex(III)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->setStartColor(I)V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->setEndColor(I)V

    return-void
.end method

.method public to2Hex(I)Ljava/lang/String;
    .locals 1

    .line 336
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 337
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public toHex(III)Ljava/lang/String;
    .locals 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->to2Hex(I)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->to2Hex(I)Ljava/lang/String;

    move-result-object p2

    .line 329
    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->to2Hex(I)Ljava/lang/String;

    move-result-object p0

    .line 330
    sget-object p3, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "red="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--hg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--hb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mThumb:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mTrack:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mScrubber:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

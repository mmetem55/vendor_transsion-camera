.class public Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
.super Landroid/widget/FrameLayout;
.source "LetterSelectorLayout.java"

# interfaces
.implements Lio/github/inflationx/calligraphy3/HasTypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;,
        Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    }
.end annotation


# static fields
.field public static final LETTER_TOUCH_ACTION_DOWN:I = 0x1

.field public static final LETTER_TOUCH_ACTION_UP:I = 0x2

.field public static final LETTER_TOUCH_MOVE:I = 0x3

.field private static final SHOW_FROM_SCALE:F = 0.6f

.field private static final SHOW_TO_ALPHA:I = 0xff

.field private static final SHOW_TO_SCALE:F = 1.0f

.field private static final SPECIAL_LETTERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final mHeart:Ljava/lang/String; = "\u2606"


# instance fields
.field private alignRight:Z

.field private alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

.field animationInterpolator:Landroid/view/animation/Interpolator;

.field private duration:J

.field private indicatorColor:I

.field private final indicatorLetterPaint:Landroid/graphics/Paint;

.field private final indicatorPaint:Landroid/graphics/Paint;

.field private isLeft:Z

.field private letterIndicatorBitmap:Landroid/graphics/Bitmap;

.field private letterIndicatorBitmapEnable:Z

.field private letterIndicatorBitmapWidth:I

.field private letterIndicatorColor:I

.field private letterIndicatorMinDurationTime:J

.field private letterIndicatorRadius:I

.field private letterIndicatorSize:F

.field private letterIndicatorStart:I

.field private letterMaxSize:F

.field private letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

.field private letterSize:F

.field private letterTouchAbleWidth:F

.field private final mAllLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlpha:I

.field private final mArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/RectF;",
            "Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapHeartBubble:Landroid/graphics/Bitmap;

.field private mBitmapHeartLetter:Landroid/graphics/Bitmap;

.field private mBubbleHideDelayTime:I

.field private mBubblePaddingStart:I

.field private final mChangelessLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableColor:I

.field private mEnableColor:I

.field private final mExtraRectFBottom:Landroid/graphics/RectF;

.field private final mExtraRectFTop:Landroid/graphics/RectF;

.field private mHeight:I

.field private mHideAlphaAnimation:Landroid/animation/ValueAnimator;

.field private mHideScaleAnimation:Landroid/animation/ValueAnimator;

.field private mHideScaleRunnable:Ljava/lang/Runnable;

.field private mIsOverUnits:Z

.field private mIsVerticalCentre:Z

.field private final mLetterBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelHeight:F

.field private mPanelWidth:I

.field private final mRectFBubble:Landroid/graphics/RectF;

.field private final mRectFClip:Landroid/graphics/RectF;

.field private final mRectFList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final mRectFTotal:Landroid/graphics/RectF;

.field private mScale:F

.field private mSelectedLetter:Ljava/lang/String;

.field private mSelectedLetterPosition:I

.field private mSelectedRectIndex:I

.field private mSelectorPaddingBottom:I

.field private mSelectorPaddingStart:I

.field private mSelectorPaddingStartOffset:I

.field private mSelectorPaddingTop:I

.field private mShowAnimation:Landroid/animation/ValueAnimator;

.field private mShowAnimationCancel:Z

.field private mTouched:Z

.field private mWidth:I

.field private selectedLetterColor:I

.field private final selectedLetterPaint:Landroid/graphics/Paint;

.field private selectedLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showSelector:Z

.field private topAndBottomClickableEnable:Z

.field private touchSlotEnable:Z

.field touching:Z

.field private final txtAnimationPaint:Landroid/graphics/Paint;

.field private final txtMaxPaint:Landroid/graphics/Paint;

.field private final txtPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\u2606"

    const-string v1, "#"

    const-string v2, "\u2026"

    const-string v3, "\u2664"

    const-string v4, "\u2606"

    const-string v5, "\u039b"

    .line 437
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->SPECIAL_LETTERS:Ljava/util/List;

    .line 463
    const-class v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 30

    move-object/from16 v0, p0

    .line 402
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 414
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->animationInterpolator:Landroid/view/animation/Interpolator;

    .line 416
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 417
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    .line 418
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    .line 419
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 420
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 421
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    const-wide/16 v3, 0xc8

    .line 427
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->duration:J

    const-wide/16 v3, 0x3e8

    .line 428
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorMinDurationTime:J

    const/4 v1, 0x0

    .line 430
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    .line 431
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    .line 436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    const-string v4, "A"

    const-string v5, "B"

    const-string v6, "C"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "G"

    const-string v11, "H"

    const-string v12, "I"

    const-string v13, "J"

    const-string v14, "K"

    const-string v15, "L"

    const-string v16, "M"

    const-string v17, "N"

    const-string v18, "O"

    const-string v19, "P"

    const-string v20, "Q"

    const-string v21, "R"

    const-string v22, "S"

    const-string v23, "T"

    const-string v24, "U"

    const-string v25, "V"

    const-string v26, "W"

    const-string v27, "X"

    const-string v28, "Y"

    const-string v29, "Z"

    .line 438
    filled-new-array/range {v4 .. v29}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;

    const/4 v3, 0x0

    .line 440
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterTouchAbleWidth:F

    const v3, -0xff4d13

    .line 450
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    const/4 v3, -0x1

    .line 451
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    const v4, -0x858586

    .line 452
    iput v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    .line 454
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    .line 458
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 460
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchSlotEnable:Z

    .line 462
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    .line 465
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    .line 466
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    .line 467
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    .line 468
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    .line 471
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    .line 473
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    .line 484
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    const/16 v2, 0x3e8

    .line 485
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    .line 1011
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 30

    move-object/from16 v0, p0

    .line 397
    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 414
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->animationInterpolator:Landroid/view/animation/Interpolator;

    .line 416
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 417
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    .line 418
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    .line 419
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 420
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 421
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    const-wide/16 v3, 0xc8

    .line 427
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->duration:J

    const-wide/16 v3, 0x3e8

    .line 428
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorMinDurationTime:J

    const/4 v1, 0x0

    .line 430
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    .line 431
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    .line 436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    const-string v4, "A"

    const-string v5, "B"

    const-string v6, "C"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "G"

    const-string v11, "H"

    const-string v12, "I"

    const-string v13, "J"

    const-string v14, "K"

    const-string v15, "L"

    const-string v16, "M"

    const-string v17, "N"

    const-string v18, "O"

    const-string v19, "P"

    const-string v20, "Q"

    const-string v21, "R"

    const-string v22, "S"

    const-string v23, "T"

    const-string v24, "U"

    const-string v25, "V"

    const-string v26, "W"

    const-string v27, "X"

    const-string v28, "Y"

    const-string v29, "Z"

    .line 438
    filled-new-array/range {v4 .. v29}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;

    const/4 v3, 0x0

    .line 440
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterTouchAbleWidth:F

    const v3, -0xff4d13

    .line 450
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    const/4 v3, -0x1

    .line 451
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    const v4, -0x858586

    .line 452
    iput v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    .line 454
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    .line 458
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 460
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchSlotEnable:Z

    .line 462
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    .line 465
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    .line 466
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    .line 467
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    .line 468
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    .line 471
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    .line 473
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    .line 484
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    const/16 v2, 0x3e8

    .line 485
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    .line 1011
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30

    move-object/from16 v0, p0

    .line 392
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 414
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->animationInterpolator:Landroid/view/animation/Interpolator;

    .line 416
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 417
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    .line 418
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    .line 419
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 420
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 421
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    const-wide/16 v3, 0xc8

    .line 427
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->duration:J

    const-wide/16 v3, 0x3e8

    .line 428
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorMinDurationTime:J

    const/4 v1, 0x0

    .line 430
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    .line 431
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    .line 436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    const-string v4, "A"

    const-string v5, "B"

    const-string v6, "C"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "G"

    const-string v11, "H"

    const-string v12, "I"

    const-string v13, "J"

    const-string v14, "K"

    const-string v15, "L"

    const-string v16, "M"

    const-string v17, "N"

    const-string v18, "O"

    const-string v19, "P"

    const-string v20, "Q"

    const-string v21, "R"

    const-string v22, "S"

    const-string v23, "T"

    const-string v24, "U"

    const-string v25, "V"

    const-string v26, "W"

    const-string v27, "X"

    const-string v28, "Y"

    const-string v29, "Z"

    .line 438
    filled-new-array/range {v4 .. v29}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;

    const/4 v3, 0x0

    .line 440
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterTouchAbleWidth:F

    const v3, -0xff4d13

    .line 450
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    const/4 v3, -0x1

    .line 451
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    const v4, -0x858586

    .line 452
    iput v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    .line 454
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    .line 458
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 460
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchSlotEnable:Z

    .line 462
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    .line 465
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    .line 466
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    .line 467
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    .line 468
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    .line 471
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    .line 473
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    .line 484
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    const/16 v2, 0x3e8

    .line 485
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    .line 1011
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mDisableColor:I

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    return p1
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mDisableColor:I

    return p1
.end method

.method static synthetic access$1102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterTouchAbleWidth:F

    return p1
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    return p0
.end method

.method static synthetic access$1202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    return p1
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    return p0
.end method

.method static synthetic access$1302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->updateFontHeight()V

    return-void
.end method

.method static synthetic access$2002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    return p1
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorStart:I

    return p1
.end method

.method static synthetic access$2102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    return p1
.end method

.method static synthetic access$2200(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorRadius:I

    return p1
.end method

.method static synthetic access$2402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorMinDurationTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorMeasure()V

    return-void
.end method

.method static synthetic access$2602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    return p1
.end method

.method static synthetic access$2702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetters:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapWidth:I

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartBubble:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapEnable:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->duration:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3400()Ljava/util/List;
    .locals 1

    .line 50
    sget-object v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->SPECIAL_LETTERS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector(Z)V

    return-void
.end method

.method static synthetic access$3802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchSlotEnable:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAlpha:I

    return p1
.end method

.method static synthetic access$4402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F

    return p1
.end method

.method static synthetic access$4500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimationCancel:Z

    return p0
.end method

.method static synthetic access$4502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimationCancel:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    return p0
.end method

.method static synthetic access$4602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->startHideAnimation()V

    return-void
.end method

.method static synthetic access$502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeight:F

    return p1
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    return-object p1
.end method

.method static synthetic access$702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingTop:I

    return p1
.end method

.method static synthetic access$802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    return p1
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStart:I

    return p1
.end method

.method private cancelAnimation()V
    .locals 2

    .line 969
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 980
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 981
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    return-void
.end method

.method private checkLayoutDirection()V
    .locals 4

    .line 589
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 590
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    if-nez v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    return-void
.end method

.method private dpToPx(I)I
    .locals 1

    int-to-float p1, p1

    .line 407
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private drawLetterIndicator(Landroid/graphics/Canvas;)V
    .locals 6

    .line 815
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 820
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 821
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 822
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 824
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapEnable:Z

    if-eqz v0, :cond_1

    .line 825
    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 826
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 831
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 832
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 833
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubblePaddingStart:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    div-float/2addr v1, v0

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 835
    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 836
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    const-string v2, "\u2606"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartBubble:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 837
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartBubble:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 838
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartBubble:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 837
    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 840
    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 841
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 840
    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 843
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 845
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_3
    return-void
.end method

.method private getTextHeightOffset(Landroid/graphics/Paint;)F
    .locals 1

    .line 751
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 752
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    neg-float p0, v0

    .line 754
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    add-float/2addr p0, p1

    return p0
.end method

.method private handleMoveTouchLetter(Landroid/graphics/RectF;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1228
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1229
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    if-eqz v1, :cond_4

    .line 1232
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1233
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    move v6, v3

    move v5, v4

    :goto_0
    add-int v7, v4, v1

    if-ge v5, v7, :cond_2

    if-ge v6, v1, :cond_1

    if-ge v5, v2, :cond_1

    .line 1239
    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-ne p1, v4, :cond_4

    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_4

    .line 1246
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_1
    add-int v5, v1, v0

    if-ge v4, v5, :cond_4

    if-ge v3, v1, :cond_3

    if-ge v4, v2, :cond_3

    .line 1250
    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1256
    :cond_4
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    .line 1258
    iget-boolean p1, p2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    .line 1259
    invoke-direct {p0, p2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleTouchedLetter(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;I)V

    .line 1260
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->startShowAnimation()V

    :cond_5
    return-void
.end method

.method private handleOverUnitsPst(Ljava/lang/String;I)V
    .locals 6

    .line 1171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1178
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v4, :cond_2

    goto :goto_0

    .line 1182
    :cond_2
    iget-object v4, v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letter:Ljava/lang/String;

    .line 1183
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    return-void

    .line 1195
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1196
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1197
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1198
    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    if-ge v4, p2, :cond_6

    sub-int/2addr v1, v3

    move p2, v1

    :goto_2
    if-ltz p1, :cond_5

    if-ge p1, v0, :cond_5

    if-ltz p2, :cond_5

    .line 1202
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1207
    :cond_5
    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    goto :goto_4

    :cond_6
    move p2, v2

    :goto_3
    if-ge p2, v1, :cond_7

    if-ge p1, v0, :cond_7

    .line 1212
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1217
    :cond_7
    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    :goto_4
    return-void
.end method

.method private handleTouchUpLetter()V
    .locals 4

    .line 1109
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1110
    invoke-interface {v0, v2, v1, v3, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->onTouchLetter(Ljava/lang/String;IIZ)V

    .line 1112
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    return-void
.end method

.method private handleTouchedLetter(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1269
    :cond_0
    iget-object v0, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letter:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1270
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1278
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->setSelectedLetter(Ljava/lang/String;)V

    .line 1280
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz p0, :cond_2

    .line 1281
    iget v1, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->index:I

    iget-boolean p1, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->onTouchLetter(Ljava/lang/String;IIZ)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    .line 1272
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz p0, :cond_4

    .line 1273
    iget v1, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->index:I

    iget-boolean p1, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->onTouchLetter(Ljava/lang/String;IIZ)V

    :cond_4
    return-void
.end method

.method private init()V
    .locals 6

    const/4 v0, 0x0

    .line 496
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 v1, 0x1

    .line 497
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/16 v2, 0x1e

    .line 499
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingTop:I

    .line 500
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    const/16 v2, 0xe

    .line 501
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStart:I

    const/4 v3, 0x4

    .line 502
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStartOffset:I

    const/4 v3, 0x2

    const/16 v4, 0xa

    .line 504
    invoke-direct {p0, v3, v4}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->valueToDimen(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    const/16 v4, 0x28

    .line 505
    invoke-direct {p0, v3, v4}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->valueToDimen(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    const/16 v4, 0x18

    .line 506
    invoke-direct {p0, v3, v4}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->valueToDimen(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    .line 508
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/widgetslib/R$dimen;->letter_indicator_radius:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorRadius:I

    .line 509
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorStart:I

    .line 511
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 512
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 513
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 515
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 516
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 518
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 521
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 524
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {p0, v5, v4}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->toAlphaColor(FI)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v3, 0x40

    .line 527
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapWidth:I

    .line 528
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapEnable:Z

    .line 529
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->updateFontHeight()V

    .line 530
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->initAnimation()V

    const/4 v0, 0x3

    .line 532
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubblePaddingStart:I

    .line 533
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeight:F

    return-void
.end method

.method private initAnimation()V
    .locals 9

    .line 851
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    new-array v0, v4, [F

    .line 852
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    .line 853
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 854
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;

    invoke-direct {v6, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 866
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;

    invoke-direct {v6, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 881
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3dcccccd    # 0.1f

    invoke-direct {v6, v7, v3, v8, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    const v6, 0x3ecccccd    # 0.4f

    if-nez v0, :cond_1

    new-array v0, v4, [F

    .line 885
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    .line 886
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 887
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$3;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 896
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 910
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    invoke-direct {v1, v6, v3, v5, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 912
    new-instance v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    new-array v0, v4, [F

    .line 924
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    .line 925
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 926
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$6;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$6;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 934
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    invoke-direct {v0, v6, v3, v5, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43480000    # 200.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43480000    # 200.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private isSelectorDisable()Z
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->enabledDrawLetters()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private letterSelectorMeasure()V
    .locals 15

    .line 604
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 608
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 609
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-eqz v0, :cond_18

    if-nez v1, :cond_1

    goto/16 :goto_a

    .line 614
    :cond_1
    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    if-eq v2, v0, :cond_2

    .line 615
    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    .line 617
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHeight:I

    if-eq v0, v1, :cond_3

    .line 618
    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHeight:I

    .line 621
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 622
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 623
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 624
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->checkLayoutDirection()V

    .line 627
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    if-ge v3, v0, :cond_5

    .line 630
    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 631
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 634
    :cond_4
    new-instance v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;)V

    .line 635
    iput v3, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->index:I

    .line 636
    iput-object v6, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letter:Ljava/lang/String;

    .line 637
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    .line 638
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v8, v5

    iput v8, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letterNormalWidthHalf:F

    .line 639
    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 642
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    :cond_5
    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingTop:I

    .line 646
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    int-to-float v7, v3

    .line 647
    iput v7, v6, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    .line 648
    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStart:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    iput v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    .line 649
    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeight:F

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 650
    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    if-eqz v7, :cond_6

    .line 651
    iput v1, v6, Landroid/graphics/RectF;->left:F

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 652
    iput v4, v6, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 654
    :cond_6
    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->right:F

    int-to-float v4, v4

    sub-float/2addr v7, v4

    .line 655
    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 659
    :goto_2
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v7, v4, v1

    if-nez v7, :cond_7

    return-void

    .line 664
    :cond_7
    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    if-eqz v7, :cond_8

    .line 666
    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    move v3, v2

    .line 669
    :cond_8
    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHeight:I

    sub-int v3, v8, v3

    iget v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    if-eqz v7, :cond_9

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x2

    goto :goto_3

    :cond_9
    div-float/2addr v3, v4

    float-to-int v3, v3

    :goto_3
    const/4 v9, 0x1

    if-ge v3, v9, :cond_a

    return-void

    :cond_a
    if-le v0, v3, :cond_b

    move v10, v9

    goto :goto_4

    :cond_b
    move v10, v2

    .line 680
    :goto_4
    iput-boolean v10, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    if-eqz v10, :cond_c

    goto :goto_5

    :cond_c
    move v3, v0

    :goto_5
    if-eqz v7, :cond_e

    int-to-float v7, v3

    mul-float/2addr v7, v4

    int-to-float v8, v8

    sub-float/2addr v8, v7

    div-float/2addr v8, v5

    float-to-int v7, v8

    if-gez v7, :cond_d

    move v7, v2

    .line 689
    :cond_d
    iput v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    int-to-float v7, v7

    .line 690
    iput v7, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v4

    .line 691
    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 694
    :cond_e
    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    invoke-virtual {v7, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 696
    sget-object v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIsOverUnits: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mSelectedRectIndex: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", paintLen: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    if-lt v8, v3, :cond_f

    goto :goto_6

    :cond_f
    move v9, v2

    .line 699
    :goto_6
    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    const/4 v11, -0x1

    if-eqz v8, :cond_12

    if-eqz v9, :cond_10

    add-int/lit8 v8, v3, -0x1

    .line 701
    iput v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    .line 705
    :cond_10
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    iget-object v12, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 706
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    iget-object v12, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 707
    iget v12, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    sub-int v12, v8, v12

    goto :goto_7

    :cond_11
    move v12, v2

    move v8, v11

    .line 710
    :goto_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "noSpaceShowSelectedRect: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", topLetterIndex: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mSelectedLetter: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", indexSelectedLetter: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    move v12, v2

    :goto_8
    if-ge v2, v3, :cond_14

    .line 715
    new-instance v7, Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget v13, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v8, v9, v10, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 716
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    iput v8, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v4

    .line 718
    iput v8, v6, Landroid/graphics/RectF;->bottom:F

    add-int v8, v2, v12

    if-le v8, v11, :cond_13

    if-ge v8, v0, :cond_13

    .line 722
    iget-object v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 727
    :cond_14
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget v7, v6, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v5

    add-float v5, v3, v4

    invoke-virtual {v0, v2, v3, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 728
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 729
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    iget v3, v6, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v4

    iget v5, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 730
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 732
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    if-eqz v3, :cond_15

    .line 733
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStartOffset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9

    .line 735
    :cond_15
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStartOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 737
    :goto_9
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    .line 739
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_16

    return-void

    .line 742
    :cond_16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_letter_bubble_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 743
    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorStart:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 744
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    if-nez v3, :cond_17

    .line 745
    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    int-to-float v2, v0

    sub-float v2, v3, v2

    .line 747
    :cond_17
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float v3, v2, v0

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_18
    :goto_a
    return-void
.end method

.method private showSelector(Z)V
    .locals 3

    .line 562
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 565
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    .line 566
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 567
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 568
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 569
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 570
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 571
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 572
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private startHideAnimation()V
    .locals 4

    .line 939
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->cancelAnimation()V

    .line 940
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startShowAnimation()V
    .locals 2

    .line 946
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 957
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    return-void

    .line 961
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 962
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 963
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    const/4 v0, 0x0

    .line 964
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimationCancel:Z

    :cond_4
    return-void
.end method

.method private toAlphaColor(FI)I
    .locals 1

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 576
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private touchEnable(FF)Z
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1003
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private updateFontHeight()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 557
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 558
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private valueToDimen(II)I
    .locals 0

    int-to-float p2, p2

    .line 411
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 760
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 761
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-nez v0, :cond_0

    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->enabledDrawLetters()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    return-void

    .line 769
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 770
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v0, 0x0

    .line 774
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 775
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 777
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v2, :cond_4

    goto/16 :goto_2

    .line 785
    :cond_4
    iget-object v3, v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letter:Ljava/lang/String;

    .line 786
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const-string v6, "\u2606"

    if-eqz v3, :cond_5

    .line 787
    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetters:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 788
    :cond_6
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 789
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 790
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    .line 789
    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 792
    :cond_7
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v2, v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letterNormalWidthHalf:F

    sub-float/2addr v6, v2

    .line 793
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    .line 792
    invoke-virtual {p1, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 796
    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 797
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    div-float v4, v2, v5

    sub-float/2addr v1, v4

    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 798
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 800
    :cond_8
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_9

    .line 801
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 802
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 801
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 804
    :cond_9
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v2, v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letterNormalWidthHalf:F

    sub-float/2addr v5, v2

    .line 805
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 804
    invoke-virtual {p1, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 809
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 811
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->drawLetterIndicator(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getLetterSelectorConfig(ZZ)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 583
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    .line 584
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->access$4102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;Z)Z

    .line 585
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    return-object p0
.end method

.method public getPanelWidth()I
    .locals 0

    .line 1286
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    return p0
.end method

.method public isShowSelector()Z
    .locals 0

    .line 477
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 549
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 550
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 551
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 552
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 987
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isSelectorDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 990
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchEnable(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 992
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return p1

    .line 996
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 595
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 597
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    .line 598
    iput p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHeight:I

    .line 599
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorMeasure()V

    .line 600
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1015
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isSelectorDisable()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1022
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1026
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchEnable(FF)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 1031
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_c

    if-eq p1, v2, :cond_a

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    goto/16 :goto_4

    .line 1058
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 1063
    :cond_3
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    .line 1064
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    .line 1065
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez p1, :cond_7

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1080
    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 1081
    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1082
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v4, :cond_6

    goto :goto_0

    .line 1087
    :cond_6
    invoke-direct {p0, v3, v4}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleMoveTouchLetter(Landroid/graphics/RectF;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;)V

    goto :goto_0

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 1069
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    goto :goto_2

    .line 1071
    :cond_8
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    .line 1073
    :goto_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v0, :cond_9

    return v2

    .line 1078
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleMoveTouchLetter(Landroid/graphics/RectF;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;)V

    goto :goto_4

    .line 1095
    :cond_a
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleTouchUpLetter()V

    .line 1096
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    .line 1099
    :cond_b
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_10

    .line 1100
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->startHideAnimation()V

    goto :goto_4

    .line 1034
    :cond_c
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1035
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    .line 1037
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    .line 1038
    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1039
    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v4, :cond_e

    goto :goto_3

    .line 1044
    :cond_e
    iget-boolean p1, v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    if-eqz p1, :cond_f

    .line 1046
    invoke-direct {p0, v4, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleTouchedLetter(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;I)V

    .line 1047
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->startShowAnimation()V

    goto :goto_4

    .line 1049
    :cond_f
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz p0, :cond_10

    const/4 p1, 0x0

    .line 1050
    invoke-interface {p0, p1, v3, v2, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->onTouchLetter(Ljava/lang/String;IIZ)V

    :cond_10
    :goto_4
    return v2

    .line 1016
    :cond_11
    :goto_5
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    if-eqz v0, :cond_12

    .line 1017
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleTouchUpLetter()V

    .line 1019
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 538
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 539
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 542
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->cancelAnimation()V

    const/4 p1, 0x0

    .line 543
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    const/4 p1, 0x0

    .line 544
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F

    return-void
.end method

.method public setSelectedLetter(Ljava/lang/String;)V
    .locals 2

    .line 1146
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 1157
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    if-eqz v1, :cond_2

    .line 1158
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleOverUnitsPst(Ljava/lang/String;I)V

    goto :goto_0

    .line 1160
    :cond_2
    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    .line 1163
    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    .line 1164
    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    .line 1167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setShowSelector(Z)V
    .locals 0

    .line 481
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 1128
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 1131
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1133
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 1134
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1136
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 1137
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1139
    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_5

    .line 1140
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_5
    return-void
.end method

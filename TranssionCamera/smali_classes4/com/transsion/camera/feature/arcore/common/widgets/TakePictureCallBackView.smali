.class public Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;
.super Landroid/view/View;
.source "TakePictureCallBackView.java"


# static fields
.field private static final BORDER_MID_WIDTH:I = 0x1b

.field private static final BORDER_WIDTH:I = 0x36

.field private static final CENTER_X:I = 0x0

.field private static final CENTER_Y:I = 0x0

.field private static final CHANGE_PROPORTION:F = 0.23f

.field private static final CORNER_RADIUS_X:I = 0x4e

.field private static final CORNER_RADIUS_Y:I = 0x4e

.field private static final DURATION_TIME:I = 0x12c

.field private static final FINAL_PROPORTION:F = 0.0f

.field private static final INITIAL_PROPORTION:F = 1.0f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPictureLocationY:F

.field private final mPictureTranslationX:F

.field private mRect:Landroid/graphics/Rect;

.field private final mScaleLength:F

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractWithTackPictureCallBackView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/arcore/R$dimen;->picture_translation_x:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPictureTranslationX:F

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/arcore/R$dimen;->picture_location_y:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPictureLocationY:F

    neg-float p1, p1

    const p2, 0x3f451eb8    # 0.77f

    div-float/2addr p1, p2

    .line 48
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mScaleLength:F

    .line 50
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 59
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mScaleLength:F

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPictureTranslationX:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPictureLocationY:F

    return p0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 155
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method public getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public initSpringAnimation()V
    .locals 3

    .line 97
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 98
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x3f400000    # 0.75f

    .line 99
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x43480000    # 200.0f

    .line 100
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPictureLocationY:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 112
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 113
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    const/16 p3, 0x36

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p4, p3

    invoke-direct {p1, p3, p3, p2, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setCameraImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startAnimation()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

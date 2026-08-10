.class public Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;
.super Ljava/lang/Object;
.source "HumanFocusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final MOTION_LIMIT:I

.field private final SQUARE_GAP:I

.field private final SQUARE_WIDTH:I

.field private mAllPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHeight:I

.field private mHumanRect:Landroid/graphics/Rect;

.field private mImmobileTime:J

.field private mIsAnimShowed:Z

.field private mRect:Landroid/graphics/Rect;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mStartTime:J

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAllPoints:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    .line 59
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702c1

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_GAP:I

    const v0, 0x7f0702c2

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_WIDTH:I

    mul-int/lit8 p1, p1, 0x2

    .line 62
    iput p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->MOTION_LIMIT:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_WIDTH:I

    return p0
.end method

.method private clearPointView()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private varargs createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 161
    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 162
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private drawPointView(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->clearPointView()V

    const/4 v0, 0x0

    .line 279
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 280
    new-instance v1, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;Landroid/content/Context;)V

    .line 281
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->setPoint(Landroid/graphics/Point;)V

    .line 282
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 283
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private getRandomPoints(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 220
    iget v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_WIDTH:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_GAP:I

    add-int v2, v0, v1

    if-lt p1, v2, :cond_9

    if-ge p2, v2, :cond_0

    goto/16 :goto_6

    .line 224
    :cond_0
    div-int v3, p1, v2

    .line 225
    div-int v4, p2, v2

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    .line 227
    iget p0, p0, Landroid/graphics/Rect;->top:I

    mul-int v6, v3, v2

    if-le p1, v6, :cond_2

    .line 229
    rem-int/2addr p1, v2

    if-lt p1, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr p1, v0

    .line 232
    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    add-int/2addr p1, v1

    .line 234
    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 237
    :cond_2
    div-int/lit8 p1, v1, 0x2

    :goto_0
    add-int/2addr v5, p1

    mul-int p1, v4, v2

    if-le p2, p1, :cond_4

    .line 241
    rem-int/2addr p2, v2

    if-lt p2, v0, :cond_3

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr p2, v0

    .line 244
    div-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_3
    add-int/2addr p2, v1

    .line 246
    div-int/lit8 p2, p2, 0x2

    :goto_1
    add-int/2addr p0, p2

    goto :goto_2

    .line 249
    :cond_4
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    .line 252
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move v0, p2

    :goto_3
    if-ge v0, v4, :cond_6

    move v1, p2

    move v6, v5

    :goto_4
    if-ge v1, v3, :cond_5

    .line 256
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 263
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 265
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 266
    :cond_7
    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_8

    .line 267
    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 268
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 269
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 272
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object p0

    :cond_9
    :goto_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSimilarSizeRect(Landroid/graphics/Rect;I)Z
    .locals 2

    .line 209
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 210
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 211
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    .line 212
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCenterRect(Landroid/graphics/Rect;)V
    .locals 8

    .line 167
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v1

    .line 168
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, p1

    .line 169
    iget v5, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_WIDTH:I

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_GAP:I

    add-int/2addr v6, v7

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    if-lt v2, v6, :cond_7

    if-ge v4, v6, :cond_0

    goto :goto_2

    :cond_0
    if-gt v2, v5, :cond_2

    if-le v4, v5, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    sub-int v6, v2, v5

    .line 177
    div-int/lit8 v6, v6, 0x2

    sub-int v7, v4, v5

    .line 178
    div-int/lit8 v7, v7, 0x2

    if-le v2, v5, :cond_3

    if-le v4, v5, :cond_3

    add-int/2addr v1, v6

    sub-int/2addr v0, v6

    add-int/2addr p1, v7

    sub-int/2addr v3, v7

    .line 184
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    if-le v2, v5, :cond_4

    if-gt v4, v5, :cond_4

    add-int/2addr v1, v6

    sub-int/2addr v0, v6

    .line 188
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    if-gt v2, v5, :cond_5

    if-le v4, v5, :cond_5

    add-int/2addr p1, v7

    sub-int/2addr v3, v7

    .line 192
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mWidth:I

    .line 198
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHeight:I

    .line 200
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->getRandomPoints(II)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAllPoints:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 202
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->drawPointView(Ljava/util/ArrayList;)V

    :cond_6
    return-void

    .line 172
    :cond_7
    :goto_2
    sget-object p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Human body is too small, ignored."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startAnimation()V
    .locals 11

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    const/16 v5, 0x96

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 135
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 137
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 138
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 140
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 141
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 142
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 144
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 145
    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 146
    invoke-virtual {v8, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 148
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 149
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 150
    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 152
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 153
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3e800000    # 0.25f

    invoke-direct {v6, v10, v7, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v4, v6, v1

    const/4 v1, 0x1

    aput-object v5, v6, v1

    aput-object v8, v6, v2

    const/4 v2, 0x3

    aput-object v3, v6, v2

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 156
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mIsAnimShowed:Z

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public hide()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const-wide/16 v2, 0x0

    .line 122
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mStartTime:J

    .line 123
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    .line 124
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mIsAnimShowed:Z

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->clearPointView()V

    return-void
.end method

.method public show(Landroid/graphics/Rect;I)V
    .locals 8

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    iget v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->MOTION_LIMIT:I

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->isSimilarSizeRect(Landroid/graphics/Rect;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 73
    iget-wide v4, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mStartTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    .line 76
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mStartTime:J

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    const-wide/16 v4, 0x0

    if-nez p2, :cond_5

    .line 81
    iget-wide v6, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    cmp-long p2, v6, v4

    if-nez p2, :cond_3

    .line 82
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    .line 84
    :cond_3
    iget-wide v3, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long p2, v0, v3

    if-lez p2, :cond_7

    .line 86
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mIsAnimShowed:Z

    if-nez p1, :cond_4

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->startAnimation()V

    :cond_4
    return-void

    .line 92
    :cond_5
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 93
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 95
    :cond_6
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mIsAnimShowed:Z

    .line 96
    iput-wide v4, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    :cond_7
    if-nez v2, :cond_8

    .line 99
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->setCenterRect(Landroid/graphics/Rect;)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8
    return-void
.end method

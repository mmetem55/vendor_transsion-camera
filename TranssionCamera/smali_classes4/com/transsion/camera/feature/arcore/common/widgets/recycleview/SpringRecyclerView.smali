.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SpringRecyclerView.java"


# static fields
.field private static final DEF_FLING_BACK_ANIM_DURATION:I = 0x12c

.field private static final DEF_RELEASE_BACK_ANIM_DURATION:I = 0x12c

.field private static final INVALID_POINTER:I = -0x1

.field private static final STATE_DRAG_BOTTOM_OR_RIGHT:I = 0x2

.field private static final STATE_DRAG_TOP_OR_LEFT:I = 0x1

.field private static final STATE_FLING:I = 0x4

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_SPRING_BACK:I = 0x3


# instance fields
.field private flingBackAnimInterpolator:Landroid/view/animation/Interpolator;

.field private mActivePointerId:I

.field private mEnableSpringEffectWhenDrag:Z

.field private mEnableSpringEffectWhenFling:Z

.field private mFlingBackAnimDuration:I

.field private mFrom:F

.field private mIsRecording:Z

.field private mLastMotionPos:F

.field private mOffset:F

.field private mOrientation:I

.field private mReleaseBackAnimDuration:I

.field private mState:I

.field private final mTouchSlop:I

.field private releaseBackAnimInterpolator:Landroid/view/animation/Interpolator;

.field private springAnimation:Landroid/view/animation/Animation;


# direct methods
.method public static synthetic $r8$lambda$3RBJ7it_-Q0eHXBXq_nOtYy3JxI(F)F
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->lambda$initAnimation$0(F)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T1u_3OcfjEergRoLWYStK5IBEIY(F)F
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->lambda$initAnimation$1(F)F

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 26
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mState:I

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    .line 44
    iput-boolean p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mIsRecording:Z

    .line 60
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 61
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mTouchSlop:I

    .line 62
    sget-object p3, Lcom/transsion/camera/feature/arcore/R$styleable;->SpringRecyclerView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->SpringRecyclerView_releaseBackAnimDuration:I

    const/16 p3, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mReleaseBackAnimDuration:I

    .line 64
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->SpringRecyclerView_flingBackAnimDuration:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mFlingBackAnimDuration:I

    .line 65
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->SpringRecyclerView_enableSpringEffectWhenDrag:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mEnableSpringEffectWhenDrag:Z

    .line 66
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->SpringRecyclerView_enableSpringEffectWhenFling:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mEnableSpringEffectWhenFling:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->initAnimation()V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mFrom:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    return-void
.end method

.method private initAnimation()V
    .locals 1

    .line 301
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->springAnimation:Landroid/view/animation/Animation;

    .line 313
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->releaseBackAnimInterpolator:Landroid/view/animation/Interpolator;

    .line 315
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->flingBackAnimInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private isDragged()Z
    .locals 2

    .line 337
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isDraggedBottomOrRight()Z
    .locals 1

    .line 345
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDraggedTopOrLeft()Z
    .locals 1

    .line 341
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$initAnimation$0(F)F
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 313
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private static synthetic lambda$initAnimation$1(F)F
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 315
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private onInterceptTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_e

    const/4 v6, -0x1

    if-eq v0, v5, :cond_d

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_9

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    .line 96
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    if-eq v0, v6, :cond_12

    iget-boolean v7, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mIsRecording:Z

    if-eqz v7, :cond_2

    goto/16 :goto_9

    .line 99
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v6, :cond_3

    goto/16 :goto_9

    .line 103
    :cond_3
    iget v6, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v6, v5, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 104
    :goto_0
    iget v6, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mLastMotionPos:F

    sub-float v6, v0, v6

    .line 105
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mLastMotionPos:F

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->isDragged()Z

    move-result v0

    if-nez v0, :cond_12

    .line 108
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v0, v5, :cond_5

    .line 109
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    goto :goto_1

    .line 110
    :cond_5
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 111
    :goto_1
    iget v7, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v7, v5, :cond_6

    .line 112
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v7

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v8

    goto :goto_2

    .line 113
    :cond_6
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v7

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v8

    :goto_2
    sub-int/2addr v7, v8

    if-nez v7, :cond_7

    move v0, v4

    move v8, v0

    goto :goto_4

    :cond_7
    if-lez v0, :cond_8

    move v8, v5

    goto :goto_3

    :cond_8
    move v8, v4

    :goto_3
    sub-int/2addr v7, v5

    if-ge v0, v7, :cond_9

    move v0, v5

    goto :goto_4

    :cond_9
    move v0, v4

    :goto_4
    if-eqz v8, :cond_a

    if-eqz v0, :cond_a

    goto/16 :goto_9

    .line 123
    :cond_a
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_12

    if-nez v8, :cond_b

    cmpl-float v7, v6, v3

    if-lez v7, :cond_b

    .line 126
    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    :goto_5
    move v4, v5

    goto :goto_6

    :cond_b
    if-nez v0, :cond_c

    cmpg-float v0, v6, v3

    if-gez v0, :cond_c

    .line 129
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    goto :goto_5

    :cond_c
    :goto_6
    if-eqz v4, :cond_12

    .line 134
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 136
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 138
    invoke-super {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    .line 139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 141
    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_9

    .line 152
    :cond_d
    iput v6, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    goto :goto_9

    .line 83
    :cond_e
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v0, v5, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_7
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mLastMotionPos:F

    .line 84
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    .line 85
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mState:I

    if-ne p1, v1, :cond_12

    .line 86
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_11

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 88
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_10

    move v2, v5

    :cond_10
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    goto :goto_8

    .line 90
    :cond_11
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    .line 92
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 155
    :cond_12
    :goto_9
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->isDragged()Z

    move-result p0

    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 350
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 351
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 355
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v0, v2, :cond_14

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    if-eq v0, v4, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_a

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 250
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v3, :cond_18

    .line 252
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mLastMotionPos:F

    goto/16 :goto_a

    .line 243
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 244
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    :goto_1
    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mLastMotionPos:F

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    goto/16 :goto_a

    .line 174
    :cond_4
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    if-eq v0, v3, :cond_18

    iget-boolean v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mIsRecording:Z

    if-eqz v3, :cond_5

    goto/16 :goto_a

    .line 177
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_6

    goto/16 :goto_a

    .line 181
    :cond_6
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v3, v2, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 182
    :goto_2
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mLastMotionPos:F

    sub-float v3, v0, v3

    .line 183
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mLastMotionPos:F

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->isDragged()Z

    move-result v0

    if-nez v0, :cond_10

    .line 186
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v0, v2, :cond_8

    .line 187
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    goto :goto_3

    .line 188
    :cond_8
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 189
    :goto_3
    iget v7, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v7, v2, :cond_9

    .line 190
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v7

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v8

    goto :goto_4

    .line 191
    :cond_9
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v7

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v8

    :goto_4
    sub-int/2addr v7, v8

    if-nez v7, :cond_a

    move v0, v1

    move v8, v0

    goto :goto_6

    :cond_a
    if-lez v0, :cond_b

    move v8, v2

    goto :goto_5

    :cond_b
    move v8, v1

    :goto_5
    sub-int/2addr v7, v2

    if-ge v0, v7, :cond_c

    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v1

    :goto_6
    if-eqz v8, :cond_d

    if-eqz v0, :cond_d

    goto/16 :goto_a

    .line 202
    :cond_d
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_10

    if-nez v8, :cond_e

    cmpl-float v7, v3, v5

    if-lez v7, :cond_e

    .line 205
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    :goto_7
    move v0, v2

    goto :goto_8

    :cond_e
    if-nez v0, :cond_f

    cmpg-float v0, v3, v5

    if-gez v0, :cond_f

    .line 208
    invoke-direct {p0, v6}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    goto :goto_7

    :cond_f
    move v0, v1

    :goto_8
    if-eqz v0, :cond_10

    .line 213
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 215
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 216
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 217
    invoke-super {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    .line 219
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 221
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 226
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->isDragged()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 227
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->isDraggedTopOrLeft()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    cmpg-float v0, v0, v5

    if-lez v0, :cond_12

    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->isDraggedBottomOrRight()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_13

    .line 230
    :cond_12
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    .line 231
    iput v5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    .line 233
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 234
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 235
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 238
    :cond_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_a

    .line 258
    :cond_14
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    cmpl-float v0, p1, v5

    if-eqz v0, :cond_15

    .line 260
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mFrom:F

    .line 261
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->startReleaseAnimation()V

    .line 262
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    .line 264
    :cond_15
    iput v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    goto :goto_a

    .line 170
    :cond_16
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    if-ne v0, v2, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_9

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_9
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mLastMotionPos:F

    .line 171
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mActivePointerId:I

    .line 267
    :cond_18
    :goto_a
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->isDragged()Z

    move-result p0

    return p0
.end method

.method private setState(I)V
    .locals 1

    .line 331
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mState:I

    if-eq v0, p1, :cond_0

    .line 332
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mState:I

    :cond_0
    return-void
.end method

.method private startFlingAnimation()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->springAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mFlingBackAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->springAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->flingBackAnimInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->springAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startReleaseAnimation()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->springAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mReleaseBackAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->springAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->releaseBackAnimInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->springAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method protected absorbGlows(II)V
    .locals 3

    .line 292
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mEnableSpringEffectWhenFling:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 293
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move p1, p2

    :cond_0
    neg-int p1, p1

    int-to-float p1, p1

    const p2, 0x3c888889

    mul-float/2addr p1, p2

    .line 294
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mFrom:F

    .line 295
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->startFlingAnimation()V

    .line 296
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setState(I)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 272
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mState:I

    if-nez v0, :cond_0

    .line 273
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 277
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    const/4 v2, 0x1

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    .line 278
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 279
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v6, v1

    div-float/2addr v2, v6

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    .line 280
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    :goto_0
    invoke-virtual {p1, v4, v2, v5, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2

    .line 282
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 283
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v6, v1

    div-float/2addr v2, v6

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    .line 284
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOffset:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    :goto_1
    invoke-virtual {p1, v2, v4, v1, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 286
    :goto_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 287
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mEnableSpringEffectWhenDrag:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->onInterceptTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 76
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mEnableSpringEffectWhenDrag:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setEnableSpringEffectWhenDrag(Z)V
    .locals 0

    .line 368
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mEnableSpringEffectWhenDrag:Z

    return-void
.end method

.method public setEnableSpringEffectWhenFling(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mEnableSpringEffectWhenFling:Z

    return-void
.end method

.method public setFlingBackAnimDuration(I)V
    .locals 0

    .line 384
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mFlingBackAnimDuration:I

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 361
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mOrientation:I

    :cond_0
    return-void
.end method

.method public setRecordingState(Z)V
    .locals 0

    .line 376
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mIsRecording:Z

    return-void
.end method

.method public setReleaseBackAnimDuration(I)V
    .locals 0

    .line 380
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->mReleaseBackAnimDuration:I

    return-void
.end method

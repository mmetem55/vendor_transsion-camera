.class public Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;
.super Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;
.source "MoreLinearTypeDragBox.java"


# instance fields
.field private final mContentLeftMargin:I

.field private mCurrentDragEvent:Landroid/view/DragEvent;

.field private mDragAreaLinearDesc:Landroid/widget/TextView;

.field private mDragAreaLinearIcon:Landroid/widget/ImageView;

.field private mDragAreaLinearLayout:Landroid/widget/LinearLayout;

.field private mDragAreaLinearNormalText:Landroid/widget/TextView;

.field private mDragAreaLinearTitle:Landroid/widget/TextView;

.field private mDragStartEvent:Landroid/view/DragEvent;

.field private mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

.field private final mScreenSize:Landroid/util/Size;


# direct methods
.method public static synthetic $r8$lambda$TvS6ccYvy6kEIME-O9rL7I628cY(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->lambda$changeColor$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mScreenSize:Landroid/util/Size;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703da

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mContentLeftMargin:I

    return-void
.end method

.method private synthetic lambda$changeColor$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 286
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public changeColor(JII)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 283
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 284
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->changeColor(JII)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x2f2f30
        0x63dedede
    .end array-data
.end method

.method public changeScale(IFF)V
    .locals 7

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v4, 0x1

    aput p3, v2, v4

    const-string v5, "scaleX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v2, v1, [F

    aput p2, v2, v3

    aput p3, v2, v4

    const-string p2, "scaleY"

    invoke-static {p0, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 297
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v5, p1

    .line 298
    invoke-virtual {p2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 299
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p3, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v2, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v1, [Landroid/animation/Animator;

    aput-object v0, p1, v3

    aput-object p0, p1, v4

    .line 300
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 301
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public commonInitialize()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->setBackgroundSize(II)V

    return-void
.end method

.method public getDeltaHeight()I
    .locals 2

    .line 113
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDeltaWidth()I
    .locals 2

    .line 118
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDragBoxLayoutParams(Landroid/content/Context;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 55
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 58
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0xf

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/2addr p1, v1

    neg-int p0, p1

    const/4 p1, 0x0

    .line 60
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public getMotionEventGetX(IILandroid/view/DragEvent;)F
    .locals 0

    .line 66
    invoke-virtual {p3}, Landroid/view/DragEvent;->getX()F

    move-result p0

    return p0
.end method

.method public getScrollPositionInLinearMode(Landroid/view/DragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 3

    .line 71
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    const/4 v0, 0x0

    if-lez p0, :cond_1

    .line 72
    div-int/lit8 p0, p2, 0x2

    .line 73
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 74
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p1

    sub-float/2addr p1, p2

    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 77
    new-instance p1, Landroid/graphics/Point;

    neg-int p0, p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 80
    :cond_1
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public getViewX()F
    .locals 3

    .line 85
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosX:F

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosX:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getViewY()F
    .locals 3

    .line 90
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosY:F

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0703d6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public gridModeInitialize()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 306
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0102

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09013d

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const v0, 0x7f09013e

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    const v0, 0x7f09013c

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    const v0, 0x7f090141

    .line 311
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    const v0, 0x7f09013f

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const v0, 0x7f090140

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public initialize()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->commonInitialize()V

    .line 96
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mIsLinearMode:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->linearModeInitialize()V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->gridModeInitialize()V

    :goto_0
    return-void
.end method

.method public linearModeInitialize()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public scaleX(F)V
    .locals 5

    .line 246
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, v0, p1

    .line 248
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 249
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mContentLeftMargin:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sub-float v4, p1, v0

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    .line 250
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v4, p1

    sub-float/2addr v1, v0

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method

.method public setDragStartEvent(Landroid/view/DragEvent;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragStartEvent:Landroid/view/DragEvent;

    return-void
.end method

.method public startDragAreaGridToLinearAnimation()V
    .locals 9

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Landroid/view/DragEvent;

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 208
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 209
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Landroid/view/DragEvent;

    invoke-virtual {v4}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-float v3, v3

    sub-float/2addr v4, v3

    .line 210
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-float v6, v6

    div-float/2addr v6, v2

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    .line 212
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    neg-int v3, v3

    :goto_0
    int-to-float v3, v3

    div-float v4, v3, v2

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v3, 0x1

    new-array v6, v3, [F

    aput v4, v6, v5

    const-string v4, "translationX"

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 218
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v6, v1, [I

    .line 219
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result v7

    aput v7, v6, v5

    aput v0, v6, v3

    const-string v0, "BackgroundWidth"

    .line 218
    invoke-static {v4, v0, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 220
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v6, v1, [I

    .line 221
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result v7

    aput v7, v6, v5

    .line 222
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0703e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    aput v7, v6, v3

    const-string v7, "BackgroundHeight"

    .line 220
    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 223
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 224
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v7, 0x7f0a0017

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v7, p0

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p0, 0x3

    new-array p0, p0, [Landroid/animation/Animator;

    aput-object v0, p0, v5

    aput-object v4, p0, v3

    aput-object v2, p0, v1

    .line 225
    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 226
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startDragAreaLinearToGridAnimation()V
    .locals 9

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 124
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v1

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "BackgroundWidth"

    .line 123
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 125
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v3, v1, [I

    .line 126
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result v6

    aput v6, v3, v4

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    aput v6, v3, v5

    const-string v6, "BackgroundHeight"

    .line 125
    invoke-static {v2, v6, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [I

    .line 128
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 129
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v7, v6, v4

    const-string v7, "translationX"

    invoke-static {v3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 130
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 131
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v7, 0x7f0a0017

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v7, p0

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p0, 0x3

    new-array p0, p0, [Landroid/animation/Animator;

    aput-object v0, p0, v4

    aput-object v2, p0, v5

    aput-object v3, p0, v1

    .line 132
    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 133
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startGridDescGridToLinearAnimation()V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startGridDescLinearToGridAnimation()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    .line 159
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 159
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startGridTextGridToLinearAnimation()V
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startGridTextLinearToGridAnimation()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    .line 151
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 151
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startIconGridToLinearAnimation()V
    .locals 1

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startIconLinearToGridAnimation()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startNormalTextGridToLinearAnimation()V
    .locals 6

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Landroid/view/DragEvent;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 183
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 184
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Landroid/view/DragEvent;

    invoke-virtual {v4}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v4, v1

    .line 185
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    neg-int v0, v1

    int-to-float v0, v0

    :goto_0
    div-float v4, v0, v2

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startNormalTextLinearToGridAnimation()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public translateDragBoxForDragLocationAction(FF)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v0}, Landroid/view/DragEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    return-void
.end method

.method public updateDragEvent(Landroid/view/DragEvent;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Landroid/view/DragEvent;

    return-void
.end method

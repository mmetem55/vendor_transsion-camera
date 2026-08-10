.class public Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;
.super Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;
.source "MoreGridTypeDragBox.java"


# instance fields
.field private mDragAreaGridText:Landroid/widget/TextView;

.field private mDragAreaIcon:Landroid/widget/ImageView;

.field private mDragAreaNormalText:Landroid/widget/TextView;

.field private mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;


# direct methods
.method public static synthetic $r8$lambda$IbQvqhfCyoqaruHiSAM1JvaDG74(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->lambda$startIconGridToLinearAnimation$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Tjt_AnHwk30-NFABrpmizbuUV6s(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->lambda$startGridTextGridToLinearAnimation$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$startGridTextGridToLinearAnimation$1()V
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$startIconGridToLinearAnimation$2()V
    .locals 1

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public changeColor(JII)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const-wide/16 p1, 0x15e

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->changeColor(JII)V

    return-void
.end method

.method public changeScale(IFF)V
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v4, 0x1

    aput p3, v2, v4

    const-string v5, "scaleX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v2, v1, [F

    aput p2, v2, v3

    aput p3, v2, v4

    const-string p2, "scaleY"

    invoke-static {p0, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 261
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v5, p1

    .line 262
    invoke-virtual {p2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 263
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p3, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v2, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v1, [Landroid/animation/Animator;

    aput-object v0, p1, v3

    aput-object p0, p1, v4

    .line 264
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 265
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public commonInitialize()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->setBackgroundSize(II)V

    return-void
.end method

.method public getDeltaHeight()I
    .locals 2

    .line 101
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDeltaWidth()I
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDragBoxLayoutParams(Landroid/content/Context;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 43
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 44
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 46
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosY:F

    add-float/2addr v3, v4

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    sub-int p0, v0, p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v3, p0

    float-to-int p0, v3

    .line 47
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    const/4 p1, 0x0

    .line 48
    invoke-virtual {v1, v2, p0, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v1
.end method

.method public getMotionEventGetX(IILandroid/view/DragEvent;)F
    .locals 0

    .line 54
    invoke-virtual {p3}, Landroid/view/DragEvent;->getX()F

    move-result p0

    return p0
.end method

.method public getScrollPositionInLinearMode(Landroid/view/DragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 3

    .line 59
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    const/4 v0, 0x0

    if-lez p0, :cond_1

    .line 60
    div-int/lit8 p2, p2, 0x2

    .line 61
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p0

    int-to-float v1, p2

    add-float/2addr p0, v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float p0, p0, v2

    if-lez p0, :cond_0

    .line 62
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p0

    sub-float/2addr p0, v1

    iget p1, p3, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    .line 65
    new-instance p0, Landroid/graphics/Point;

    neg-int p1, p2

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 68
    :cond_1
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public getViewX()F
    .locals 3

    .line 73
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

    .line 78
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
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 209
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0100

    const/4 v1, 0x1

    .line 210
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09013b

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const v0, 0x7f090141

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    const v0, 0x7f09013a

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    const v0, 0x7f090139

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    return-void
.end method

.method public initialize()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->commonInitialize()V

    .line 84
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mIsLinearMode:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->linearModeInitialize()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->gridModeInitialize()V

    :goto_0
    return-void
.end method

.method public linearModeInitialize()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public scaleX(F)V
    .locals 0

    return-void
.end method

.method public setDragStartEvent(Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public startDragAreaGridToLinearAnimation()V
    .locals 8

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 189
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    .line 190
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    .line 191
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v3, v5

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "BackgroundWidth"

    .line 188
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v1, v1, [I

    .line 195
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result v2

    aput v2, v1, v4

    .line 196
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0703e6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v5

    const-string v2, "BackgroundHeight"

    .line 194
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 198
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startDragAreaLinearToGridAnimation()V
    .locals 8

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 117
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 118
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0703ec

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "BackgroundWidth"

    .line 116
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v1, v1, [I

    .line 122
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result v2

    aput v2, v1, v4

    .line 123
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0703e9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v5

    const-string v2, "BackgroundHeight"

    .line 121
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 125
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startGridDescGridToLinearAnimation()V
    .locals 0

    return-void
.end method

.method public startGridDescLinearToGridAnimation()V
    .locals 0

    return-void
.end method

.method public startGridTextGridToLinearAnimation()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startGridTextLinearToGridAnimation()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

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

    .line 148
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 148
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startIconGridToLinearAnimation()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startIconLinearToGridAnimation()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

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
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

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

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startNormalTextLinearToGridAnimation()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

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
    .locals 2

    .line 203
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 204
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    return-void
.end method

.method public updateDragEvent(Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

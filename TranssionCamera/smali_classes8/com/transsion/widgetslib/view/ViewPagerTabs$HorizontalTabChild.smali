.class Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;
.super Landroid/widget/LinearLayout;
.source "ViewPagerTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/ViewPagerTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalTabChild"
.end annotation


# instance fields
.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mCurOffset:F

.field private mCurPosition:I

.field private mFirstExec:Z

.field private mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mMovingLine:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroid/content/Context;)V
    .locals 3

    .line 532
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    .line 533
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 530
    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mFirstExec:Z

    .line 534
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;

    .line 535
    invoke-static {p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$100(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$color;->os_gray_tertiary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 537
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 538
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$200(Lcom/transsion/widgetslib/view/ViewPagerTabs;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 539
    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 540
    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 541
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 542
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 543
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)I
    .locals 0

    .line 523
    iget p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;I)I
    .locals 0

    .line 523
    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I

    return p1
.end method

.method static synthetic access$1800(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)Landroid/graphics/Paint;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;

    return-object p0
.end method

.method private calculateTextLeftAndRight(Landroid/widget/TextView;I[I)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    array-length p0, p3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 564
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr p0, v1

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 565
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    div-int/2addr p0, v0

    add-int/2addr v1, p0

    aput v1, p3, p2

    const/4 p2, 0x1

    .line 566
    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, p0

    aput v0, p3, p2

    return-void

    .line 562
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong arguments, array\'s length must be 2!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 571
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 572
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mFirstExec:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$400(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 574
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mFirstExec:Z

    .line 576
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 578
    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 582
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$500(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v4}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$600(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->calculateTextLeftAndRight(Landroid/widget/TextView;I[I)V

    .line 583
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$400(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I

    if-lez v0, :cond_2

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I

    sub-int/2addr v0, v4

    if-ge v3, v0, :cond_2

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 584
    :goto_1
    iget v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurOffset:F

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    if-eqz v0, :cond_5

    .line 585
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result v0

    .line 586
    iget v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I

    iget-object v5, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$400(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 587
    iget-object v5, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$500(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Ljava/util/ArrayList;

    move-result-object v5

    iget v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I

    iget-object v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v8}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$400(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v6}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$700(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->calculateTextLeftAndRight(Landroid/widget/TextView;I[I)V

    .line 588
    iget-object v5, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$600(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v6}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$700(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I

    move-result-object v6

    aget v6, v6, v1

    int-to-float v6, v6

    mul-float/2addr v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v8}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$600(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I

    move-result-object v8

    aget v8, v8, v1

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    aput v6, v5, v1

    .line 589
    iget-object v5, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$600(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v6}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$700(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I

    move-result-object v6

    aget v6, v6, v4

    int-to-float v6, v6

    mul-float/2addr v0, v6

    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v6}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$600(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I

    move-result-object v6

    aget v6, v6, v4

    int-to-float v6, v6

    mul-float/2addr v7, v6

    add-float/2addr v0, v7

    float-to-int v0, v0

    aput v0, v5, v4

    .line 602
    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 603
    sget v0, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v3, v0}, Landroid/widget/CheckedTextView;->setTextAppearance(I)V

    .line 609
    :cond_5
    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 610
    sget v0, Lcom/transsion/widgetslib/R$style;->os_medium_fontweight:I

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setTextAppearance(I)V

    .line 612
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$200(Lcom/transsion/widgetslib/view/ViewPagerTabs;)I

    const/4 v2, 0x0

    .line 614
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$800(Lcom/transsion/widgetslib/view/ViewPagerTabs;)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mMovingLine:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method onPageScrolled(IF)V
    .locals 0

    .line 547
    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurPosition:I

    .line 548
    iput p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->mCurOffset:F

    .line 550
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V

    return-void
.end method

.class public Lcom/transsion/ardrawlines/view/FlowRadioGroup;
.super Landroid/widget/RadioGroup;
.source "FlowRadioGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;

.field private preSelectView:Landroid/view/View;

.field private selectView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearCheck()V
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->selectView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->setSelect(I)V

    .line 34
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->mListener:Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->preSelectView:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->selectView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;->onClickChildSelected(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 171
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 172
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->init()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 133
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    .line 135
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result p3

    .line 136
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingTop()I

    move-result p5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 140
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 144
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, p3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v5, p4, p2

    if-le v4, v5, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result p3

    add-int/2addr p5, v1

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 154
    :goto_1
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, p3

    .line 156
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, p5

    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    .line 160
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 162
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v4, v2

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v2

    add-int/2addr p3, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->init()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 72
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 73
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/widget/RadioGroup;->measureChildren(II)V

    .line 91
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move v4, p2

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, p1, :cond_1

    .line 95
    invoke-virtual {p0, v4}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 96
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 97
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    .line 107
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 108
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v5, p2

    .line 121
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 124
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr p2, v4

    add-int/2addr p1, p2

    .line 125
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr p2, v4

    add-int/2addr v5, p2

    const/high16 p2, 0x40000000    # 2.0f

    if-ne v1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    if-ne v3, p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    .line 126
    :goto_2
    invoke-virtual {p0, v0, v2}, Landroid/widget/RadioGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOnChildSelectListener(Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;)V
    .locals 3

    .line 61
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->mListener:Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;

    .line 62
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->selectView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->preSelectView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-interface {p1, p0, v1, v0, v2}, Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;->onChildSelected(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 64
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->mListener:Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;

    iget-object v0, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->preSelectView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->selectView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;->onClickChildSelected(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setSelect(I)V
    .locals 3

    .line 47
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->selectView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iput-object v0, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->preSelectView:Landroid/view/View;

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->selectView:Landroid/view/View;

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 54
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->mListener:Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;

    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->preSelectView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/ardrawlines/view/FlowRadioGroup;->selectView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/ardrawlines/view/FlowRadioGroup$OnChildSelectListener;->onChildSelected(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

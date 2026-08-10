.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;
.super Landroid/view/View;
.source "RecyclerViewIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mInterval:F

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mRadius:F

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mNormalPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mSelectPaint:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    sget v1, Lcom/transsion/camera/feature/movie/R$dimen;->default_recycle_view_indicator_radius:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 67
    sget v2, Lcom/transsion/camera/feature/movie/R$dimen;->default_recycle_view_indicator_interval:I

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 69
    sget v3, Lcom/transsion/camera/feature/movie/R$color;->default_recycle_view_indicator_normal_color:I

    const/4 v4, 0x0

    .line 70
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 71
    sget v5, Lcom/transsion/camera/feature/movie/R$color;->default_recycle_view_indicator_select_color:I

    .line 72
    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 74
    sget-object v4, Lcom/transsion/camera/feature/movie/R$styleable;->RecyclerViewIndicator:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->RecyclerViewIndicator_radius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mRadius:F

    .line 79
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->RecyclerViewIndicator_interval:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mInterval:F

    .line 81
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->RecyclerViewIndicator_normal_color:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 83
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mNormalPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->RecyclerViewIndicator_select_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 87
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mSelectPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getItemCount()I
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method private measureHeight(I)I
    .locals 3

    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 168
    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mRadius:F

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, p0

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr v2, p0

    float-to-int p0, v2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 171
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 5

    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->getItemCount()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mRadius:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mInterval:F

    mul-float/2addr v1, p0

    add-float/2addr v2, v1

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr v2, p0

    float-to-int p0, v2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 140
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 179
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    .line 188
    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mPosition:I

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    .line 190
    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mPosition:I

    sub-int v2, v0, v2

    sub-int/2addr v2, v4

    .line 194
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    if-ne v2, v5, :cond_2

    .line 198
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mSelectPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 200
    :cond_2
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mNormalPaint:Landroid/graphics/Paint;

    :goto_1
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v4

    int-to-float v7, v7

    .line 202
    iget v8, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mRadius:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    iget v9, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mInterval:F

    int-to-float v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    .line 203
    invoke-virtual {p1, v7, v3, v8, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->measureWidth(I)I

    move-result p1

    .line 122
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->measureHeight(I)I

    move-result p2

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 218
    check-cast p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;

    .line 219
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 220
    iget p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;->mPosition:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mPosition:I

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 210
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 212
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mPosition:I

    iput p0, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator$SavedState;->mPosition:I

    return-object v1
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RecyclerView does not have adapter instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSelectPosition(I)V
    .locals 3

    .line 108
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectPosition position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->getItemCount()I

    move-result v0

    .line 110
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mPosition:I

    if-lt v1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 111
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mPosition:I

    goto :goto_0

    .line 113
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->mPosition:I

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

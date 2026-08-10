.class public Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;
.super Landroid/view/ViewGroup;
.source "Marker.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# static fields
.field private static final ELEVATION_DP:I = 0x8

.field private static final PADDING_DP:I = 0x1


# instance fields
.field mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

.field private mNumber:Landroid/widget/TextView;

.field private mSeparation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V
    .locals 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar:[I

    sget v2, Lcom/transsion/camera/feature/arcore/R$attr;->discreteSeekBarStyle:I

    sget v3, Lcom/transsion/camera/feature/arcore/R$style;->Widget_DiscreteSeekBar:I

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 55
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 56
    sget v2, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_indicatorTextAppearance:I

    sget v3, Lcom/transsion/camera/feature/arcore/R$style;->Widget_DiscreteIndicatorTextAppearance:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 58
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v3, v1, p3, v1, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/16 p3, 0x11

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 p3, 0x5

    invoke-static {p1, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompat;->setTextDirection(Landroid/widget/TextView;I)V

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 73
    invoke-virtual {p0, p4}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->resetSizes(Ljava/lang/String;)V

    .line 75
    iput p6, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mSeparation:I

    .line 76
    sget p1, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_indicatorColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 77
    new-instance p3, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-direct {p3, p1, p5}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;-><init>(Landroid/content/res/ColorStateList;I)V

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    .line 78
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;->setMarkerListener(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;->setExternalOffset(I)V

    .line 83
    sget p1, Lcom/transsion/camera/feature/arcore/R$styleable;->DiscreteSeekBar_dsb_indicatorElevation:I

    iget p3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x41000000    # 8.0f

    mul-float/2addr p3, p4

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    .line 84
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompat;->setOutlineProvider(Landroid/view/View;Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;)V

    .line 88
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;->stop()V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;->animateToNormal()V

    return-void
.end method

.method public animateOpen()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;->stop()V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;->animateToPressed()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 109
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 145
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 150
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->animateOpen()V

    return-void
.end method

.method public onClosingComplete()V
    .locals 1

    .line 182
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 189
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;->stop()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    .line 128
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 130
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    .line 132
    iget-object p5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mWidth:I

    add-int v1, p1, v0

    add-int/2addr v0, p2

    invoke-virtual {p5, p1, p2, v1, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 115
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 116
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 121
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mWidth:I

    int-to-float v1, v0

    const v2, 0x3fb47ae1    # 1.41f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 122
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mSeparation:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onOpeningComplete()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    :cond_0
    return-void
.end method

.method public resetSizes(Ljava/lang/String;)V
    .locals 4

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 99
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mWidth:I

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mWidth:I

    const/16 v2, 0x33

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;->setColors(II)V

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->mMarkerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

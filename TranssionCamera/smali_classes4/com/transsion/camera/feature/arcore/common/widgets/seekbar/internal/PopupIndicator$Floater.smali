.class Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;
.super Landroid/widget/FrameLayout;
.source "PopupIndicator.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Floater"
.end annotation


# instance fields
.field private mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

.field private mOffset:I

.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V
    .locals 7

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    .line 203
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    .line 205
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    const/16 p4, 0x33

    invoke-direct {p2, p3, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    return-object p0
.end method


# virtual methods
.method public onClosingComplete()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->dismissComplete()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 218
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 220
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mOffset:I

    sub-int/2addr p2, p1

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->measureChildren(II)V

    .line 211
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 212
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 213
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onOpeningComplete()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->setColors(II)V

    return-void
.end method

.method public setFloatOffset(I)V
    .locals 2

    .line 225
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mOffset:I

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->mMarker:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    .line 231
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompat;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

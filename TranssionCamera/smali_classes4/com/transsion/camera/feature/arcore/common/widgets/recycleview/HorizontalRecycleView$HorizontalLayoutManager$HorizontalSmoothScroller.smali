.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager$HorizontalSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalSmoothScroller"
.end annotation


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 250.0f


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 964
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager$HorizontalSmoothScroller;->this$1:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    .line 965
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    sub-int/2addr p4, p3

    .line 970
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    return p3
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 975
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x437a0000    # 250.0f

    div-float/2addr p1, p0

    return p1
.end method

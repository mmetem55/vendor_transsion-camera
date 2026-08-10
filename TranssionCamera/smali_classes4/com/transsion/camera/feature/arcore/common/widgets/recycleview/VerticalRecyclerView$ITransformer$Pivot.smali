.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;
.super Ljava/lang/Object;
.source "VerticalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pivot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot$Y;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot$X;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot$Axis;
    }
.end annotation


# static fields
.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field private static final PIVOT_CENTER:I = -0x3e9

.field private static final PIVOT_END:I = -0x3ea

.field private static final PIVOT_START:I = -0x3e8


# instance fields
.field private mAxis:I

.field private mPivotPoint:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;->mAxis:I

    .line 661
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;->mPivotPoint:I

    return-void
.end method


# virtual methods
.method public getAxis()I
    .locals 0

    .line 703
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;->mAxis:I

    return p0
.end method

.method public setOn(Landroid/view/View;)V
    .locals 4

    .line 665
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;->mAxis:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    .line 666
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;->mPivotPoint:I

    packed-switch p0, :pswitch_data_0

    int-to-float p0, p0

    .line 677
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 668
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 671
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v2

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 674
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 684
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;->mPivotPoint:I

    packed-switch p0, :pswitch_data_1

    int-to-float p0, p0

    .line 695
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 686
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 689
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v2

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 692
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3ea
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

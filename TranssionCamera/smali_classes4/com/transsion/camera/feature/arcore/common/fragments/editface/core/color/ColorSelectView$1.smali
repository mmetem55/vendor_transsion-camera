.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ColorSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->init([[DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p4

    .line 59
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)[[D

    move-result-object p0

    array-length p0, p0

    sub-int/2addr p0, p3

    if-ne p2, p0, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    const/16 p0, 0x15

    if-eqz v0, :cond_2

    .line 60
    invoke-static {p0}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result p2

    goto :goto_2

    :cond_2
    move p2, p4

    :goto_2
    if-eqz p3, :cond_3

    invoke-static {p0}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result p0

    goto :goto_3

    :cond_3
    move p0, p4

    :goto_3
    invoke-virtual {p1, p2, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

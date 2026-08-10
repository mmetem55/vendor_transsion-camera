.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$3;
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

.field final synthetic val$l30:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$3;->val$l30:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 77
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-static {p4}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)[[D

    move-result-object p4

    array-length p4, p4

    .line 78
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 79
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$3;->val$l30:I

    add-int/lit8 p4, p4, -0x1

    const/4 p3, 0x0

    if-ne p2, p4, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    move p2, p3

    .line 81
    :goto_0
    invoke-virtual {p1, p0, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

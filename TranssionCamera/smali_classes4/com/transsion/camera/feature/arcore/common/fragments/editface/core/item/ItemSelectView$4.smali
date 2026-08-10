.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ItemSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

.field final synthetic val$hL:I

.field final synthetic val$topNormalL:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;II)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->val$hL:I

    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->val$topNormalL:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    .line 126
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result p3

    rem-int p3, p2, p3

    .line 127
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result p3

    rem-int p3, p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    .line 128
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result p3

    if-ge p2, p3, :cond_0

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->val$hL:I

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->val$topNormalL:I

    .line 129
    :goto_0
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {p4}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result v0

    div-int/2addr p4, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result v0

    mul-int/2addr p4, v0

    const/4 v0, 0x0

    if-ge p2, p4, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;->val$hL:I

    .line 130
    :goto_1
    invoke-virtual {p1, v0, p3, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

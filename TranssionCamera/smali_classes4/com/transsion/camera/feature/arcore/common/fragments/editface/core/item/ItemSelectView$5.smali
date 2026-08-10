.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;
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

.field final synthetic val$wL:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;III)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->val$wL:I

    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->val$hL:I

    iput p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->val$topNormalL:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 137
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 138
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result p3

    rem-int p3, p2, p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->val$wL:I

    goto :goto_0

    :cond_0
    move p3, p4

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result v0

    rem-int v0, p2, v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->val$wL:I

    goto :goto_1

    :cond_1
    move v0, p4

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result v1

    if-ge p2, v1, :cond_2

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->val$hL:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->val$topNormalL:I

    .line 141
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result v3

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result v3

    mul-int/2addr v2, v3

    if-ge p2, v2, :cond_3

    goto :goto_3

    :cond_3
    iget p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;->val$hL:I

    .line 142
    :goto_3
    invoke-virtual {p1, p3, v1, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

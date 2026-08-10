.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;
.super Ljava/lang/Object;
.source "ItemSelectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->scrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;I)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$dimen;->x6dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/arcore/R$dimen;->color_item_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 166
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-gez v2, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I

    move-result v3

    int-to-float v3, v3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 169
    iget v6, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->val$pos:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    float-to-double v6, v6

    add-double/2addr v6, v4

    add-int/2addr v1, v0

    int-to-double v4, v1

    mul-double/2addr v6, v4

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    sub-double/2addr v6, v4

    int-to-float v0, v2

    div-float/2addr v0, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    .line 170
    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sub-double/2addr v6, v0

    double-to-int v0, v6

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method

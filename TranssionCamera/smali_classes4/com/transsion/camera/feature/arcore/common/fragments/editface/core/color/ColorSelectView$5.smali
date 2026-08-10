.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;
.super Ljava/lang/Object;
.source "ColorSelectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->scrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;I)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$dimen;->color_item_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/arcore/R$dimen;->color_item_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-gez v2, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 110
    iget v6, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;->val$pos:I

    int-to-double v6, v6

    add-double/2addr v6, v4

    add-int/2addr v1, v0

    int-to-double v4, v1

    mul-double/2addr v6, v4

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    sub-double/2addr v6, v3

    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    .line 111
    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-double v0, v1

    sub-double/2addr v6, v0

    double-to-int v0, v6

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method

.class Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "OSRefreshRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

.field final synthetic val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic val$spanCount:I

.field final synthetic val$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;ILandroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput p3, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;->val$spanCount:I

    iput-object p4, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;->val$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    .line 123
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;->val$spanCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;->val$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->access$000(Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;)Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;->getHeaderCount()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

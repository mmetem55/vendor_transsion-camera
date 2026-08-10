.class public Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "MoreLinearListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoreLinearLayoutManager"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 635
    invoke-direct {p0, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 640
    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager$1;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;Landroid/content/Context;)V

    .line 646
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 647
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

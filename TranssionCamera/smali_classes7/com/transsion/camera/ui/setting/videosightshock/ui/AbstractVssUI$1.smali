.class Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AbstractVssUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initSelectRecyclerViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void
.end method

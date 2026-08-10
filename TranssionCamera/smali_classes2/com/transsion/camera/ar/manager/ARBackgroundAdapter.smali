.class public Lcom/transsion/camera/ar/manager/ARBackgroundAdapter;
.super Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;
.source "ARBackgroundAdapter.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 24
    new-instance p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$ItemVH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/arcore/R$layout;->ar_item_ar_background_image:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$ItemVH;-><init>(Landroid/view/View;)V

    return-object p0
.end method

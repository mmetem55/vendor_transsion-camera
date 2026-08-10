.class public Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VideoSightShockItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final itemLayout:Landroid/widget/FrameLayout;

.field public final ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field public final ivItemSign:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

.field public final tvItemLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field public final tvItemTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Landroid/view/View;)V
    .locals 4

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    .line 50
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901ad

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->itemLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0903c2

    .line 53
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const v2, 0x7f09024e

    .line 54
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v3, 0x7f09024f

    .line 55
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    const v3, 0x7f0904dd

    .line 56
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 p2, 0x1

    .line 58
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 59
    new-instance p2, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 67
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->access$000(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {v1, p0, p2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 68
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->access$000(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;)I

    move-result p0

    invoke-virtual {v2, p0, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.class Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder$1;
.super Landroid/view/ViewOutlineProvider;
.source "VideoSightShockItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

.field final synthetic val$this$0:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder$1;->this$1:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder$1;->val$this$0:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder$1;->this$1:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->itemLayout:Landroid/widget/FrameLayout;

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070790

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

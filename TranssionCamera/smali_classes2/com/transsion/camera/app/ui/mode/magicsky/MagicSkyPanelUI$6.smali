.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MagicSkyPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$6;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 390
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 392
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 393
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 394
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p4

    .line 395
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$6;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$200(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 396
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$6;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$200(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$6;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$200(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-nez p2, :cond_1

    .line 399
    invoke-virtual {p1, v0, p4, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2

    .line 401
    invoke-virtual {p1, v2, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 403
    :cond_2
    invoke-virtual {p1, v2, p4, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

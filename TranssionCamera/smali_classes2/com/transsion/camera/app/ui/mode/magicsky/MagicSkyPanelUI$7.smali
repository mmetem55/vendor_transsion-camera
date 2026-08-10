.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;
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

    .line 408
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 412
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    .line 414
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 416
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v0

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$200(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 419
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$200(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 420
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$200(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 421
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$200(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    .line 422
    invoke-static {v5}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$200(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 423
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$300(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)I

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_9

    const/16 v6, 0xb4

    if-eq v5, v6, :cond_6

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_3

    if-nez p4, :cond_1

    neg-int p3, v4

    .line 454
    invoke-virtual {p1, p3, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_2

    neg-int p3, v4

    .line 456
    invoke-virtual {p1, p3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    neg-int p3, v4

    .line 458
    invoke-virtual {p1, p3, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    if-nez p4, :cond_4

    .line 444
    invoke-virtual {p1, v3, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_5

    .line 446
    invoke-virtual {p1, v2, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 448
    :cond_5
    invoke-virtual {p1, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_6
    if-nez p4, :cond_7

    neg-int p3, v4

    .line 435
    invoke-virtual {p1, p3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_7
    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_8

    neg-int p3, v4

    .line 437
    invoke-virtual {p1, p3, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_8
    neg-int p3, v4

    .line 439
    invoke-virtual {p1, p3, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_9
    if-nez p4, :cond_a

    .line 426
    invoke-virtual {p1, v1, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_a
    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_b

    .line 428
    invoke-virtual {p1, v3, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 430
    :cond_b
    invoke-virtual {p1, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 462
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$300(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)I

    move-result p0

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

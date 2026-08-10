.class public Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SkyItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemVH"
.end annotation


# instance fields
.field public final focusView:Landroid/view/View;

.field public final itemView:Landroid/widget/ImageView;

.field public final viewName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090431

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    const v0, 0x7f090432

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->focusView:Landroid/view/View;

    const v0, 0x7f090433

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->viewName:Landroid/widget/TextView;

    return-void
.end method

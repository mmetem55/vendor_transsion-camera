.class public Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectItemRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final iv:Landroid/widget/ImageView;

.field final ivTitleView:Landroid/widget/TextView;

.field final ll:Landroid/view/ViewGroup;

.field final rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 162
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 163
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->feature_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 164
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->ll_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    .line 165
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->iv_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 166
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->iv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    return-void
.end method

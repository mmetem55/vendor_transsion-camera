.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AvatarItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemVH"
.end annotation


# instance fields
.field public final focusView:Landroid/view/View;

.field public final itemView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 34
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->arcore_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    .line 35
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->arcore_item_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;->focusView:Landroid/view/View;

    return-void
.end method

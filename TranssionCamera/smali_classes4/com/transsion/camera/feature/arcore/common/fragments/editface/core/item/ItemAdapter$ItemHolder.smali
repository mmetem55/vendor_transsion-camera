.class public Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field public final mItemImg:Landroid/widget/ImageView;

.field public final mSelect:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;Landroid/view/View;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    .line 70
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->bottom_item_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;->mItemImg:Landroid/widget/ImageView;

    .line 72
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->bottom_item_img_select:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;->mSelect:Landroid/view/View;

    return-void
.end method

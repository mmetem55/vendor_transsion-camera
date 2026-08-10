.class public Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorHolder"
.end annotation


# instance fields
.field public final mItemImg:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

.field public final mSelect:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;Landroid/view/View;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    .line 100
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->bottom_item_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->mItemImg:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    .line 102
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->bottom_item_img_select:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->mSelect:Landroid/view/View;

    return-void
.end method

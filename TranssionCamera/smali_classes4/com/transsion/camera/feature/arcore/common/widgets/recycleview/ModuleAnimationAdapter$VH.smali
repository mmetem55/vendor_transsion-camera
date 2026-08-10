.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModuleAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VH"
.end annotation


# instance fields
.field mItemImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 34
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->animation_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    return-void
.end method

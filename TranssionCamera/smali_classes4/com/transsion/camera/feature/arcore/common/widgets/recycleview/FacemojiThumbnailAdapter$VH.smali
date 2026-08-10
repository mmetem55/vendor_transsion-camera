.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FacemojiThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VH"
.end annotation


# instance fields
.field mDeleteImg:Landroid/view/View;

.field public mItemImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 47
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->thumbnail_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    .line 48
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->delete_icon_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mDeleteImg:Landroid/view/View;

    return-void
.end method

.class Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MoreLinearListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaceHolderItemViewHolder"
.end annotation


# instance fields
.field private final mMoreLinearItemBackground:Landroid/widget/ImageView;

.field private final mMoreTabPlaceHolder:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Landroid/view/View;)V
    .locals 1

    .line 294
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    .line 295
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090264

    .line 296
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->mMoreLinearItemBackground:Landroid/widget/ImageView;

    const v0, 0x7f0902dc

    .line 297
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->mMoreTabPlaceHolder:Landroid/widget/ImageView;

    const/4 p0, 0x0

    .line 298
    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->playMoreModeGuideAnim(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->mMoreLinearItemBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->mMoreTabPlaceHolder:Landroid/widget/ImageView;

    return-object p0
.end method

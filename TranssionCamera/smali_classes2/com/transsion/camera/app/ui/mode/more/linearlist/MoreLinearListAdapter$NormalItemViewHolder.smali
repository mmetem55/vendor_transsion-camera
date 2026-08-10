.class public Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MoreLinearListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NormalItemViewHolder"
.end annotation


# instance fields
.field private final mMoreLinearItemBackground:Landroid/widget/ImageView;

.field private final mMoreLinearItemText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 284
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090264

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->mMoreLinearItemBackground:Landroid/widget/ImageView;

    const v0, 0x7f090266

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->mMoreLinearItemText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->mMoreLinearItemText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->mMoreLinearItemBackground:Landroid/widget/ImageView;

    return-object p0
.end method

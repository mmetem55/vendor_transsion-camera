.class public Lcom/transsion/camera/feature/slimbody/holder/PresetHolder;
.super Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
.source "PresetHolder.java"


# instance fields
.field private mIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/holder/RvHolder;-><init>(Landroid/view/View;)V

    .line 30
    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->item_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/holder/PresetHolder;->mIconView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;III)V
    .locals 1

    .line 14
    instance-of p4, p1, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    if-eqz p4, :cond_2

    .line 15
    check-cast p1, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    .line 16
    iget p4, p1, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->drawableId:I

    if-lez p4, :cond_0

    .line 17
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/holder/PresetHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object p4, p0, Lcom/transsion/camera/feature/slimbody/holder/PresetHolder;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->titleId:I

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setId(I)V

    :cond_0
    if-ne p2, p3, :cond_1

    .line 21
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    :goto_0
    return-void
.end method

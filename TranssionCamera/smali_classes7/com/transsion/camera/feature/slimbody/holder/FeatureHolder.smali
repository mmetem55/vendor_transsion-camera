.class public Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;
.super Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
.source "FeatureHolder.java"


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/holder/RvHolder;-><init>(Landroid/view/View;)V

    .line 15
    iput p2, p0, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;->mViewType:I

    .line 16
    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->item_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;->mIconView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;III)V
    .locals 2

    .line 21
    instance-of v0, p1, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    if-eqz v0, :cond_3

    .line 22
    check-cast p1, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    .line 23
    iget v0, p1, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->drawableId:I

    if-lez v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->titleId:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    if-ne p2, p4, :cond_1

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 31
    :cond_1
    iget-object p4, p0, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    if-ne p2, p3, :cond_2

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 37
    :cond_2
    iget p1, p0, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;->mViewType:I

    sget p2, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_back:I

    if-eq p1, p2, :cond_3

    .line 38
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    :goto_0
    return-void
.end method

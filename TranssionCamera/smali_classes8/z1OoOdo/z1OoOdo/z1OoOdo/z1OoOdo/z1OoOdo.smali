.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.source ""

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;


# instance fields
.field public z1OoOdo:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOif:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

.field public z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0

    :cond_1
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0

    :cond_2
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0

    :cond_3
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    return-object v0
.end method

.method public z1OoOdo()V
    .locals 1

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_0
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_1
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_2
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOint:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->cancelBounceAnimation()V

    :cond_3
    return-void
.end method

.method public z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V
    .locals 0

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    return-void
.end method

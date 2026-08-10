.class public Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;
.super Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
.source "SlimBodyHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
        "Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final mIconView:Landroid/widget/ImageView;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;-><init>(Landroid/view/View;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mMainHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    .line 26
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    .line 27
    sget p0, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_shadow_color:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public bindHolder(Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;IIZZ)V
    .locals 1

    .line 33
    iget p4, p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->drawableId:I

    if-lez p4, :cond_0

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->titleId:I

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/4 p4, 0x1

    if-ne p2, p3, :cond_1

    .line 38
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 39
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 42
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 44
    :goto_0
    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    if-ne p1, p4, :cond_2

    if-eqz p5, :cond_2

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mDisableStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_reset_disable:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bindHolder(Ljava/lang/Object;IIZZ)V
    .locals 0

    .line 15
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->bindHolder(Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;IIZZ)V

    return-void
.end method

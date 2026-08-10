.class public Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FunArAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private final mMusicView:Landroid/widget/ImageView;

.field private final mSelectView:Landroid/widget/ImageView;

.field root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->root:Landroid/view/View;

    .line 39
    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->fun_ar_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 40
    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->fun_ar_music:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mMusicView:Landroid/widget/ImageView;

    .line 41
    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->fun_ar_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mSelectView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method initViewByItem(Lcom/transsion/camera/feature/funvideo/data/EffectItem;Z)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getIconRes()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    .line 57
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mSelectView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 59
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mSelectView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->hasMusic()Z

    move-result p1

    if-nez p1, :cond_3

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mMusicView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 65
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->mMusicView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.class public Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;
.super Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;
.source "FunArAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter<",
        "Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;",
        "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSelect:I


# direct methods
.method public static synthetic $r8$lambda$nEoo8e58agq0AdJrP2b_zxMpJUI(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunArAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->mSelect:I

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCurSelect()I
    .locals 0

    .line 111
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->mSelect:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;I)V
    .locals 4

    .line 87
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    .line 88
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$1;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;)V

    .line 95
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x3f6b851f    # 0.92f

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    if-eqz v0, :cond_1

    .line 97
    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->mSelect:I

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->initViewByItem(Lcom/transsion/camera/feature/funvideo/data/EffectItem;Z)V

    .line 98
    iget-object p1, p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;
    .locals 1

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/funvideo/R$layout;->funvideo_recycler_view_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 82
    new-instance p1, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method protected setSelect(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->mSelect:I

    return-void
.end method

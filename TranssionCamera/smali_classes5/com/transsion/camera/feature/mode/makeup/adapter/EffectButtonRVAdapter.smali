.class public Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;
.source "EffectButtonRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter<",
        "Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;


# direct methods
.method public static synthetic $r8$lambda$cmWKg7nqieAEmsHgEKh9-By3rsM(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->lambda$onBindViewHolder$0(ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EffectButtonRVAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;ILandroid/view/View;)V
    .locals 0

    .line 59
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/utils/CommonUtils;->isFastClick()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 60
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "too fast click"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 63
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mIntensityDefault:Z

    if-eqz p1, :cond_1

    .line 64
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "restore item is disabled!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;->onItemClick(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;I)V
    .locals 11

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 42
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x70000

    if-ne v4, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 44
    :goto_0
    iget v4, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    if-ne p2, v4, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    .line 45
    :goto_1
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;->getIcon()I

    move-result v9

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;->getTitle()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    move v8, v1

    .line 44
    invoke-virtual/range {v5 .. v10}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->onBindViewHolderInternal(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZZILjava/lang/String;)V

    .line 48
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;I)V

    .line 56
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x3f6147ae    # 0.88f

    invoke-static {v4, v5, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 57
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 58
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;

    return-void
.end method

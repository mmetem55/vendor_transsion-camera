.class public Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VoiceEffectAdapter.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;",
        ">;",
        "Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;"
    }
.end annotation


# instance fields
.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrPosition:I


# direct methods
.method public static synthetic $r8$lambda$wiBfH6c-9A7nilPuU455bWy-a7c(Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->list:Ljava/util/List;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->mCurrPosition:I

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-long v4, p2

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->onBindViewHolder(Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;I)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;

    .line 44
    iget-object v1, p1, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->getmImageId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v1, p1, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->getmTitle()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->mCurrPosition:I

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 47
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;
    .locals 2

    .line 38
    new-instance p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/arcore/R$layout;->ar_item_voice_effect:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public updateCurrentPosition(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->mCurrPosition:I

    .line 58
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

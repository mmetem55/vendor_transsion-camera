.class public Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AudioIconAdapter.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;",
        ">;",
        "Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;"
    }
.end annotation


# instance fields
.field private mCurrPosition:I

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter;->mResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance p3, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->item_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/camera/feature/arcore/R$id;->item_image:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;

    if-eqz v1, :cond_2

    .line 56
    iget-object v2, v1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->getmTitle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v2, v1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;->getmImageId()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter;->mCurrPosition:I

    if-ne p0, p1, :cond_1

    .line 59
    iget-object p0, v1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, v1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public updateCurrentPosition(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter;->mCurrPosition:I

    .line 42
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

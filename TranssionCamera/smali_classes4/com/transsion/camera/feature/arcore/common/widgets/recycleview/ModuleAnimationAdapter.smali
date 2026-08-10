.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;
.super Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;
.source "ModuleAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter<",
        "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;",
        "Lcom/faceunity/pta_art/entity/BundleRes;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIRST_SELECTED_POSITION_OF_ARCORE:I

.field private static TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mIsExpandUI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModuleAnimationAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;Z)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;-><init>(Ljava/util/List;)V

    .line 40
    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;->mIsExpandUI:Z

    return-void
.end method


# virtual methods
.method protected notifyLongPressState(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;I)V
    .locals 2

    .line 45
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/faceunity/pta_art/entity/BundleRes;

    .line 47
    iget-object p2, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    iget p0, p0, Lcom/faceunity/pta_art/entity/FURes;->resId:I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;
    .locals 2

    .line 53
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;->mIsExpandUI:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/camera/feature/arcore/R$layout;->module_animation_item_fold:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/camera/feature/arcore/R$layout;->module_animation_item:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter$VH;-><init>(Landroid/view/View;)V

    return-object p2
.end method

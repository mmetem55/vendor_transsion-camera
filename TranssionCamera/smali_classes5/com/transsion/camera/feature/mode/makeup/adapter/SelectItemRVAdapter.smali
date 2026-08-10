.class public abstract Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectItemRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStates:[[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisableStateList:Landroid/content/res/ColorStateList;

.field protected mIntensityDefault:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mScreenFormType:I

.field protected mSelect:I

.field private mStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$17OG0xMrzxzzk8GRnA-dB5z2m8o(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->lambda$onBindViewHolderInternal$0(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SelectItemRVAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 25
    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->PRESSED_STATE_SET:[I

    new-array v1, v0, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    .line 29
    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->SELECTED_STATE_SET:[I

    new-array v2, v0, [I

    aput v3, v2, v3

    .line 33
    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->NORMAL_STATE_SET:[I

    const/4 v4, 0x2

    new-array v4, v4, [[I

    aput-object v1, v4, v3

    aput-object v2, v4, v0

    .line 35
    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    .line 46
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->initColorStateList()V

    return-void
.end method

.method private initColorStateList()V
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_disable_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_selected_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 97
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 99
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->sStates:[[I

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v1, 0x1

    aput v2, v6, v1

    invoke-direct {v3, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mStateList:Landroid/content/res/ColorStateList;

    .line 100
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v5, [I

    aput v0, v3, v7

    aput v0, v3, v1

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mDisableStateList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private static synthetic lambda$onBindViewHolderInternal$0(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;)V
    .locals 1

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSelect()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    return p0
.end method

.method public notifyItemChangedSelected(I)V
    .locals 1

    .line 64
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    if-eq v0, p1, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 67
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method protected onBindViewHolderInternal(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZZILjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 128
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_item_cover_selected:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 130
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 139
    :cond_0
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_item_cover_transparent:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 141
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 145
    :goto_0
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-eqz p3, :cond_1

    .line 148
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mIntensityDefault:Z

    if-eqz p2, :cond_1

    .line 149
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    sget p3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_restore_disable:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 150
    iget-object p1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mDisableStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;
    .locals 3

    .line 106
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->feature_makeup_item:I

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 111
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 112
    iget-object p0, p2, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 p1, 0x5a

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p0, p2, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :goto_0
    return-object p2
.end method

.method public setSelect(I)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    if-eq v0, p1, :cond_0

    .line 55
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    :cond_0
    return-void
.end method

.method public updateIntensityDefault(Z)V
    .locals 0

    return-void
.end method

.method public updateScreenFormType(I)V
    .locals 1

    .line 79
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    if-eq v0, p1, :cond_0

    .line 80
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

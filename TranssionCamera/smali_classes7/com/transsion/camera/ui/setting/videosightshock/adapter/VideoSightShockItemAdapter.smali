.class public Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VideoSightShockItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;,
        Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile isEnable:Z

.field private mCurrentPosition:I

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLowLight:Z

.field private mListener:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;

.field private volatile mNeedAnimation:Z

.field private mOrientation:I


# direct methods
.method public static synthetic $r8$lambda$e1St5gNq0ief7hWDJj6hMu9qmyA(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->lambda$onBindViewHolder$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m3zK0Hio7F6kjASo8Mg8ErpvWu4(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;",
            ">;II)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mNeedAnimation:Z

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->isEnable:Z

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mDataList:Ljava/util/List;

    .line 74
    iput p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mOrientation:I

    .line 75
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mIsLowLight:Z

    .line 76
    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mOrientation:I

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V
    .locals 2

    .line 104
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 105
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 107
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    if-nez p0, :cond_0

    .line 108
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 109
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILandroid/view/View;)V
    .locals 0

    .line 129
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->isEnable:Z

    if-eqz p2, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->updateCurrentPosition(I)V

    :cond_0
    return-void
.end method

.method private updateCurrentPosition(I)V
    .locals 2

    .line 168
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mListener:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    .line 176
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 177
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 179
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    return-void
.end method

.method private updateItemTitleLayoutIfNeed(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V
    .locals 5

    .line 145
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mOrientation:I

    rem-int/lit16 p0, p0, 0xb4

    const/16 v1, 0x51

    const v2, 0x7f07079b

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 148
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f07079c

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 148
    invoke-virtual {v0, v3, v3, v3, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f07079f

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 151
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 152
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    .line 155
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f07079d

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 154
    invoke-virtual {v0, v3, v3, v3, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 156
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f0707a0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 157
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 158
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 161
    :goto_0
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 164
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;I)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    .line 94
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->updateItemTitleLayoutIfNeed(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V

    .line 96
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    .line 97
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mIsLowLight:Z

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    const v3, 0x7f080ca2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    const v3, 0x7f080ca3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :goto_0
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 113
    :cond_1
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    const v3, 0x7f080ca4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 115
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 116
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 117
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 120
    :goto_1
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 121
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mOrientation:I

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mNeedAnimation:Z

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 122
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mNameId:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3f6b851f    # 0.92f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 128
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;
    .locals 3

    .line 86
    new-instance p2, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCurrentPosition(IZ)V
    .locals 1

    .line 183
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    .line 184
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 188
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->isEnable:Z

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mListener:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;

    return-void
.end method

.method public updateRingScreenLight(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mIsLowLight:Z

    .line 137
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

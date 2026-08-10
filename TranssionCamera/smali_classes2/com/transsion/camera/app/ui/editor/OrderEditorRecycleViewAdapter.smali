.class public Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OrderEditorRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;,
        Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final ASDMODE:Ljava/lang/String;

.field private final MAINTITLE:Ljava/lang/String;

.field private final SUBTITLE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mCurrentCamera:Ljava/lang/String;

.field private final mMainFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

.field private mMainModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation
.end field

.field public mModesNumberInTab:I

.field private mOrderEditorUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

.field private mOtherModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 24
    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->ASDMODE:Ljava/lang/String;

    const-string v0, "MAINFUCTION"

    .line 25
    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->MAINTITLE:Ljava/lang/String;

    const-string v1, "OTHERFUCTION"

    .line 26
    iput-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->SUBTITLE:Ljava/lang/String;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainModeList:Ljava/util/List;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherModeList:Ljava/util/List;

    const-string v2, "0"

    .line 31
    iput-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 38
    new-instance v2, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 39
    new-instance v3, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 40
    iput-object v0, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100242

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 42
    iput-object v1, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100243

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 44
    new-instance p1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    const/4 v0, 0x1

    invoke-direct {p1, v2, v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 45
    new-instance p1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-direct {p1, v3, v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 46
    iput p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    return-void
.end method


# virtual methods
.method public getFinalOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 157
    new-instance v2, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 158
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 159
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 160
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    iput v1, v2, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 161
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->isTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 142
    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getMainModeCount()I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    return v0
.end method

.method public getOrderEditorUIItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;I)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 70
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getItemViewType(I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 71
    iget-object p2, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f0600b6

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 75
    :cond_0
    iget-object p2, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object p2, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f06043f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    iget-object p0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 80
    iget-object p0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 81
    iget-object p0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 84
    :cond_1
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 53
    new-instance p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00f8

    .line 54
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f0c00f9

    if-ne p2, v1, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 57
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 58
    invoke-virtual {p2, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f08059c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 63
    :cond_1
    new-instance p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 63
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 64
    invoke-virtual {p2, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public updateModeList(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 112
    iput-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    .line 113
    iput p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    .line 114
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 115
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x6

    if-ge p1, p3, :cond_0

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainModeList:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainModeList:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherModeList:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p3, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    add-int/lit8 p2, p2, 0x1

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

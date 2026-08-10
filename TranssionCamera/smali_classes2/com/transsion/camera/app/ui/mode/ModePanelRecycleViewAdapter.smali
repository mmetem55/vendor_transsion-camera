.class public Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModePanelRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Ljava/lang/String;

.field private mItemClickable:Z

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mModeUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private final mSelectedColorList:Landroid/content/res/ColorStateList;

.field private final mUnSelectedColorList:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$ItuPc9CxT57BSJ_dRg0AuIYYD2M(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$m1cipCYy6dt7d4M6BOecHQrXhX0(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    .line 44
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    const p2, 0x7f060408

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mSelectedColorList:Landroid/content/res/ColorStateList;

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f060440

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mUnSelectedColorList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)Z
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->enterEditorFragment(Landroid/app/Fragment;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;I)V
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 59
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f080b6b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    iget-boolean v2, p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mIsSellingPoint:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getSPVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0809c9

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 64
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v3

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    .line 71
    iget-object v2, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mSelectedColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 74
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f060408

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    const-string v2, "sans-serif-medium"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 77
    :cond_1
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mUnSelectedColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 78
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f06043f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    :goto_1
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->isSecureCamera()Z

    move-result p2

    if-nez p2, :cond_2

    .line 90
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;
    .locals 2

    .line 52
    new-instance p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 52
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00fd

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateItemClickable(Z)V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    if-eq v0, p1, :cond_0

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    .line 117
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public updateModeData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    return-void
.end method

.class public Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FilterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolder"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private final mSelectedBorder:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    .line 60
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->filter_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mIconView:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->filter_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->filter_select_border:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method initViewByItem(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;ZZ)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getDrawableRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getTitleRes()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->filter_normal_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p3, :cond_0

    .line 72
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->filter_selected_cover_screen_light:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->filter_selected_cover:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->filter_selected_text_color:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 81
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->filter_normal_text_color:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1
    return-void
.end method

.method updateSizeAndOrientation(II)V
    .locals 1

    if-lez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 90
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

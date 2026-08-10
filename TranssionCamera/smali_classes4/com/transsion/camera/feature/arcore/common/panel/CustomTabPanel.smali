.class public Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;
.super Ljava/lang/Object;
.source "CustomTabPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;
    }
.end annotation


# instance fields
.field private final adapter:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->mDataList:Ljava/util/List;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->selectedIndex:I

    .line 30
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;-><init>(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->adapter:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;

    .line 33
    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->edit_face_tab_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->selectedIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private setScrollPosition(IF)V
    .locals 3

    .line 42
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float v2, v0, v2

    sub-float/2addr v1, v2

    mul-float/2addr p2, v0

    sub-float/2addr v1, p2

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    float-to-int p2, v1

    .line 46
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IF)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->setScrollPosition(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 50
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->selectedIndex:I

    .line 51
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->adapter:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public releaseResource()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;

    .line 125
    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;->getTabView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmap(Landroid/widget/ImageView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->selectedIndex:I

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->adapter:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pagerAdapter not is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "viewpager not is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

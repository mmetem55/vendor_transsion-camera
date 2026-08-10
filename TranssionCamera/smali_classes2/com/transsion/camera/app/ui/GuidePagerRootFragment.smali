.class public Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
.super Landroid/app/Fragment;
.source "GuidePagerRootFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/transsion/camera/app/ui/GuidePagerAdapter;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDotsLayout:Landroid/widget/LinearLayout;

.field private mExitComplete:Z

.field private mGuidePager:Landroidx/viewpager/widget/ViewPager;

.field private mPagerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2xRaynI7o4_BRD5HzfyD-H0N20Q(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->lambda$initViewPager$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mExitComplete:Z

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mExitComplete:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    return-object p0
.end method

.method private createDotView()Landroid/widget/ImageView;
    .locals 5

    .line 109
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f080692

    .line 114
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private initDots()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    move v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->createDotView()Landroid/widget/ImageView;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v3, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f080691

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 104
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private initViewPager()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V

    invoke-static {v2, v1, v3}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->newInstance(IILandroid/view/View$OnClickListener;)Lcom/transsion/camera/app/ui/GuidePagerItemFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Lcom/transsion/camera/app/ui/GuidePagerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/app/ui/GuidePagerAdapter;-><init>(Landroid/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mAdapter:Lcom/transsion/camera/app/ui/GuidePagerAdapter;

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private synthetic lambda$initViewPager$0(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exitWithFadeOut()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/transsion/camera/app/ui/GuidePagerRootFragment;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "param1"

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public exit()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "guide_pager_root"

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public exitWithFadeOut()V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mExitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mExitComplete:Z

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mAdapter:Lcom/transsion/camera/app/ui/GuidePagerAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/GuidePagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;

    .line 124
    new-instance v1, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->startExitAnim(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c009b

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090259

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f09035f

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->initViewPager()V

    .line 59
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->initDots()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 v0, 0x4e

    .line 75
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 76
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGuideFragmentEndTime()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 v0, 0x6b

    .line 67
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.class Lcom/transsion/widgetslib/view/ViewPagerTabs$2;
.super Ljava/lang/Object;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/ViewPagerTabs;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

.field final synthetic val$viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 641
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 642
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$900(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Lcom/transsion/widgetslib/view/ViewPagerTabs$1;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 650
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1100(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V

    .line 651
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->getDefaultViewPagerItemIndex()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.class Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/ViewPagerTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Lcom/transsion/widgetslib/view/ViewPagerTabs$1;)V
    .locals 0

    .line 842
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 860
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1700(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1400(Lcom/transsion/widgetslib/view/ViewPagerTabs;IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1502(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I

    .line 852
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1600(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    .line 853
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->access$1200(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->onPageScrolled(IF)V

    :cond_0
    return-void
.end method

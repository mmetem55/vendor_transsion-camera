.class Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "OSWatchPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$1;->this$0:Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 76
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$1;->this$0:Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->pageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 69
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$1;->this$0:Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->whenPageScroll(IFI)V

    return-void
.end method

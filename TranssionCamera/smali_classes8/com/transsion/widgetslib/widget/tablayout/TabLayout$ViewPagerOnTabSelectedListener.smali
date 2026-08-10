.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 3390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3391
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 0

    .line 3396
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

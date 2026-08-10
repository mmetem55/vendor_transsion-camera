.class Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V
    .locals 0

    .line 3411
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 3416
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 3421
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

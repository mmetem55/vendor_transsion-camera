.class Lcom/transsion/widgetslib/view/ViewPagerTabs$4;
.super Ljava/lang/Object;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/ViewPagerTabs;->addTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$4;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    iput p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$4;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 799
    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$4;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    iget p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$4;->val$finalI:I

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabClick(I)V

    return-void
.end method

.class Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout$1;
.super Ljava/lang/Object;
.source "CustomTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

.field final synthetic val$currentPosition:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;I)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout$1;->val$currentPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout$1;->val$currentPosition:I

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

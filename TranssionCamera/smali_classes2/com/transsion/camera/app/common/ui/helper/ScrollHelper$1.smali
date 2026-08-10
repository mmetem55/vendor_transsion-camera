.class Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->this$0:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 86
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->mScrolled:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 87
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->mScrolled:Z

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->this$0:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->access$000(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->mScrolled:Z

    :cond_1
    return-void
.end method

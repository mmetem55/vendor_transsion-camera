.class Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "GallerySnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 75
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$1;->mScrolled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$1;->mScrolled:Z

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->access$000(Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$1;->mScrolled:Z

    :cond_1
    return-void
.end method

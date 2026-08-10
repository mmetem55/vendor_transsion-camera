.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "GalleryRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView$ISelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mScrolled:Z

.field private mSelectListener:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView$ISelectListener;

.field private mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

.field private mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mScrolled:Z

    return-void
.end method

.method private notifySelect(I)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mSelectListener:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView$ISelectListener;

    if-eqz p0, :cond_0

    .line 101
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView$ISelectListener;->onSelect(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(I)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_2

    .line 80
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mScrolled:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mScrolled:Z

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->updateRecycleViewScrollState(Z)V

    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 93
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 95
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->notifySelect(I)V

    :cond_2
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mScrolled:Z

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->updateRecycleViewScrollState(Z)V

    :cond_1
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 66
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    .line 73
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layout must be GalleryLayoutManager!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSelectListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView$ISelectListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mSelectListener:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView$ISelectListener;

    return-void
.end method

.method public setTemplateRoot(Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    return-void
.end method

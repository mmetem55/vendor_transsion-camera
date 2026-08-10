.class Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;
.super Ljava/lang/Object;
.source "ScrollDirectionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;,
        Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDirectionChangeListener:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;

.field private mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

.field private mOldScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

.field private mOldStart:I

.field private mOldStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    return-void
.end method

.method private onScrollEnd()V
    .locals 2

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onScrollDown"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    sget-object v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;->END:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    if-eq v0, v1, :cond_0

    .line 102
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mDirectionChangeListener:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;

    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;->onScrollDirectionChanged(Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;)V

    :cond_0
    return-void
.end method

.method private onScrollStart()V
    .locals 2

    .line 108
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onScrollUp"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    sget-object v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;->START:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    if-eq v0, v1, :cond_0

    .line 111
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mDirectionChangeListener:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;

    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;->onScrollDirectionChanged(Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method detectScrollDirection()V
    .locals 6

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> detectScrollDirection"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 63
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detectScrollDirection, view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", start "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOldStart "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldStart:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOldStartPosition: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldStartPosition:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldStartPosition:I

    if-ne v3, v1, :cond_3

    .line 70
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldStart:I

    if-le v2, v1, :cond_2

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->onScrollStart()V

    goto :goto_1

    :cond_2
    if-ge v2, v1, :cond_7

    .line 73
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->onScrollEnd()V

    goto :goto_1

    :cond_3
    sub-int v1, v3, v1

    .line 76
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 77
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldStartPosition:I

    if-ge v3, v1, :cond_4

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->onScrollStart()V

    goto :goto_1

    .line 80
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->onScrollEnd()V

    goto :goto_1

    .line 84
    :cond_5
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldStartPosition:I

    if-le v3, v1, :cond_6

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->onScrollStart()V

    goto :goto_1

    .line 87
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->onScrollEnd()V

    .line 92
    :cond_7
    :goto_1
    iput v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldStart:I

    .line 93
    iput v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mOldStartPosition:I

    const-string p0, "<< detectScrollDirection"

    .line 95
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method setOnScrollDirectionChangeListener(Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->mDirectionChangeListener:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;

    return-void
.end method

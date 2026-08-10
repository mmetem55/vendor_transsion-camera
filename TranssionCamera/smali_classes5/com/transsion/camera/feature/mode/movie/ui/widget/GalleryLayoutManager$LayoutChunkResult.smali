.class Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "GalleryLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$1;)V
    .locals 0

    .line 1720
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 1

    const/4 v0, 0x0

    .line 1728
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1729
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1730
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1731
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

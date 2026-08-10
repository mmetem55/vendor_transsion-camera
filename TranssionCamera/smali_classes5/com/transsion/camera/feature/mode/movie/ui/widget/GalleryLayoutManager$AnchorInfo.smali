.class Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "GalleryLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field mPosition:I

.field mValid:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->reset()V

    return-void
.end method


# virtual methods
.method assignCenterCoordinate(II)V
    .locals 1

    .line 1703
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    shr-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    shr-int/lit8 p2, p2, 0x1

    sub-int/2addr p1, p2

    .line 1705
    :goto_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mCoordinate:I

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, -0x1

    .line 1696
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v0, -0x80000000

    .line 1697
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mCoordinate:I

    const/4 v0, 0x0

    .line 1698
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 1699
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mValid:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;
.super Ljava/lang/Object;
.source "ProgressConvert.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDelegate:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;

.field private mSegmentDurations:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->mDelegate:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;

    return-void
.end method

.method private convertProgress(I)I
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->mSegmentDurations:[J

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    int-to-long v2, p1

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->mSegmentDurations:[J

    aget-wide v4, p1, v1

    sub-long/2addr v2, v4

    long-to-int p1, v2

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    return v1
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->mSegmentDurations:[J

    if-nez p0, :cond_0

    .line 34
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getMaxProgress mSegmentDurations is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 37
    :cond_0
    array-length p0, p0

    return p0
.end method

.method public onProgressUpdate(I)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->mDelegate:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;

    if-nez v0, :cond_0

    .line 43
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onProgressUpdate mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->mSegmentDurations:[J

    if-eqz v1, :cond_2

    array-length v1, v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->convertProgress(I)I

    move-result p0

    .line 51
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;->onProgressUpdate(I)V

    return-void

    .line 48
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onProgressUpdate mSegmentDurations is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setSegmentDurations([J)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->mSegmentDurations:[J

    return-void
.end method

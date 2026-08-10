.class final Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;
.super Ljava/lang/Object;
.source "MovieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReadyForPlayback"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFailedToPrepareUiForPlayback:Z

.field private mHeight:I

.field private mSurfaceTextureAvailable:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 590
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$1;)V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;-><init>()V

    return-void
.end method


# virtual methods
.method isFailedToPrepareUiForPlayback()Z
    .locals 0

    .line 631
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->mFailedToPrepareUiForPlayback:Z

    return p0
.end method

.method isReadyForPlayback()Z
    .locals 3

    .line 625
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->isVideoSizeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->isSurfaceTextureAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 626
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyForPlayback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method isSurfaceTextureAvailable()Z
    .locals 3

    .line 618
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSurfaceTextureAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->mSurfaceTextureAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 620
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->mSurfaceTextureAvailable:Z

    return p0
.end method

.method isVideoSizeAvailable()Z
    .locals 3

    .line 611
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->mWidth:I

    if-lez v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->mHeight:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 613
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSizeAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method setFailedToPrepareUiForPlayback(Z)V
    .locals 0

    .line 607
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->mFailedToPrepareUiForPlayback:Z

    return-void
.end method

.method setSurfaceTextureAvailable(Z)V
    .locals 0

    .line 598
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->mSurfaceTextureAvailable:Z

    return-void
.end method

.method setVideoSize(II)V
    .locals 0

    .line 602
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->mWidth:I

    .line 603
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->mHeight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

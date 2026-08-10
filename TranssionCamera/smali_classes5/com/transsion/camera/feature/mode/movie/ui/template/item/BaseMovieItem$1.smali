.class Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;
.super Ljava/lang/Object;
.source "BaseMovieItem.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->createViewHolder(Landroid/view/ViewGroup;)Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$holder:Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->val$holder:Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateUI(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->val$holder:Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerCover:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->val$holder:Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerController:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/movie/R$drawable;->ic_movie_play_stop:I

    .line 191
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->val$holder:Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerCover:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->val$holder:Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerController:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/movie/R$drawable;->ic_movie_play_start:I

    .line 195
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->val$holder:Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->setProgress(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->updateState(Z)V

    .line 175
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->updateUI(Z)V

    return-void
.end method

.method public onError(II)V
    .locals 0

    const/4 p1, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->updateUI(Z)V

    return-void
.end method

.method public onStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->updateUI(Z)V

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;->updateUI(Z)V

    return-void
.end method

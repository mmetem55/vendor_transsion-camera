.class public final Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ViewHolder.java"


# instance fields
.field public final mDescription:Landroid/widget/TextView;

.field public final mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

.field public final mPlayerContainer:Landroid/view/View;

.field public final mPlayerContainerBg:Landroid/view/View;

.field public final mPlayerController:Landroid/widget/ImageView;

.field public final mPlayerCover:Landroid/widget/ImageView;

.field public final mPlayerProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

.field public final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->player_texture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    .line 40
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->player_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerContainer:Landroid/view/View;

    .line 41
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->player_container_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerContainerBg:Landroid/view/View;

    .line 42
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->player_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerCover:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->player_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    .line 44
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->player_controller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerController:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->template_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->template_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mDescription:Landroid/widget/TextView;

    return-void
.end method

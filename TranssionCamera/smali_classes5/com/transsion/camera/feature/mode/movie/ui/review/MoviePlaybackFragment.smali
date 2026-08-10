.class public Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;
.super Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
.source "MoviePlaybackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mExit:Landroid/widget/ImageButton;

.field private mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

.field private mMovieOrientation:I

.field private mMoviePlayback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMovieOrientation:I

    return-void
.end method

.method private updateExitView()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mExit:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x35

    .line 151
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/movie/R$dimen;->movie_normal_edit_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/movie/R$dimen;->movie_normal_edit_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mExit:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mExit:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 140
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCompleted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->toggleSystemUI()V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "onCreate bundle is null"

    .line 53
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->create(Landroid/os/Bundle;)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMovieOrientation:I

    .line 59
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/MovieHelper;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/PlaybackFactory;->create(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMoviePlayback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;

    .line 61
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;->setPlayerListener(Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMoviePlayback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;->init()V

    .line 63
    iget p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMovieOrientation:I

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_2

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 102
    sget-object p3, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    sget p3, Lcom/transsion/camera/feature/movie/R$layout;->movie_playback_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    sget p2, Lcom/transsion/camera/feature/movie/R$id;->moive_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mExit:Landroid/widget/ImageButton;

    .line 106
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget p2, Lcom/transsion/camera/feature/movie/R$id;->movie_playback_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meicam/sdk/NvsLiveWindow;

    const/4 p3, 0x2

    .line 109
    invoke-virtual {p2, p3}, Lcom/meicam/sdk/NvsLiveWindow;->setFillMode(I)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMoviePlayback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;

    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;->connectView(Landroid/view/SurfaceView;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 134
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 135
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMoviePlayback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;->unInit()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onPause()V

    .line 117
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMoviePlayback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;->stopPlay()V

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mExit:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onResume()V

    .line 126
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->updateExitView()V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMoviePlayback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;->startPlay()V

    return-void
.end method

.method protected updateOrientation(I)V
    .locals 6

    .line 77
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->updateOrientation(I)V

    .line 78
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMovieOrientation:I

    const/16 v1, 0xb4

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-ne v0, v5, :cond_3

    if-eqz p1, :cond_2

    if-ne p1, v5, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_1

    if-ne p1, v4, :cond_3

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 88
    :cond_3
    :goto_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MoviePlaybackFragment;->mMovieOrientation:I

    if-ne v0, v4, :cond_7

    if-eqz p1, :cond_6

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    if-eq p1, v5, :cond_5

    if-ne p1, v1, :cond_7

    .line 93
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 90
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_7
    :goto_3
    return-void
.end method

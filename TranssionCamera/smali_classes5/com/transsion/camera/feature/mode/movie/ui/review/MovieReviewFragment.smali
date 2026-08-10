.class public Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;
.super Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
.source "MovieReviewFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;


# static fields
.field private static final CONFIRM_FRAGMENT_TAG:Ljava/lang/String; = "review"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

.field private mDelete:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

.field private mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

.field private mMovieProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

.field private mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

.field private mPlayerContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

.field private mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mSave:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mSecureCamera:Z

.field private mShare:Lcom/transsion/camera/app/ui/widget/RotateImageView;


# direct methods
.method public static synthetic $r8$lambda$DfW8fIiP0s830i94T0jiMyUCxCk(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->saveClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lq0i0nsdCbUL1I-X3Co4Vo7QREw(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->deleteClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uCbGCQHDmxSrWV6_LM0iCxd4qEo(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->shareClick(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->setResult(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;)Landroid/app/Activity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;)Landroid/app/Activity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private calculateMovieViewSize()Landroid/util/Size;
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getWidth()I

    move-result v1

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getHeight()I

    move-result p0

    .line 192
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 193
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-le v1, p0, :cond_0

    if-lt v2, v0, :cond_1

    :cond_0
    if-ge v1, p0, :cond_2

    if-le v2, v0, :cond_2

    :cond_1
    move v4, v2

    move v2, v0

    move v0, v4

    :cond_2
    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    int-to-float p0, p0

    div-float/2addr v0, p0

    .line 205
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 207
    new-instance v2, Landroid/util/Size;

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-direct {v2, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method private deleteClick(Landroid/view/View;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->showDeleteDialog()V

    return-void
.end method

.method private extractArguments()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isSecureCamera"

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mSecureCamera:Z

    const-string v1, "movie_info"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractArguments mMovieInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private findView(Landroid/view/View;)V
    .locals 1

    .line 123
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->movie_player:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    .line 124
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->player_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mPlayerContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 125
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->movie_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    .line 126
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->progress_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 127
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->movie_share:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mShare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 128
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->movie_save:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mSave:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 129
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->movie_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mDelete:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-void
.end method

.method private hideShareButton()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mShare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mSave:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 158
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xe

    .line 159
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0x12

    .line 160
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    sget v2, Lcom/transsion/camera/feature/movie/R$dimen;->movie_review_button_horizontal_margin:I

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 163
    sget v3, Lcom/transsion/camera/feature/movie/R$dimen;->movie_review_delete_bottom_margin:I

    .line 164
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 165
    sget v3, Lcom/transsion/camera/feature/movie/R$dimen;->movie_review_delete_size:I

    .line 166
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 168
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 169
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mSave:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mDelete:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 172
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 174
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 173
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mDelete:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mShare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mSave:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mDelete:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;)V

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getDurations()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->setSegmentDurations([J)V

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->getMaxProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->setMaxProgress(I)V

    .line 141
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->setProgress(I)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->setProgressListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;)V

    return-void
.end method

.method private isLandscape(I)Z
    .locals 0

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_1

    const/16 p0, 0x10e

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private saveClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 249
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->setResult(I)V

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setResult(I)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 240
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/MovieMessage;->setResult(I)V

    return-void
.end method

.method private shareClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 244
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->setResult(I)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .line 258
    sget v0, Lcom/transsion/camera/feature/movie/R$string;->delete_confirm_message:I

    sget v1, Lcom/transsion/camera/feature/movie/R$string;->delete:I

    sget v2, Lcom/transsion/camera/feature/movie/R$string;->cancel:I

    new-instance v3, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->showDialog(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V

    return-void
.end method

.method private showDialog(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V
    .locals 0

    .line 279
    invoke-static {p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->newInstance(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getOrientation()I

    move-result p1

    .line 282
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->isLandscape(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 283
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->updateOrientation(I)V

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "review"

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showErrorDialog()V
    .locals 4

    const/4 v0, 0x2

    .line 307
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->setResult(I)V

    .line 308
    sget v0, Lcom/transsion/camera/feature/movie/R$string;->movie_cannot_play_string:I

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$2;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;)V

    const v2, 0x104000a

    const/4 v3, -0x1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->showDialog(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V

    return-void
.end method

.method private updateLayout()V
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mSecureCamera:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->hideShareButton()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->updateMovieViewLayout()V

    return-void
.end method

.method private updateMovieViewLayout()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->calculateMovieViewSize()Landroid/util/Size;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOrientation()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getOrientation()I

    move-result v0

    .line 212
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->isLandscape(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mShare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 214
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mSave:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mDelete:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mPlayerContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v0, 0x10e

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method

.method private updateProgressLayout()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getOrientation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 229
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 230
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/movie/R$dimen;->movie_record_progress_horizontal_margin:I

    .line 231
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0xb

    .line 232
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 233
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    .line 340
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->setResult(I)V

    .line 341
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->toggleSystemUI()V

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->extractArguments()V

    .line 88
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    .line 89
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/movie/MovieHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 106
    sget p3, Lcom/transsion/camera/feature/movie/R$layout;->movie_review_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->findView(Landroid/view/View;)V

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->initView()V

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->updateLayout()V

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->updateOrientation()V

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->updateProgressLayout()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 346
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;->destroy()V

    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->showErrorDialog()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 326
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onPause()V

    .line 327
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->removePlayerListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;)V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;->stopPlay()V

    .line 332
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/MovieMessage;->getResult()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 333
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->setResult(I)V

    .line 335
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 290
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onResume()V

    .line 291
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 292
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/MovieMessage;->setResult(I)V

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getTempPath()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "movie path is empty"

    .line 296
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->showErrorDialog()V

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->addPlayerListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;->playMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Ljava/lang/String;)V

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

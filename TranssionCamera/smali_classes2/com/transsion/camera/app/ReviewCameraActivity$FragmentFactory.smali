.class final Lcom/transsion/camera/app/ReviewCameraActivity$FragmentFactory;
.super Ljava/lang/Object;
.source "ReviewCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ReviewCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentFactory"
.end annotation


# direct methods
.method static synthetic access$000(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
    .locals 0

    .line 152
    invoke-static {p0}, Lcom/transsion/camera/app/ReviewCameraActivity$FragmentFactory;->create(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    move-result-object p0

    return-object p0
.end method

.method private static create(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
    .locals 3

    const-string v0, "review_fragment"

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "fun_video"

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.funvideo.ui.FunVideoReviewFragment"

    .line 166
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    :cond_0
    const-string v0, "movie"

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.mode.movie.ui.review.MovieReviewFragment"

    .line 168
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    :cond_1
    const-string v0, "movie_playback"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.mode.movie.ui.review.MoviePlaybackFragment"

    .line 170
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    :cond_2
    const-string v0, "arcore"

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.arcore.common.fragments.ARCoreReviewFragment"

    .line 172
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    .line 174
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/ReviewCameraActivity;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

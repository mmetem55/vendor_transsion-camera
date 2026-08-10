.class final Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;
.super Ljava/lang/Object;
.source "SVGAImageView.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGAImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimatorListener"
.end annotation


# instance fields
.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/opensource/svgaplayer/SVGAImageView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 313
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V

    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 309
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->access$onAnimationEnd(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 305
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getCallback()Lcom/opensource/svgaplayer/SVGACallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/opensource/svgaplayer/SVGACallback;->onRepeat()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 317
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V

    :goto_0
    return-void
.end method

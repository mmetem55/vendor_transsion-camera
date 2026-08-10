.class final Lcom/google/ar/core/r;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InstallActivity.java"


# instance fields
.field final synthetic a:Lcom/google/ar/core/InstallActivity;


# direct methods
.method constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ar/core/r;->a:Lcom/google/ar/core/InstallActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ar/core/r;->a:Lcom/google/ar/core/InstallActivity;

    invoke-static {p0}, Lcom/google/ar/core/InstallActivity;->-$$Nest$mshowSpinner(Lcom/google/ar/core/InstallActivity;)V

    return-void
.end method

.class final Lcom/google/ar/core/p;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/ar/core/InstallActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/ar/core/InstallActivity;I)V
    .locals 0

    iput p2, p0, Lcom/google/ar/core/p;->b:I

    iput-object p1, p0, Lcom/google/ar/core/p;->a:Lcom/google/ar/core/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 3
    iget p1, p0, Lcom/google/ar/core/p;->b:I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/ar/core/p;->a:Lcom/google/ar/core/InstallActivity;

    new-instance p1, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    invoke-direct {p1}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    invoke-static {p0, p1}, Lcom/google/ar/core/InstallActivity;->-$$Nest$mfinishWithFailure(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/ar/core/p;->a:Lcom/google/ar/core/InstallActivity;

    .line 1
    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->-$$Nest$manimateToSpinner(Lcom/google/ar/core/InstallActivity;)V

    iget-object p0, p0, Lcom/google/ar/core/p;->a:Lcom/google/ar/core/InstallActivity;

    .line 2
    invoke-static {p0}, Lcom/google/ar/core/InstallActivity;->-$$Nest$mstartInstaller(Lcom/google/ar/core/InstallActivity;)V

    return-void
.end method

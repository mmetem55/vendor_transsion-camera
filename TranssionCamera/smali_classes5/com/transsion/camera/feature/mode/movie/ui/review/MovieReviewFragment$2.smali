.class Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$2;
.super Ljava/lang/Object;
.source "MovieReviewFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->showErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;->access$200(Lcom/transsion/camera/feature/mode/movie/ui/review/MovieReviewFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

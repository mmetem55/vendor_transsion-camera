.class Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$2;
.super Ljava/lang/Object;
.source "MovieUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->access$200(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->deleteHistory(Landroid/content/Context;)V

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$2;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->enterRecorder()V

    return-void
.end method

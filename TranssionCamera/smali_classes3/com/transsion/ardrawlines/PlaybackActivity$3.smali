.class Lcom/transsion/ardrawlines/PlaybackActivity$3;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/PlaybackActivity;->showCancelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/PlaybackActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/PlaybackActivity;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity$3;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 327
    iget-object p2, p0, Lcom/transsion/ardrawlines/PlaybackActivity$3;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    invoke-static {p2}, Lcom/transsion/ardrawlines/PlaybackActivity;->-$$Nest$fgetmFile(Lcom/transsion/ardrawlines/PlaybackActivity;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->deleteFile(Ljava/io/File;)V

    .line 328
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 329
    iget-object p0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$3;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mShowDialog:Z

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mAllowBack:Z

    .line 331
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/PlaybackActivity;->onBackPressed()V

    return-void
.end method

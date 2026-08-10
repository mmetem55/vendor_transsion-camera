.class Lcom/transsion/ardrawlines/PlaybackActivity$2;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/PlaybackActivity;->saveMediaFile(Landroid/content/Context;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$newFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/PlaybackActivity;Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    iput-object p2, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->val$newFile:Ljava/io/File;

    iput-object p4, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->val$context:Landroid/content/Context;

    sget v1, Lcom/transsion/ardrawlines/R$string;->could_not_save:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object p0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    invoke-static {p0, v2}, Lcom/transsion/ardrawlines/PlaybackActivity;->-$$Nest$fputmIsSavingFile(Lcom/transsion/ardrawlines/PlaybackActivity;Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->val$newFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->scanFile(Landroid/content/Context;Ljava/io/File;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->val$context:Landroid/content/Context;

    sget v1, Lcom/transsion/ardrawlines/R$string;->saved_video:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 178
    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->val$file:Ljava/io/File;

    invoke-static {v0}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->deleteFile(Ljava/io/File;)V

    .line 181
    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    invoke-static {v0, v2}, Lcom/transsion/ardrawlines/PlaybackActivity;->-$$Nest$fputmIsSavingFile(Lcom/transsion/ardrawlines/PlaybackActivity;Z)V

    .line 182
    iget-object p0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mAllowBack:Z

    .line 183
    iput-boolean v2, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mShowDialog:Z

    .line 184
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/PlaybackActivity;->onBackPressed()V

    return-void
.end method

.method public progressing()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/ardrawlines/PlaybackActivity;->-$$Nest$fputmIsSavingFile(Lcom/transsion/ardrawlines/PlaybackActivity;Z)V

    .line 200
    iget-object p0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$2;->val$context:Landroid/content/Context;

    sget v0, Lcom/transsion/ardrawlines/R$string;->in_saving:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

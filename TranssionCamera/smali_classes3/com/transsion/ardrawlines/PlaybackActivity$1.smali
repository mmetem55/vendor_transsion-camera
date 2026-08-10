.class Lcom/transsion/ardrawlines/PlaybackActivity$1;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


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


# direct methods
.method public static synthetic $r8$lambda$Mi-TdNljiTJzt6tVvMk1JNEhXXc(Lcom/transsion/ardrawlines/PlaybackActivity$1;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/PlaybackActivity$1;->lambda$onFileSaved$0(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/ardrawlines/PlaybackActivity;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity$1;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    iput-object p2, p0, Lcom/transsion/ardrawlines/PlaybackActivity$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/transsion/ardrawlines/PlaybackActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFileSaved$0(Landroid/content/Context;)V
    .locals 2

    .line 161
    sget v0, Lcom/transsion/ardrawlines/R$string;->saved_image:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 162
    iget-object p0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$1;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/PlaybackActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity$1;->val$file:Ljava/io/File;

    invoke-static {p1}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->deleteFile(Ljava/io/File;)V

    .line 157
    iget-object p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity$1;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/ardrawlines/PlaybackActivity;->-$$Nest$fputmIsSavingFile(Lcom/transsion/ardrawlines/PlaybackActivity;Z)V

    .line 158
    iget-object p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity$1;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/transsion/ardrawlines/PlaybackActivity;->mAllowBack:Z

    .line 159
    iput-boolean v0, p1, Lcom/transsion/ardrawlines/PlaybackActivity;->mShowDialog:Z

    .line 160
    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity$1;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/transsion/ardrawlines/PlaybackActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/ardrawlines/PlaybackActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/PlaybackActivity$1;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

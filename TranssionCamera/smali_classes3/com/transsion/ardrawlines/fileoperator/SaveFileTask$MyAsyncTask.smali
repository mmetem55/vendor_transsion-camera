.class Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "SaveFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;


# direct methods
.method private constructor <init>(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;->this$0:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;-><init>(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/File;)Ljava/lang/Boolean;
    .locals 3

    .line 122
    invoke-static {}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----doInBackground---isProgressing-----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;->this$0:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    invoke-static {v2}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->-$$Nest$fgetisProgressing(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;->this$0:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->-$$Nest$fputisProgressing(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;Z)V

    const/4 p0, 0x0

    .line 124
    aget-object p0, p1, p0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;->doInBackground([Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;->this$0:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->-$$Nest$fputisProgressing(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;Z)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;->this$0:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    invoke-static {p0}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->-$$Nest$fgetmOnSaveListener(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;)Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;->onSuccess()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;->this$0:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    invoke-static {p0}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->-$$Nest$fgetmOnSaveListener(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;)Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;->onFailed()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$MyAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

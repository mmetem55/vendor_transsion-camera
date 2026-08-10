.class Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;
.super Landroid/os/AsyncTask;
.source "IntentPhotoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$1;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;-><init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 2

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$200(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[attachToSaveUri]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$300(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$300(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 287
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$500(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 285
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 289
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 281
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$600(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[attachToSaveUri] onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$700(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$800(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    instance-of p1, p1, Ljava/lang/SecurityException;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$900(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1000(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10008a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 310
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 315
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1100(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

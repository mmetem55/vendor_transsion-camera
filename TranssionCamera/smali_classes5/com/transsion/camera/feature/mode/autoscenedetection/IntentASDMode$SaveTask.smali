.class Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;
.super Landroid/os/AsyncTask;
.source "IntentASDMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 2

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$200(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[attachToSaveUri]"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$400(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$300(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 236
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$500(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    goto :goto_3

    .line 243
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object p1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 244
    throw p0

    :catch_2
    move-exception p0

    .line 243
    :goto_2
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catch_3
    move-exception p0

    :goto_3
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 228
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$600(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$700(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 255
    :cond_1
    instance-of v1, p1, Ljava/io/IOException;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$800(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doAttach] IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$900(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 258
    :cond_2
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$1000(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doAttach] SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$1100(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$1200(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10008a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$1300(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 228
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

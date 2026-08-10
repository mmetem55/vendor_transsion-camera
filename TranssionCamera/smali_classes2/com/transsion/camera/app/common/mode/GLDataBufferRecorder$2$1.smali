.class Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;
.super Ljava/lang/Object;
.source "GLDataBufferRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;


# direct methods
.method public static synthetic $r8$lambda$9ejmKEjav2DFXwq6rnvbs_CSuDM(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->lambda$run$0(Landroid/net/Uri;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 310
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "lily... [onFileSaved] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1700(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1700(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onDataBufferRecorderStopped(Landroid/net/Uri;Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1800(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V

    .line 319
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "lily... [onFileSaved] -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 258
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v4, v4, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1600(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 263
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLMediaRecorder.stopRecording file size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v6, v6, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v6, v6, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getVideoTempFileSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 265
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 267
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v4

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 272
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v4, 0x0

    .line 275
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lily... recordTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mDuration = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " tempPath="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e9

    cmp-long v1, v4, v1

    if-gez v1, :cond_2

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1700(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1700(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onStopFailed()V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1800(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Lcom/transsion/camera/app/common/mode/VideoState;)V

    :cond_1
    return-void

    .line 284
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 285
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v3, v3, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1900(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 286
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v6, v6, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v6}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->createFileData(Ljava/lang/String;)V

    .line 287
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 288
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 289
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v8, v8, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v8, v8, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v8

    const-string v9, "key_location"

    invoke-virtual {v8, v9}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    .line 290
    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v9, v9, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v9}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTitle()Ljava/lang/String;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v3, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v9, v9, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v9}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_display_name"

    invoke-virtual {v3, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "datetaken"

    invoke-virtual {v3, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v9, 0x3e8

    .line 293
    div-long/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_modified"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$2000(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$2000(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resolution"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v8, :cond_3

    .line 300
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 301
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_quality"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    const-string v6, "key_video_duration"

    invoke-virtual {v2, v6, v1, v4, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    .line 305
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "lily... [addVideoSaveRequest] start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;->this$1:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    new-instance v2, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;)V

    invoke-interface {v1, v3, v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

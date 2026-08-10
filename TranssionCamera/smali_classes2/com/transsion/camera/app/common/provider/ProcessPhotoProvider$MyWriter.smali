.class Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$MyWriter;
.super Ljava/lang/Object;
.source "ProcessPhotoProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ContentProvider$PipeDataWriter<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$MyWriter;->this$0:Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$MyWriter;-><init>(Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;)V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 170
    :try_start_0
    new-instance p0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 172
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    const-string p4, "writeBitmapToFd begin"

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p5, p3, p4, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 174
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "writeBitmapToFd end takes (ms): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 170
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 176
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "fail to write to pipe"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p5, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$MyWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    return-void
.end method

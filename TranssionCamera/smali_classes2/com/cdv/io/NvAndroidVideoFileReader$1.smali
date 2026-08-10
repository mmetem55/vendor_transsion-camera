.class Lcom/cdv/io/NvAndroidVideoFileReader$1;
.super Ljava/lang/Object;
.source "NvAndroidVideoFileReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/io/NvAndroidVideoFileReader;->OpenFile(Ljava/lang/String;ILandroid/content/Context;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cdv/io/NvAndroidVideoFileReader;


# direct methods
.method constructor <init>(Lcom/cdv/io/NvAndroidVideoFileReader;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "NvAndroidVideoFileReader"

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReader;

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReader;

    invoke-static {v3}, Lcom/cdv/io/NvAndroidVideoFileReader;->access$100(Lcom/cdv/io/NvAndroidVideoFileReader;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v1, v2}, Lcom/cdv/io/NvAndroidVideoFileReader;->access$002(Lcom/cdv/io/NvAndroidVideoFileReader;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface texture with texture (id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReader;

    invoke-static {v2}, Lcom/cdv/io/NvAndroidVideoFileReader;->access$100(Lcom/cdv/io/NvAndroidVideoFileReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") has been created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReader;

    invoke-static {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->access$200(Lcom/cdv/io/NvAndroidVideoFileReader;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.class Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;
.super Ljava/lang/Thread;
.source "MacroTorchParameterConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TorchValueThread"
.end annotation


# instance fields
.field mData:[B

.field mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;[B)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;->this$0:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;->mData:[B

    .line 138
    new-instance p1, Ljava/io/File;

    const-string p2, "/sys/devices/virtual/wide_torch/wide_torch/wide_torch_level"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 142
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x0

    .line 145
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;->mData:[B

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 147
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 149
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 152
    throw p0
.end method

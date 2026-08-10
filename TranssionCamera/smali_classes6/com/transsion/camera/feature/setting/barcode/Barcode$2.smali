.class Lcom/transsion/camera/feature/setting/barcode/Barcode$2;
.super Ljava/lang/Object;
.source "Barcode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;III)V
    .locals 1

    .line 236
    iget-object p4, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p4}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p4}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$900(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "1"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object p4, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p4}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1000(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/HandlerThread;

    move-result-object p4

    monitor-enter p4

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    monitor-exit p4

    return-void

    .line 243
    :cond_1
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object p4, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p4}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/ImageScanner;

    move-result-object p4

    if-nez p4, :cond_2

    .line 246
    iget-object p4, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    new-instance v0, Lnet/sourceforge/zbar/ImageScanner;

    invoke-direct {v0}, Lnet/sourceforge/zbar/ImageScanner;-><init>()V

    invoke-static {p4, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1202(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lnet/sourceforge/zbar/ImageScanner;)Lnet/sourceforge/zbar/ImageScanner;

    .line 248
    :cond_2
    iget-object p4, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p4}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object p4

    if-nez p4, :cond_3

    .line 249
    iget-object p4, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p4}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1300(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V

    .line 252
    :cond_3
    iget-object p4, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p4}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object p4

    const/16 v0, 0x7b

    invoke-virtual {p4, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p4}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$300(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p4, 0x0

    .line 253
    invoke-static {p1, p4}, Lcom/transsion/camera/utils/ImageUtils;->getYBufferEffectData(Landroid/media/Image;Z)[B

    move-result-object p1

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 243
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

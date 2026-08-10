.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;
.super Landroid/os/Handler;
.source "DocumentMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    .line 451
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 456
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 457
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1400(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$800(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->updateThumbnail(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 473
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$900(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 476
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 477
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$302(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z

    .line 478
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$102(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)I

    .line 479
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    .line 481
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$900(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->hideViewWithAnim()V

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 460
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$700(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$800(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->getExpectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 461
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$900(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->showView(Landroid/graphics/Bitmap;)V

    .line 462
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[CapturePerformance] show dialog"

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1000(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    .line 464
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    move-result-object p1

    const-wide/16 v3, 0x5dc

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 466
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$302(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z

    .line 467
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$102(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)I

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    .line 469
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

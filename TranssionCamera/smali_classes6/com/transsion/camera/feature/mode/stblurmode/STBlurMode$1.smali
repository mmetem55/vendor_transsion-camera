.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;
.super Ljava/lang/Object;
.source "STBlurMode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .locals 9

    .line 378
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 379
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 383
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 384
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 385
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 388
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    const/4 v7, 0x1

    if-ne v4, v3, :cond_2

    const/16 p1, 0x11

    add-int v3, v2, v6

    add-int/2addr v3, v7

    .line 392
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v4

    array-length v4, v4

    if-eq v4, v3, :cond_1

    .line 393
    :cond_0
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    new-array v3, v3, [B

    invoke-static {v4, v3}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$202(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;[B)[B

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const v3, 0x32315659

    .line 401
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v7

    .line 402
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 403
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int v7, v2, v4

    add-int/2addr v7, v6

    .line 406
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v8

    array-length v8, v8

    if-eq v8, v7, :cond_4

    .line 407
    :cond_3
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    new-array v7, v7, [B

    invoke-static {v8, v7}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$202(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;[B)[B

    .line 410
    :cond_4
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v7

    invoke-virtual {v0, v7, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v0

    add-int/2addr v2, v6

    invoke-virtual {p1, v0, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move p1, v3

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 416
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPreviewFrame mode is not initialized"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object v0

    if-nez v0, :cond_6

    .line 420
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPreviewFrame mSTBlurClient is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 424
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$500(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->processPreviewBlur([BIII)V

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$600(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$700(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$800(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$900(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1002(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;I)I

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)I

    move-result p1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)I

    move-result p1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_8

    .line 429
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)I

    move-result v0

    rsub-int v0, v0, 0x168

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1002(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;I)I

    .line 433
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$600(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$1000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)I

    move-result p0

    invoke-interface {p1, v0, p2, p3, p0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->detect([BIII)Z

    :cond_9
    return-void
.end method

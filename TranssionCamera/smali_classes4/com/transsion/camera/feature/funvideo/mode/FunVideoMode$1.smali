.class Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;
.super Ljava/lang/Object;
.source "FunVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .locals 6

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "PreviewCallBack mYUVCallback mIsModeInit is false, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 226
    :cond_1
    invoke-static {p2, p3}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0, p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$202(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    .line 229
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p2, p3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$302(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    .line 230
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    .line 231
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 232
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 234
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 235
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 238
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v3, 0x2

    aget-object p1, p1, v3

    .line 239
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int v4, v0, v2

    add-int v5, v4, v3

    .line 242
    new-array v5, v5, [B

    .line 243
    invoke-virtual {p2, v5, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 244
    invoke-virtual {v1, v5, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {p1, v5, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0, v5}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$402(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;[B)[B

    :goto_0
    return-void
.end method

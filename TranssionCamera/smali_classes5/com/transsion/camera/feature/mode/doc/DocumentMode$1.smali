.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;
.super Ljava/lang/Object;
.source "DocumentMode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$600(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/media/Image;II)V

    :cond_0
    return-void
.end method

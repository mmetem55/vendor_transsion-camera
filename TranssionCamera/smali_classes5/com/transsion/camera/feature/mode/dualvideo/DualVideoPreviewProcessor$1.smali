.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;
.super Ljava/lang/Object;
.source "DualVideoPreviewProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->takePcture(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

.field final synthetic val$bitmapSource:[I

.field final synthetic val$surfaceHeight:I

.field final synthetic val$surfaceWidth:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[III)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$bitmapSource:[I

    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$surfaceWidth:I

    iput p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$surfaceHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1028
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$bitmapSource:[I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$surfaceWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;->val$surfaceHeight:I

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[III)V

    return-void
.end method

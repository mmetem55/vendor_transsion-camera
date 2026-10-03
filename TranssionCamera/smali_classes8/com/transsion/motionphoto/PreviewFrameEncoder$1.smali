.class Lcom/transsion/motionphoto/PreviewFrameEncoder$1;
.super Ljava/lang/Object;
.source "PreviewFrameEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/motionphoto/PreviewFrameEncoder;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/motionphoto/PreviewFrameEncoder;


# direct methods
.method constructor <init>(Lcom/transsion/motionphoto/PreviewFrameEncoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder$1;->this$0:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder$1;->this$0:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    # invokes: Lcom/transsion/motionphoto/PreviewFrameEncoder;->workerLoop()V
    invoke-static {v0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->access$000(Lcom/transsion/motionphoto/PreviewFrameEncoder;)V

    .line 82
    return-void
.end method

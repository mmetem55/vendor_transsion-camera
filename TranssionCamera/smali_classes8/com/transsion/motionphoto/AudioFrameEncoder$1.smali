.class Lcom/transsion/motionphoto/AudioFrameEncoder$1;
.super Ljava/lang/Object;
.source "AudioFrameEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/motionphoto/AudioFrameEncoder;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/motionphoto/AudioFrameEncoder;


# direct methods
.method constructor <init>(Lcom/transsion/motionphoto/AudioFrameEncoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/transsion/motionphoto/AudioFrameEncoder$1;->this$0:Lcom/transsion/motionphoto/AudioFrameEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder$1;->this$0:Lcom/transsion/motionphoto/AudioFrameEncoder;

    # invokes: Lcom/transsion/motionphoto/AudioFrameEncoder;->workerLoop()V
    invoke-static {v0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->access$000(Lcom/transsion/motionphoto/AudioFrameEncoder;)V

    .line 42
    return-void
.end method

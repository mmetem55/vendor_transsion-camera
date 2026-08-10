.class Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$1;
.super Ljava/lang/Object;
.source "VideoEncoderCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;


# direct methods
.method constructor <init>(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$1;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$1;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->stateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

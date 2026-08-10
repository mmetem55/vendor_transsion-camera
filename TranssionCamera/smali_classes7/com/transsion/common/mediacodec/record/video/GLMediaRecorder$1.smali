.class Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$1;
.super Ljava/lang/Object;
.source "GLMediaRecorder.java"

# interfaces
.implements Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;


# direct methods
.method constructor <init>(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$1;->this$0:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPresetationTime()J
    .locals 2

    .line 372
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$1;->this$0:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    invoke-static {p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->access$700(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)J

    move-result-wide v0

    return-wide v0
.end method

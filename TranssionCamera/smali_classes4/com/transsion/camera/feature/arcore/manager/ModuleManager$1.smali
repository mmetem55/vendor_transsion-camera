.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$1;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 206
    new-instance v0, Lcom/meicam/sdk/NvsAudioSampleBuffers;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsAudioSampleBuffers;-><init>()V

    .line 207
    iput-object p1, v0, Lcom/meicam/sdk/NvsAudioSampleBuffers;->audioBuffer:Ljava/nio/ByteBuffer;

    const p1, 0xbb80

    .line 209
    iput p1, v0, Lcom/meicam/sdk/NvsAudioSampleBuffers;->sampleRate:I

    const/4 p1, 0x2

    .line 210
    iput p1, v0, Lcom/meicam/sdk/NvsAudioSampleBuffers;->channelCount:I

    .line 211
    iput p1, v0, Lcom/meicam/sdk/NvsAudioSampleBuffers;->sampleformat:I

    const/16 p1, 0x400

    .line 212
    iput p1, v0, Lcom/meicam/sdk/NvsAudioSampleBuffers;->actualSampleCount:I

    const-wide/16 v1, 0x8af

    .line 213
    iput-wide v1, v0, Lcom/meicam/sdk/NvsAudioSampleBuffers;->timeStamp:J

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$100(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/meicam/sdk/NvsAudioEffectRenderCore;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$000(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/meicam/sdk/NvsCaptureAudioFx;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/meicam/sdk/NvsAudioEffectRenderCore;->renderAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;Lcom/meicam/sdk/NvsAudioSampleBuffers;)I

    return-void
.end method

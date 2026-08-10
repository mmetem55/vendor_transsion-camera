.class Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;
.super Ljava/lang/Object;
.source "BurstPMKMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamReady()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1900(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onStreamReady"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->readyUI()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->readyUI()V

    :cond_1
    return-void
.end method

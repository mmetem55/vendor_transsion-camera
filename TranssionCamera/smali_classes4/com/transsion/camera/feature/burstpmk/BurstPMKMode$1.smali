.class Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;
.super Ljava/lang/Object;
.source "BurstPMKMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStatusListener;


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

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureEnd()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$900(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->onCaptureEnd()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->onCaptureEnd()V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2
    return-void
.end method

.method public onCaptureFailed()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$600(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->onCaptureFailed()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->onCaptureFailed()V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$700(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2
    return-void
.end method

.method public onCaptureStart()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureStart()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureStart()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2
    return-void
.end method

.method public onCaptureStop()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureStop()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureStop()V

    :cond_1
    return-void
.end method

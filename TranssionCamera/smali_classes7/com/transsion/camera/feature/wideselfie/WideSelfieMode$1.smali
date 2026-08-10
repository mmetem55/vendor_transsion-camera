.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;
.super Ljava/lang/Object;
.source "WideSelfieMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureEnd()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$900(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->onCaptureEnd()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->onCaptureEnd()V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2
    return-void
.end method

.method public onCaptureFailed()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->onCaptureFailed()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->onCaptureFailed()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2
    return-void
.end method

.method public onCaptureStart()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureStart()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureStart()V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2
    return-void
.end method

.method public onCaptureStop()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureStop()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureStop()V

    :cond_1
    return-void
.end method

.class Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch$1;
.super Ljava/lang/Object;
.source "MacroTorch.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch$1;->this$0:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 1

    .line 136
    sget-object p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onPreviewStarted"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 128
    sget-object v0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch$1;->this$0:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;->access$000(Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;)Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch$1;->this$0:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;->access$000(Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;)Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;

    move-result-object p0

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->setCurrentTorchValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

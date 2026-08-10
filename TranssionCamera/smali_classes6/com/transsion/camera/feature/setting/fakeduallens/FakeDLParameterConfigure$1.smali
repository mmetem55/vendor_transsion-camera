.class Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure$1;
.super Ljava/lang/Object;
.source "FakeDLParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->access$100(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;)Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->isFakeDualLensSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualLensWarningCallback type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->refreshToUI(I)V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->access$002(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;I)I

    :cond_0
    return-void
.end method

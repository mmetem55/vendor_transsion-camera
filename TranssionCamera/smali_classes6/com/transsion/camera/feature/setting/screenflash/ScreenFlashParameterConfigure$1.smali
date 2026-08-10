.class Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;
.super Ljava/lang/Object;
.source "ScreenFlashParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlashFire()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$300(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$300(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;->onFlashFire()V

    :cond_0
    return-void
.end method

.method public onFlashRequired(Z)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0x2710

    if-le v0, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    iget-object v2, v2, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    if-lt v0, v1, :cond_1

    .line 73
    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->processOnPreview(Z)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isFlashOpen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFeatureOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    :cond_2
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    .line 81
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$102(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;Z)Z

    return-void
.end method

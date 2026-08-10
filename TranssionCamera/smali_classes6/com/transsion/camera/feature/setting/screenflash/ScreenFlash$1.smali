.class Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;
.super Ljava/lang/Object;
.source "ScreenFlash.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$500(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "screen flash is not support"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$600(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 67
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$100(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$300(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$400(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    return-void
.end method

.class Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;
.source "ConfiguratorAuto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenSupplySupportStrategy"
.end annotation


# instance fields
.field private mConfigFlag:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCaptureStart(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1

    monitor-enter p0

    .line 294
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->mConfigFlag:Z

    .line 297
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onConfigStart()V
    .locals 2

    monitor-enter p0

    .line 304
    :try_start_0
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->onConfigStart()V

    .line 305
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->mConfigFlag:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->mConfigFlag:Z

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$1300(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$1400(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$1500(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEntry()V
    .locals 2

    .line 279
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->onEntry()V

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->mConfigFlag:Z

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$1200(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    move-result-object p0

    const-string v0, "two_stage"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 3

    monitor-enter p0

    .line 315
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->ledFlashNotOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$1600(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 318
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 287
    :try_start_0
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->pause()V

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;->mConfigFlag:Z

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

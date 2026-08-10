.class Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;
.source "ConfiguratorAuto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperFlashSupportStrategy"
.end annotation


# instance fields
.field private mConfigFlag:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    return-void
.end method


# virtual methods
.method public onCaptureStart(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1

    .line 233
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->mConfigFlag:Z

    .line 236
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    :cond_0
    return-object v0
.end method

.method public onConfigStart()V
    .locals 2

    .line 243
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->onConfigStart()V

    .line 244
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->mConfigFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->mConfigFlag:Z

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$700(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$800(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$900(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    move-result-object p0

    const-string v0, "one_stage"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEntry()V
    .locals 2

    .line 217
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->onEntry()V

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->mConfigFlag:Z

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$500(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    move-result-object p0

    const-string v0, "two_stage"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 3

    .line 255
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->ledFlashNotOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$1000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$1100(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    move-result-object p0

    const-string v1, "two_stage"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 259
    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    :cond_0
    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 225
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->pause()V

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->mConfigFlag:Z

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$600(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    move-result-object p0

    const-string v0, "two_stage"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->setValue(Ljava/lang/String;)V

    return-void
.end method

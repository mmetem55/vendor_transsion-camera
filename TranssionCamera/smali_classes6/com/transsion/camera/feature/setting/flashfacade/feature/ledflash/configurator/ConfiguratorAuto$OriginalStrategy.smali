.class Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$OriginalStrategy;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;
.source "ConfiguratorAuto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OriginalStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$OriginalStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    return-void
.end method


# virtual methods
.method public onEntry()V
    .locals 2

    .line 197
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->onEntry()V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$OriginalStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$400(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    move-result-object p0

    const-string v0, "two_stage"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->setValue(Ljava/lang/String;)V

    return-void
.end method

.class abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;
.super Ljava/lang/Object;
.source "ConfiguratorAuto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseStrategy"
.end annotation


# instance fields
.field protected final mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->entry()V

    return-void
.end method

.method private entry()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$102(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    .line 143
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current strategy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->onEntry()V

    return-void
.end method


# virtual methods
.method protected ledFlashNotOff()Z
    .locals 1

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCaptureStart(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onConfigStart()V
    .locals 0

    return-void
.end method

.method protected onEntry()V
    .locals 0

    return-void
.end method

.method protected onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected pause()V
    .locals 0

    return-void
.end method

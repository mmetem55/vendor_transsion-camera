.class final Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;
.super Ljava/lang/Object;
.source "ValueFactory.java"


# instance fields
.field private final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;
    .locals 2

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ringscreenlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "screenflash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :pswitch_0
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueRingScreenLight;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueRingScreenLight;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    goto :goto_1

    .line 53
    :pswitch_1
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueTorch;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueTorch;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    goto :goto_1

    .line 49
    :pswitch_2
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    goto :goto_1

    .line 41
    :pswitch_3
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueOff;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueOff;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    goto :goto_1

    .line 45
    :pswitch_4
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueOn;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueOn;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    goto :goto_1

    .line 61
    :pswitch_5
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueScreenFlash;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueScreenFlash;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2326cfc -> :sswitch_5
        0xddf -> :sswitch_4
        0x1ad6f -> :sswitch_3
        0x2dddaf -> :sswitch_2
        0x696d3fc -> :sswitch_1
        0x3a942ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

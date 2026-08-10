.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;
.super Ljava/lang/Object;
.source "ScreenTorchStatus.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "off"

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mValue:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mSupportedValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 3

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenTorchStatus(Ljava/lang/String;)V

    return-void
.end method

.method setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedScreenTorchStatus()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 54
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mSupportedValues:Ljava/util/List;

    const-string p1, "off"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->mValue:Ljava/lang/String;

    return-void
.end method

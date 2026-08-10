.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
.super Ljava/lang/Object;
.source "FlashStyle.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentMode:Ljava/lang/String;

.field private final mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnSupportOneStageModes:Ljava/util/List;
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

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "two_stage"

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mValue:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mSupportedValues:Ljava/util/List;

    .line 41
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUnSupportOneStageModes:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 43
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mUnSupportOneStageModes:Ljava/util/List;

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mUnSupportOneStageModes:Ljava/util/List;

    .line 46
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "config error, unsupport_one_stage_flash_style_modes can not be null!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashStyle(Ljava/lang/String;)V

    return-void
.end method

.method public currentModeSupportOneStage()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mUnSupportOneStageModes:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method initFlashStyle(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->flashStyleSupport()Z

    move-result p1

    const-string v0, "two_stage"

    if-nez p1, :cond_0

    .line 64
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mValue:Ljava/lang/String;

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mSupportedValues:Ljava/util/List;

    const-string v1, "one_stage"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mValue:Ljava/lang/String;

    return-void
.end method

.method trackMode(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->mCurrentMode:Ljava/lang/String;

    return-void
.end method

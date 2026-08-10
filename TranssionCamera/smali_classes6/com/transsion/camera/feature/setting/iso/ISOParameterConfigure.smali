.class public Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;
.super Ljava/lang/Object;
.source "ISOParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mISO:Lcom/transsion/camera/feature/setting/iso/ISO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ISOParameterC"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/iso/ISO;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->mISO:Lcom/transsion/camera/feature/setting/iso/ISO;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->mISO:Lcom/transsion/camera/feature/setting/iso/ISO;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->mISO:Lcom/transsion/camera/feature/setting/iso/ISO;

    sget-object v1, Lcom/transsion/camera/feature/setting/iso/ISO;->VALUE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    move-object v0, v1

    .line 56
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->mISO:Lcom/transsion/camera/feature/setting/iso/ISO;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/iso/ISO;->isProIsoDouble()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->mISO:Lcom/transsion/camera/feature/setting/iso/ISO;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/iso/ISO;->isProfessionalMode()Z

    move-result p0

    if-eqz p0, :cond_1

    if-lez v0, :cond_1

    .line 58
    div-int/lit8 v0, v0, 0x2

    .line 60
    :cond_1
    sget-object p0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] isoValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setISOValue(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 36
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedISOValues()Ljava/util/List;

    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/transsion/camera/feature/setting/iso/ISO;->VALUE_DEFAULT:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->mISO:Lcom/transsion/camera/feature/setting/iso/ISO;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/iso/ISO;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->mISO:Lcom/transsion/camera/feature/setting/iso/ISO;

    sget-object v0, Lcom/transsion/camera/feature/setting/iso/ISO;->VALUE_DEFAULT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/iso/ISO;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 42
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/setting/iso/ISOParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISO Capabilities supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

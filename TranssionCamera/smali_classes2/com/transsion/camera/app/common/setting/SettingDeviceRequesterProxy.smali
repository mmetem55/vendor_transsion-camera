.class public Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;
.super Ljava/lang/Object;
.source "SettingDeviceRequesterProxy.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestChangeCommand(Ljava/lang/String;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestChangeSettingValue(Ljava/lang/String;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestChangeSettingValueJustSelf(Ljava/lang/String;)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestChangeSettingValueSync(Ljava/lang/String;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueSync(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

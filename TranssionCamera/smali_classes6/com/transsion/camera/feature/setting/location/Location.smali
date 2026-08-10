.class public Lcom/transsion/camera/feature/setting/location/Location;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Location.java"


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final SETTING_KEY:Ljava/lang/String; = "key_location"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field static final VALUE_OFF:Ljava/lang/String; = "off"

.field static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mLocationParameterConfigure:Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;

.field private mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/location/Location;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/location/Location;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    return-void
.end method

.method private checkLocationPermission(Ljava/lang/String;)V
    .locals 1

    const-string v0, "on"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/location/Location;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/location/Location;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLocationPermissions()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/location/Location;->setLocationManagerStatus(Z)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/location/Location;->setLocationManagerStatus(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/location/Location;->setLocationManagerStatus(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setLocationManagerStatus(Z)V
    .locals 3

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/setting/location/Location;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationManagerStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/location/Location;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/location/Location;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_location"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/location/Location;->mLocationParameterConfigure:Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/location/Location;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/location/Location;->mLocationParameterConfigure:Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/location/Location;->mLocationParameterConfigure:Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 82
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 41
    new-instance p3, Lcom/transsion/camera/app/common/permission/PermissionManager;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p3, p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/location/Location;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 42
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/location/Location;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/location/Location;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    const-string p2, "off"

    if-nez p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/location/Location;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p1, "on"

    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/location/Location;->setLocationManagerStatus(Z)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/location/Location;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/location/Location;->checkLocationPermission(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/location/Location;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/location/Location;->setLocationManagerStatus(Z)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    return-void
.end method

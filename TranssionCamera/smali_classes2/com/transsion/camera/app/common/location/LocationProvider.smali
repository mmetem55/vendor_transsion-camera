.class public Lcom/transsion/camera/app/common/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field mLocationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mRecordLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/location/LocationProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationList:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    .line 31
    new-instance v1, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 20
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private startReceivingLocationUpdates()V
    .locals 10

    const-string v0, "provider does not exist "

    const-string v1, "fail to request location update, ignore"

    .line 118
    sget-object v2, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "startReceivingLocationUpdates ++++"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "location"

    .line 122
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v3, :cond_1

    :try_start_0
    const-string v4, "network"

    const-wide/16 v5, 0x1388

    const/4 v7, 0x0

    .line 126
    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 132
    sget-object v3, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 130
    sget-object v3, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v3, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-wide/16 v6, 0x1388

    const/4 v8, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    const/4 v2, 0x0

    aget-object v9, p0, v2

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 142
    sget-object v1, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 140
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    :goto_1
    sget-object p0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startReceivingLocationUpdates----"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopReceivingLocationUpdates++++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 155
    sget-object v2, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopReceivingLocationUpdates----"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public enableRecord(Ljava/lang/String;)Z
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 4

    .line 52
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 58
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->current()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    sget-object p0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "No location received yet."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale",
            "MissingPermission"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 72
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentLocation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    if-nez v0, :cond_1

    return-object v1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    const-string v2, "gps"

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v2, "network"

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public recordLocation(ZLjava/lang/String;)V
    .locals 3

    .line 93
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    if-eqz p1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationProvider;->startReceivingLocationUpdates()V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationProvider;->stopReceivingLocationUpdates()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    :cond_3
    :goto_0
    return-void
.end method

.class Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/location/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mValid:Z

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mProvider:Ljava/lang/String;

    .line 177
    new-instance p1, Landroid/location/Location;

    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 3

    .line 241
    invoke-static {}, Lcom/transsion/camera/app/common/location/LocationProvider;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[current],mValid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mLastLocation:Landroid/location/Location;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 187
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mValid:Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mValid:Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 225
    invoke-static {}, Lcom/transsion/camera/app/common/location/LocationProvider;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "locationStatus : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;->mValid:Z

    :goto_0
    return-void
.end method

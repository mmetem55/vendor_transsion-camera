.class public Lcom/unity3d/splash/services/core/device/Device;
.super Ljava/lang/Object;


# direct methods
.method public static getUniqueEventId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

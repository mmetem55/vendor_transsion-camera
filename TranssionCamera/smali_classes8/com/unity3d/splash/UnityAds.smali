.class public final Lcom/unity3d/splash/UnityAds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/UnityAds$UnityAdsError;
    }
.end annotation


# static fields
.field private static skipLaunchScreenAds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;ZZ)V

    return-void
.end method

.method public static isSkipLaunchScreenAds()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/splash/UnityAds;->skipLaunchScreenAds:Z

    return v0
.end method

.method public static setSkipLaunchScreenAds(Z)V
    .locals 0

    sput-boolean p0, Lcom/unity3d/splash/UnityAds;->skipLaunchScreenAds:Z

    return-void
.end method

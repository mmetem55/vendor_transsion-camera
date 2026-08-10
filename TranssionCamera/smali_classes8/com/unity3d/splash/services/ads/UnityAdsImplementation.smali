.class public final Lcom/unity3d/splash/services/ads/UnityAdsImplementation;
.super Ljava/lang/Object;


# direct methods
.method public static addListener(Lcom/unity3d/splash/IUnityAdsListener;)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->addListener(Lcom/unity3d/splash/IUnityAdsListener;)V

    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;ZZ)V
    .locals 1

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->entered()V

    invoke-static {p2}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->addListener(Lcom/unity3d/splash/IUnityAdsListener;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$1;

    invoke-direct {v0, p2}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$1;-><init>(Lcom/unity3d/splash/IUnityAdsListener;)V

    invoke-static {p0, p1, v0, p3, p4}, Lcom/unity3d/splash/services/UnityServices;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/services/IUnityServicesListener;ZZ)V

    return-void
.end method

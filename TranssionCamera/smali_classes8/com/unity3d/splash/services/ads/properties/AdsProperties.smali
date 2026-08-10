.class public Lcom/unity3d/splash/services/ads/properties/AdsProperties;
.super Ljava/lang/Object;


# static fields
.field private static _listeners:Ljava/util/Set;

.field private static _showTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    const/16 v0, 0x1388

    sput v0, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->_showTimeout:I

    return-void
.end method

.method public static addListener(Lcom/unity3d/splash/IUnityAdsListener;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

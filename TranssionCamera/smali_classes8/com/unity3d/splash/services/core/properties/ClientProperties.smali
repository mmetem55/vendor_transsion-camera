.class public Lcom/unity3d/splash/services/core/properties/ClientProperties;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

.field private static _application:Landroid/app/Application;

.field private static _applicationContext:Landroid/content/Context;

.field private static _gameId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGameId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_gameId:Ljava/lang/String;

    return-object v0
.end method

.method public static setApplication(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_application:Landroid/app/Application;

    return-void
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    return-void
.end method

.method public static setGameId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/unity3d/splash/services/core/properties/ClientProperties;->_gameId:Ljava/lang/String;

    return-void
.end method

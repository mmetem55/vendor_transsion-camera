.class public final Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;
.super Ljava/lang/Object;
.source "ProviderProxyNativeComponent.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent$MissingNativeSessionFileProvider;
    }
.end annotation


# static fields
.field private static final MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;


# instance fields
.field private final provider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent$MissingNativeSessionFileProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent$MissingNativeSessionFileProvider;-><init>(Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent$1;)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method public finalizeSession(Ljava/lang/String;)Z
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->finalizeSession(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSessionFileProvider(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->getSessionFileProvider(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    sget-object p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;

    return-object p0
.end method

.method public hasCrashDataForSession(Ljava/lang/String;)Z
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->hasCrashDataForSession(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public openSession(Ljava/lang/String;)Z
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->openSession(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 87
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 89
    invoke-interface/range {v0 .. v7}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 124
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    if-eqz v1, :cond_0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 126
    invoke-interface/range {v1 .. v13}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    if-eqz p0, :cond_0

    .line 108
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

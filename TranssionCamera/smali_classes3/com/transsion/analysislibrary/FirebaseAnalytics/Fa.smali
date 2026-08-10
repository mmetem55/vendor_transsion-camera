.class public Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;
.super Ljava/lang/Object;
.source "Fa.java"


# static fields
.field private static mInstance:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;


# instance fields
.field private mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private mFirebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FirebaseAnalytics and mFirebaseCrashlytics inactive"

    const-string v1, "FirebaseAnalytics"

    if-nez p2, :cond_0

    .line 45
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 47
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 49
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mFirebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    const-string p0, "FirebaseAnalytics and mFirebaseCrashlytics active"

    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;
    .locals 2

    .line 30
    sget-object v0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mInstance:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mInstance:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    invoke-direct {v1, p0, p1}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mInstance:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mInstance:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    return-object p0
.end method


# virtual methods
.method public exception(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "FirebaseAnalytics"

    const-string v1, "Exception: "

    .line 106
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mFirebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    if-nez p0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public exception(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | LogMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mFirebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 124
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mFirebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FirebaseAnalytics"

    .line 65
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public send(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez p0, :cond_1

    return-void

    .line 78
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    return-void

    .line 90
    :cond_1
    invoke-virtual {p0, p1, p1, p2}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->send(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

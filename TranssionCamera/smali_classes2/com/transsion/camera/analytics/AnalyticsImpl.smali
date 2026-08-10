.class public Lcom/transsion/camera/analytics/AnalyticsImpl;
.super Ljava/lang/Object;
.source "AnalyticsImpl.java"

# interfaces
.implements Lcom/transsion/camera/utils/analytics/AbstractAnalytics;


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsImpl"


# instance fields
.field private mCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

.field private mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/analytics/AnalyticsImpl;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method


# virtual methods
.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/analytics/AnalyticsImpl;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public testCrash()V
    .locals 0

    const/4 p0, 0x0

    .line 30
    throw p0
.end method
